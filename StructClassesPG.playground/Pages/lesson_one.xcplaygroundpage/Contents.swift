let student = Student(name: "Alex", surname: "Golovko")
let secondStudent = Student(name: "Nikita", surname: "Kuzmich")
let thirdStudent = Student(name: "Zahar", surname: "Sazanovets")
let student2 = Student(name: "Vlad", surname: "Solodkin")
let student3 = Student(name: "Ilya", surname: "Klukin")
let student4 = Student(name: "Anton", surname: "Simonov")
let student5 = Student(name: "Polina", surname: "Goncharevich")
let student6 = Student(name: "Svetlana", surname: "Bondarovich")

let teacher = Teacher(studentArray: [student, secondStudent, thirdStudent], lesson: "Math", availableStudents: [student, secondStudent])

let teacher2 = Teacher(studentArray: [student2, student3], lesson: "Physic", availableStudents: [student3])

let teacher3 = Teacher(studentArray: [student4, student5, student6], lesson: "English language", availableStudents: [student5])

let controller = Controller(teacherArray: [teacher, teacher2, teacher3])
//
//teacher.studentCheck()
//teacher2.studentCheck()
//teacher3.studentCheck()
controller.controlStudent()



print("It is work")




