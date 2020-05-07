# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


shelter1 = Shelter.create(name: "Sheter1", address: "Address 1", city: "City 1", state: "State 1", zip: "Zip 1")
shelter2 = Shelter.create(name: "Sheter2", address: "Address 2", city: "City 2", state: "State 2", zip: "Zip 2")
shelter3 = Shelter.create(name: "Sheter3", address: "Address 3", city: "City 3", state: "State 3", zip: "Zip 3")

shelter1.pets.create(name: "Animal 1", age: 1, sex: "male", img_url: "https://adoptdontshop.s3-us-west-1.amazonaws.com/dog1.jpg", shelter_id: "7")
shelter1.pets.create(name: "Animal 3", age: 2, sex: "male", img_url: "https://adoptdontshop.s3-us-west-1.amazonaws.com/dog3.jpeg", shelter_id: "9")
shelter2.pets.create(name: "Animal 2", age: 2, sex: "male", img_url: "https://adoptdontshop.s3-us-west-1.amazonaws.com/dog2.jpg", shelter_id: "8")
