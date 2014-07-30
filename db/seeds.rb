# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
companies = Company.create([
		{name: 'Gameshack'}
	])
locations = Location.create([
		{address: '595 Bay St', company_id: 1}
	])
products = Product.create([
		{name: 'Battlefield 4'}, {name: 'Mario Kingdom'}, {name: 'Sonic the Hedgehog'} 
	])

