require "bundler/gem_tasks"

LATEST_VERSION = '1.3.1'
DOWNLOAD_URL = "https://github.com/alexgorbatchev/jquery-textext/archive/#{LATEST_VERSION}.tar.gz"

desc "Sync the files from the upstream release"
task :sync do
  sh 'mkdir -p sync'
  sh 'mkdir -p vendor/assets'
  sh "curl -0 -L #{DOWNLOAD_URL} > sync/latest.tar.gz"
  sh 'cd sync && tar -xzf latest.tar.gz'

  release_folder = `ls sync | grep jquery-textext`.chomp

  sh 'rm -rf vendor/assets/stylesheets'
  sh 'rm -rf vendor/assets/javascripts'
  sh "mv sync/#{release_folder}/src/css vendor/assets/stylesheets"
  sh "mv sync/#{release_folder}/src/js vendor/assets/javascripts"
  sh 'rm -rf sync'
end
