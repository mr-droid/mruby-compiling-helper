task :default => :all

GIT = ENV['GIT'] || "git"

task :clone_mruby do
  if File.exists? 'mruby'
    puts %Q{mruby has been cloned into 'mruby/',}
    puts %Q{  if you want to clone latest version or}
    puts %Q{  a clean copy, please do `rake pure_mruby`}
  else
    sh %Q{#{GIT} clone https://github.com/mruby/mruby.git}
  end
end

task :rm_mruby do
  if File.exists? 'mruby'
    rm_r 'mruby'
  end
end

task :pure_mruby => [:rm_mruby, :clone_mruby]

task :cp_build_config => [:clone_mruby] do
  cp 'build_config.rb' 'mruby/build_config.rb'
end

task :all => [:clone_mruby] do
  sh %Q{cd mruby; ruby ./minirake}
end
