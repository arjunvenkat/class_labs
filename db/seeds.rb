# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


l = Lab.first

l.enlistments.each do |enlistment|
  Task.all.each do |task|
    EnlistmentTask.create(enlistment_id: enlistment.id, task_id: task.id)
  end
end
