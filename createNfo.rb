#!/home/lmaly/.rvm/rubies/ruby-2.3.1/bin/ruby
# Lucian Maly <lucian.maly@oracle.com>
#
# Provide the list with release names and it will create corresponding rls folders and in each folder there will be lowercase NFO file with the rls name in it.

# Requirements
require 'fileutils'

# Checking the arguments and showing syntax
unless ARGV[0]
 puts "Usage: createNfo.rb <filename>"
 puts "Example: createNfo.rb releases"
 puts "DO NOT USE EXTENSION (e.g. releases.txt) FOR NOW!"
 exit 1
end

old_filename = ARGV[0]

# Checking if the argument exists
unless File.exist?(old_filename)
 puts "#{old_filename} does not exist.  Please try again."
 exit 2
end

# Reading the file for releases
rls=File.open(old_filename).read
 rls.each_line do |dirname|
  # Create folder for each release
  release = dirname.chomp
  Dir.mkdir release

  # Create NFO file for each release
  t = Time.now.utc
  timenow = t.strftime("%F %T")
  nfofile = dirname.chomp.downcase + ".nfo"
  out_file = File.new(nfofile,"w")
  out_file.puts <<-eos
Released on: #{timenow} [UTC]\r
Release name: #{release}
eos
  out_file.close

  # Move NFO to the release directory
  path = Dir.pwd + "/" + dirname.chomp + "/" + nfofile
  FileUtils.move nfofile,path
  puts "#{nfofile} --> #{release}"
end
