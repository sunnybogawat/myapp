# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  teachers = Teacher.create([{ name: 'Sunny', education: "Masters" }, { name: 'Kavita', education: "Graduates" },{name: 'Mayur', education: "Masters"}])
  
  teacher_sunny = Teacher.find_by_name("Sunny");
  teacher_kavita = Teacher.find_by_name("Kavita");
  
  subjects = Subject.create([
  { name: "Maths", description: "Maths",teacher_id: teacher_sunny.id},
  { name: "English", description: "English",teacher_id: teacher_sunny.id},
  { name: "Bio", description: "Bio",teacher_id: teacher_kavita.id},
  { name: "Computer", description: "Computer",teacher_id: teacher_kavita.id},
  ])
  
  ('A'..'K').to_a.each_with_index do |val,index|
    s = Student.new
    s.name = val;
    s.roll_number = index
    sampt = (1..3).to_a.sample
    samps = (1..4).to_a.sample
    s.teachers << Teacher.all.sample(sampt)
    s.subjects << Subject.all.sample(samps)
    s.save
  end
  
  #Student with no course choosen yet 
  students = Student.create([
  { name: "L", roll_number: "1"},
  { name: "M", roll_number: "2"},
  { name: "N", roll_number: "3"}
  
  ])
  
 
