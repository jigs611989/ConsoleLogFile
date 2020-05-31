Pod::Spec.new do |spec|

  spec.name         = "ConsoleLogFile"
  spec.version      = "1.2"
  spec.summary      = "This framework will redirect console print to log file and you can easily share log file via UIActivityViewController"

  spec.description  = <<-DESC
This framwork rediect stdout to log file so that you can dump all the print logs in file and shre using UIActivityViewController. You can just add this pod in existing project and get all print in log file. This is very usefull in debugging QA/UAT release app. You don't have to do anything extra. There are couple of properties you can set like file name, max size that log file can be, should it be recreate if app start again, etc. You can easily share log file using shareFile func basically that will present UIActivityViewController with logfile.
                   DESC

  spec.homepage     = "https://github.com/jigs611989/ConsoleLogFile"
  spec.screenshots  = "https://raw.githubusercontent.com/jigs611989/ConsoleLogFile/master/demo.gif"


  spec.license      = {type: 'MIT', file: '../LICENSE'}
  spec.author       = { "Jignesh" => "jigs.patelit@gmail.com" }
  
  spec.platform     = :ios, "11.0"
  spec.swift_version = "5.0"
  spec.ios.deployment_target = "11"

  spec.source       = { :git => "https://github.com/jigs611989/ConsoleLogFile.git", :tag => spec.version }


  spec.source_files  = "ConsoleLogFile/**/*.{h,m,swift}"

  spec.exclude_files = "Classes/Exclude"


end
