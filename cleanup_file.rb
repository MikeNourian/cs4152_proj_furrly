# Running this file will clean up all of the temp files in your rails projects
# Instructions:
#   1. Save the file wherever you want
#   2. Replace the RAILS_PATH with the path to your rails projects
#   3. Run `ruby this_file_name.rb`
#
RAILS_PATH = '/Users/mikenourian/Desktop/code/furrly'

require 'rake'


# Truncates all *.log files in log/ to zero bytes
#   Pulled from `rake log:clear`
def clear_log_files
  FileList["log/*.log"].each do |file|
    f = File.open(file, "w")
    f.close
  end
end

# Clear cache and socket files from tmp/
#   Pulled from `rake tmp:clear`
def clear_cache
  FileUtils.rm_rf(Dir['tmp/cache/[^.]*'])   # Clears all files and directories in tmp/cache
  FileUtils.rm(Dir['tmp/sockets/[^.]*'])    # Clears all files in tmp/sockets
end

Dir.new(RAILS_PATH).each do |dir|
  next if dir.match(/^\./)    # Skip any file that starts with a .

  full_path = "#{RAILS_PATH}/#{dir}"
  puts "#{dir}"

  Dir.chdir(full_path){
    # puts %x[rake tmp:clear log:clear]
    clear_log_files
    clear_cache
  }
end

puts "All done. Calculating new file sizes..."
Dir.chdir(RAILS_PATH){
  puts %x[du -sh *]
}