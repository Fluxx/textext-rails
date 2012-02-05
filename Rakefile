require "bundler/gem_tasks"

DOWNLOAD_FOLDER = 'https://nodeload.github.com/alexgorbatchev/jquery-textext/tarball/'
LATEST_VERSION = '1.2.0'
DOWNLOAD_URL = DOWNLOAD_FOLDER + LATEST_VERSION

desc "Sync the files from the upstream release"
task :sync do
  sh 'mkdir -p sync'
  sh 'mkdir -p vendor/assets'
  sh "curl -0 #{DOWNLOAD_URL} > sync/latest.tar.gz"
  sh 'cd sync && tar -xzvf latest.tar.gz'

  release_folder = `ls sync | grep alex`.chomp

  sh 'rm -rf vendor/assets/stylesheets'
  sh 'rm -rf vendor/assets/javascripts'
  sh "mv sync/#{release_folder}/src/css vendor/assets/stylesheets"
  sh "mv sync/#{release_folder}/src/js vendor/assets/javascripts"
  sh 'rm -rf sync'
end