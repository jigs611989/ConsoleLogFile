//
//  ConsoleLogFile.swift
//  ConsoleLogFile
//
//  Created by Jignesh Patel on 17/05/20.
//  Copyright © 2020 Jignesh Patel. All rights reserved.
//

import UIKit

public final class ConsoleLogFile {
    
    private init() {}

    public static let shared = ConsoleLogFile()
    
    public var consoleLogFilePath: String?
    
    public var fileName: String? {
        didSet {
            guard let documentsDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first else {
                return
            }
            consoleLogFilePath = "\(documentsDirectory)/\(fileName ?? "console").log"
        }
    }
    
    public func createLog(fileName: String = "console", maxFileSizeInMB: Double = 5, shouldOverrideOldFile: Bool = false) {
        self.fileName = fileName
        let logPath = consoleLogFilePath ?? ""
        let fileSize = URL(fileURLWithPath: logPath).fileSizeMB
        if shouldOverrideOldFile || fileSize > maxFileSizeInMB {
            try? FileManager.default.removeItem(atPath: logPath)
        }
        guard let logPathAscii = logPath.cString(using: String.Encoding.ascii) else {
            return
        }
        freopen(logPathAscii, "a+", stdout)
        print("\n\n****************************************")
        print("***************** Start *****************")
        print("****************************************\n\n")
    }
    
    public func shareFile(viewController: UIViewController, sourceView: UIView? = nil) {
        guard let logPath = consoleLogFilePath else {
           return
        }
               
        let objectsToShare = [URL(fileURLWithPath: logPath)]
        let activityVC = UIActivityViewController(activityItems: objectsToShare,
                                             applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = sourceView ?? viewController.view
        viewController.present(activityVC, animated: true, completion: nil)
    }

}
