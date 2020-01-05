# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 Category.destroy_all
 Task.destroy_all


category_a = Category.create(name: "To Do",)
category_b = Category.create(name: "Done",)
category_c = Category.create(name: "Doing",)
category_d = Category.create(name: "To Do Now",)

task_a = Task.create(title: 'project', description: ' must be done till tomorrow', category: category_a)
task_a = Task.create(title: 'appointment', description: 'beauty session wednesday', category: category_a)
task_b = Task.create(title: 'work stuff', description: 'get some note pads', category: category_b)
task_c = Task.create(title: 'christmas pressents', description: 'buy presents for 1000 people', category: category_c)
task_d = Task.create(title: 'workout session', description: 'yoga tuesday, box on thursday', category: category_d)