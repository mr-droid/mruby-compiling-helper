MRuby::CrossBuild.new('android-armeabi') do |conf|
  ENV['ANDROID_TARGET_ARCH'] = 'arm'
  ENV['ANDROID_TARGET_ARCH_ABI'] = 'armeabi'
  toolchain :androideabi
  # if you want to use methods 'p', 'puts', enable one of mrbgem 'mruby-print'.
  # conf.gem 'mrbgems/mruby-print'
end
MRuby::CrossBuild.new('android-armeabi-v7a') do |conf|
  ENV['ANDROID_TARGET_ARCH'] = 'arm'
  ENV['ANDROID_TARGET_ARCH_ABI'] = 'armeabi-v7a'
  toolchain :androideabi
  # if you want to use methods 'p', 'puts', enable one of mrbgem 'mruby-print'.
  # conf.gem 'mrbgems/mruby-print'
end
MRuby::CrossBuild.new('android-x86') do |conf|
  ENV['ANDROID_TARGET_ARCH'] = 'x86'
  toolchain :androideabi
  # if you want to use methods 'p', 'puts', enable one of mrbgem 'mruby-print'.
  # conf.gem 'mrbgems/mruby-print'
end
