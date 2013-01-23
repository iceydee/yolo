require 'CFPropertyList'

module Yolo
  module Tools
    module Ios
      class IPA
        def self.generate(app_file,output_directory)
          ipa_name = app_file.split("/").last.split(".").first
          `/usr/bin/xcrun -sdk iphoneos PackageApplication -v #{app_file} -o #{output_directory}/#{ipa_name}.ipa`
        end
      end
    end
  end
end
