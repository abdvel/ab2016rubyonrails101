# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = Admin.create(email: "admin@note.com", password: '12341234', password_confirmation: '12341234')
admin.admin_profile = AdminProfile.create(first_name: 'Admin', last_name: "note")

