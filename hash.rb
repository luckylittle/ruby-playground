#Lucian Maly <lucian.maly@oracle.com>

#Create a hash containing people and their current bank balances
balances = { 'Lucian' => 100, 'Renata' => 1000, 'Alvaro' => 999}
puts balances

#How much is the total amount of all these people together?
sum = 0
balances.each_pair do |name,balance|
  sum += balance
end
puts "Together they have #{sum}"

#Create method that sorts a hash in key descending order and returns the sorted hash
drivers = {
  4 => 'Alonso',
  1 => 'Vettel',
  3 => 'Raikonnen',
  2 => 'Ricciardo'
}

def hashsort(hash)
  sorted = {}
hash.keys.sort.reverse.each do |key|
  sorted[key] = hash[key]
end
return sorted
end

puts hashsort(drivers)
