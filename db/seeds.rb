Student.delete_all()
Instructor.delete_all()
Cohort.delete_all()
CodeClan.delete_all()

cc1 = CodeClan.create({location: 'Edinburgh'})
cc2 = CodeClan.create({location: 'Glasgow'})

Instructor.create({codeclan_id: cc1.id, name: 'Alex'})
Instructor.create({codeclan_id: cc2.id, name: 'Nick'})

c14 = Cohort.create({codeclan_id: cc1.id, number:14})
c15 = Cohort.create({codeclan_id: cc1.id, number:15})
c6 = Cohort.create({codeclan_id: cc2.id, number:6})

Student.create({cohort_id: c14.id, name: 'Ross'})
Student.create({cohort_id: c15.id, name: 'Bela'})
Student.create({cohort_id: c6.id, name: 'Lili'})







# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
