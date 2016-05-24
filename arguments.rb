#Lucian Maly <lucian.maly@oracle.com>

#Usage: 'ruby arguments.rb first second third fourth'
#0 first
#1 second
#2 third
#3 fourth

ARGV.each_index {
  |index|
  printf "%2d %s\n", index, ARGV[index]
}

#Just in case there is need for only one parameter:
#'ruby arguments.rb ' or 'ruby arguments.rb first second third fourth'
#arguments.rb: Wrong amount of parameters.
#Usage: arguments.rb PARAMETER

if ARGV.length != 1
  STDERR.puts "#{$0}: Wrong amount of parameters. Only one is allowed. "
  STDERR.puts "Usage: #{$0} PARAMETER"
  exit 1
end
