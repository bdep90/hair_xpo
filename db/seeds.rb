# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(user_name: "asdfg123", password: "asdfg", password_confirmation: "asdfg", avatar: "https://cdn4.iconfinder.com/data/icons/boy-hair-and-face/100/hair2-512.png" )
User.create(user_name: "qwerty456", password: "qwerty", password_confirmation: "qwerty", avatar: "https://cdn1.iconfinder.com/data/icons/beautiful-faces/512/beautiful_face_4-512.png" )
