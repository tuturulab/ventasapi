# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Roles base setup
admin = Role.create(name: "Administrator")
Role.create([ {name: 'Manager'} , {name: 'Operator'} ])

#Main account
User.create(
  firstName: 'the' , 
  lastName: 'admin', 
  email: 'tuturulab@gmail.com', 
  password_digest: BCrypt::Password.create('password'), 
  roles_id: admin.id
)



