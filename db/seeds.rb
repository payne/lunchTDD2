# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
john = User.new(first_name: 'John', last_name: 'Lennon', email: 'john@beatles.com', password: 'rock!1965')
paul = User.new(first_name: 'Paul', last_name: 'McCartney', email: 'paul@beatles.com', password: 'rock!1965')
george = User.new(first_name: 'George', last_name: 'Harrison',email: 'george@beatles.com', password: 'rock!1965')
ringo = User.new(first_name: 'Ringo', last_name: 'Star',email: 'ringo@beatles.com', password: 'rock!1965')
beatles = Group.new(title: 'The Beatles')
beatles.users << john << paul << george << ringo
linda = User.new(first_name: 'Linda', last_name: 'McCartney',email: 'linda@wings.com', password: 'rock!1970')
wings = Group.new(title: 'Wings')
wings.users << paul << linda
beatles.save
wings.save
