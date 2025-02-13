# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Category.destroy_all
Tag.destroy_all

Tag.create(name: "javascript")
Tag.create(name: "react")
Tag.create(name: "ruby")
Tag.create(name: "node")

Category.create(title: "Programming")
Category.create(title: "Web Development")
Category.create(title: "RoR")
Category.create(title: "React")

Category.all.each do |cat|
  20.times do |i|
    Post.create(title: "Post #{i}", body: "Post body", category: cat)
  end
end
