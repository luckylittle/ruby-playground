#!/home/lmaly/.rvm/rubies/ruby-2.3.1/bin/ruby
#Lucian Maly <lucian.maly@oracle.com>

#This will put both the current local time and UTC time into your clipboard
#It is helpful when adding comments to Jira
#You will need to install xclip on your Linux machine

require 'clipboard' #https://rubygems.org/gems/clipboard

localtimezone = Time.now.zone
tutc = Time.now.utc.strftime "%Y-%m-%d %H:%M [UTC]"
tau = Time.now.strftime "%Y-%m-%d %H:%M [Australia #{localtimezone}]"

t = "#{tutc}\n#{tau}\n---------\n"
Clipboard.copy(t)
