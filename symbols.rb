#Lucian Maly <lucian.maly@oracle.com>

=begin
Create array of users, each user in the array should be represented by hash
You can store the users' details such as name and email using symbols
Search for user by their name
Print email address of that user
=end

users = [
  {
  name: 'Lucian',
  email: '<REMOVED>',
    },
  {
  name: 'Alvaro',
  email: '<REMOVED>',
    },
  {
  name: 'Arnold',
  email: '<REMOVED>',
    }
]

user = users.find do |user|
   user[:name] == 'Lucian'
 end

if user #looking for not nil / not false
  puts user[:email]
else
  puts "No user found"
end
