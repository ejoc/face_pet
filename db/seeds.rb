# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pets::Type.delete_all
Pets::Breed.delete_all

dog = Pets::Type.create!(name: 'Perros')
cat = Pets::Type.create!(name: 'Gatos')

Pets::Breed.create!(name: 'Affenpinscher', type_id: dog.id)
Pets::Breed.create!(name: 'American Bully', type_id: dog.id)
Pets::Breed.create!(name: 'Maltés', type_id: dog.id)
Pets::Breed.create!(name: 'Bull Terrier', type_id: dog.id)
Pets::Breed.create!(name: 'Chihuahua', type_id: dog.id)
Pets::Breed.create!(name: 'Clumber Spaniel', type_id: dog.id)
Pets::Breed.create!(name: 'Doberman', type_id: dog.id)
Pets::Breed.create!(name: 'Grifón de Bruselas', type_id: dog.id)


Pets::Breed.create!(name: 'Siamés', type_id: cat.id)
Pets::Breed.create!(name: 'Angora', type_id: cat.id)
Pets::Breed.create!(name: 'Persa', type_id: cat.id)
Pets::Breed.create!(name: 'Bengala', type_id: cat.id)
Pets::Breed.create!(name: 'Bombay', type_id: cat.id)
Pets::Breed.create!(name: 'Ragdoll', type_id: cat.id)