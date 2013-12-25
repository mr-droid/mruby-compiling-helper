task :default => :all

GIT = ENV['GIT'] || "git"
ANDROID_NDK_HOME = ENV['ANDROID_NDK_HOME'] || "android-ndk"

task :clone_mruby do
  if File.exist? 'mruby'
    puts %Q{mruby has been cloned into 'mruby/',}
    puts %Q{  if you want to clone latest version or a clean copy}
    puts %Q{  please do `rake pure_mruby`}
  else
    sh %Q{#{GIT} clone https://github.com/mruby/mruby.git}
  end
end

task :rm_mruby do
  if File.exist? 'mruby'
    rm_r 'mruby'
  end
end

task :cp_build_config => [:clone_mruby] do
  cp 'build_config.rb', 'mruby/build_config.rb'
end

task :check_ndk do
  unless File.exist? ANDROID_NDK_HOME
    raise %Q{No Android NDK found.
  Android NDK is needed,
  please ensure NDK placed in '#{ANDROID_NDK_HOME}',
  or set your NDK path to ANDROID_NDK_HOME.}
  end
end

task :all => [:clone_mruby, :cp_build_config, :check_ndk] do
  sh %Q{cd mruby; ANDROID_NDK_HOME=#{ANDROID_NDK_HOME} ruby ./minirake}
end

task :pure_mruby => [:rm_mruby, :clone_mruby]
