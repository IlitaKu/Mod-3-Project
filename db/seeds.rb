# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 User.destroy_all
 Category.destroy_all
 Task.destroy_all
user_a = User.create(name: 'Alexandro', email: 'someone@gmail.com')
user_b = User.create(name: 'Don Xulio', email: 'tekila@gmail.com')
user_c = User.create(name: 'Simpson', email: 'springfield@gmail.com')
user_d = User.create(name: 'Cartman', email: 'sputh_park@gmail.com')

category_a = Category.create(name: "to_do",  user: user_a)
category_b = Category.create(name: "done",  user: user_b)
category_c = Category.create(name: "doing",  user: user_c)
category_d = Category.create(name: "to_do",  user: user_d)

task_a = Task.create(title: 'project', description: ' must be done till tomorrow', category: category_a)
task_b = Task.create(title: 'work stuff', description: 'get some note pads', category: category_b)
task_c = Task.create(title: 'christmas pressents', description: 'buy presents for 1000 people', category: category_c)
task_d = Task.create(title: 'workout session', description: 'yoga tuesday, box on thursday', category: category_d)