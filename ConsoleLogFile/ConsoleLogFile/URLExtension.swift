//
//  URLExtension.swift
//  ConsoleLogFile
//
//  Created by Jignesh Patel on 17/05/20.
//  Copyright © 2020 Jignesh Patel. All rights reserved.
//

import Foundation

//
//  URL.swift
//  DTEC
//
//  Created by Jasmin Patel on 12/05/20.
//  Copyright © 2020 CorleoneVito. All rights reserved.
//

import Foundation

extension URL {
    var attributes: [FileAttributeKey : Any]? {
        do {
            return try FileManager.default.attributesOfItem(atPath: path)
        } catch let error as NSError {
            print("FileAttribute error: \(error)")
        }
        return nil
    }

    var fileSize: UInt64 {
        return attributes?[.size] as? UInt64 ?? UInt64(0)
    }

    var fileSizeMB: Double {
        return Double(fileSize)/1000000
    }
    
    var fileSizeString: String {
        return ByteCountFormatter.string(fromByteCount: Int64(fileSize), countStyle: .file)
    }

    var creationDate: Date? {
        return attributes?[.creationDate] as? Date
    }
}
