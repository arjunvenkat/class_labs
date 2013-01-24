# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


l = Lab.create(name: 'lab1')

u1 = User.create(name: 'arjun', email: 'arjun@arjun.com')
u2 = User.create(name: 'raghu', email: 'raghu@raghu.com')
u3 = User.create(name: 'jeff', email: 'jeff@jeff.com')

[u1, u2, u3].each do |user|
  Enlistment.create(lab_id: l.id, user_id: user.id)
end

# l.enlistments.each do |enlistment|
#   Task.all.each do |task|
#     EnlistmentTask.create(enlistment_id: enlistment.id, task_id: task.id)
#   end
# end
