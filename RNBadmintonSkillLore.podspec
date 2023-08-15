
Pod::Spec.new do |s|
  s.name         = "RNBadmintonSkillLore"
  s.version      = "1.0.0"
  s.summary      = "RNBadmintonSkillLore"
  s.description  = <<-DESC
                  RNBadmintonSkillLore
                   DESC
                   s.homepage     = "https://github.com/dorislynch/BadmintonSkillLore"
                   s.license      = "MIT"
                   # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
                   s.author             = { "author" => "author@domain.cn" }
                   s.platform     = :ios, "7.0"
                   s.source       = { :git => "https://github.com/dorislynch/BadmintonSkillLore.git", :tag => "master" }
                   s.source_files  = "ios/**/*.{h,m}"
                   s.requires_arc = true
                 
                 
                   s.dependency "React"
                   s.dependency 'CocoaSecurity'
                   s.dependency 'JJException'
  #s.dependency "others"

end

  