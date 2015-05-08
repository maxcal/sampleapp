# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

store = Store.find_or_create_by(name: 'The Corner Shop')

fantasy = Category.find_or_create_by(name: 'fantasy')
romance = Category.find_or_create_by(name: 'fantasy')
mystery = Category.find_or_create_by(name: 'mystery')
classics = Category.find_or_create_by(name: 'classics')

store.books.create_with(categories: [fantasy, classics]).find_or_create_by(title: 'The Hobbit')
store.books.create_with(categories: [romance, classics]).find_or_create_by(title: 'Gone With The Wind')
store.books.create_with(categories: [mystery, classics]).find_or_create_by(title: 'A Study in Scarlet')
store.books.create_with(categories: [mystery]).find_or_create_by(title: 'The Sound of Glass')