#Lucian Maly <lucian.maly@oracle.com>

def print_time_24
 p Time.now.strftime("The 24h time is now %H:%M")
end

def print_time_12
 p Time.now.strftime("The 12h time is now %I:%M %P")
end

print_time_24
print_time_12

#Time instantiation
p Time.new(1941, 12, 7)
p Time.new(1963, 11, 22)
p Time.new(1969, 7, 20, 20, 18) #8:18PM July 7, 1969

#Time calculation
p Time.now.to_i #Epoch seconds
p Time.now - 60 * 10 #Time ten minutes ago
p Time.now - 7 * 24 * 60 * 60 - 60 #1 week and 1 min ago

#Pausing for 5 seconds
p "Paused for 3 seconds"
sleep(3)
