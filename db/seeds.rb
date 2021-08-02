# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# frozen_string_literal: true

Role.find_or_create_by(role: 'admin')
Role.find_or_create_by(role: 'project_manager')
Role.find_or_create_by(role: 'resource_allocator')

user1 = User.create(email: 'admin@gmail.com', password: '123456')
user1.add_role(:admin)
user2 = User.create(email: 'projectmanager@gmail.com', password: '123456')
user2.add_role(:project_manager)
