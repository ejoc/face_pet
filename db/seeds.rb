# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pets::Category.delete_all
Pets::Breed.delete_all

dog = Pets::Category.create!(name: 'Perros')
cat = Pets::Category.create!(name: 'Gatos')

Pets::Breed.create!(name: 'Affenpinscher', category_id: dog.id)
Pets::Breed.create!(name: 'American Bully', category_id: dog.id)
Pets::Breed.create!(name: 'Maltés', category_id: dog.id)
Pets::Breed.create!(name: 'Bull Terrier', category_id: dog.id)
Pets::Breed.create!(name: 'Chihuahua', category_id: dog.id)
Pets::Breed.create!(name: 'Clumber Spaniel', category_id: dog.id)
Pets::Breed.create!(name: 'Doberman', category_id: dog.id)
Pets::Breed.create!(name: 'Grifón de Bruselas', category_id: dog.id)


Pets::Breed.create!(name: 'Siamés', category_id: cat.id)
Pets::Breed.create!(name: 'Angora', category_id: cat.id)
Pets::Breed.create!(name: 'Persa', category_id: cat.id)
Pets::Breed.create!(name: 'Bengala', category_id: cat.id)
Pets::Breed.create!(name: 'Bombay', category_id: cat.id)
Pets::Breed.create!(name: 'Ragdoll', category_id: cat.id)