/*:
 
 # Lessone three:
 
 Нужно сделать генератор ученика, дан массив имен и дан массив фамилий - у массива есть функция **random** которая позволяет достать random объект из массива - с помощью этой фунции ты должен создать ученика с именем и фамилией
 
 */

import XCTest

class LessonThreeTests: XCTestCase
{
    func test_student_generator_create_10_students() {
        let studentGenerator = StudentGenerator()
        let studens = studentGenerator.generateStudents(namesArray: ["Ilya, Gena, Nikita"], surnamesArray: ["Pupkin", "Vasiliv"], countOfStudents: 10)
        XCTAssertEqual(studens.count, 10)
    }
    
    func test_student_generator_create_5_students() {
        let studentGenerator = StudentGenerator()
        let studens = studentGenerator.generateStudents(namesArray: ["Ilya, Gena, Nikita"], surnamesArray: ["Pupkin", "Vasiliv"], countOfStudents: 5)
        XCTAssertEqual(studens.count, 5)
    }
    
    func test_student_generator_with_empty_names_create_empty_students_list() {
        let studentGenerator = StudentGenerator()
        let studens = studentGenerator.generateStudents(namesArray: [], surnamesArray: ["Pupkin", "Vasiliv"], countOfStudents: 5)
        XCTAssertEqual(studens.count, 0)
    }
    
    func test_student_generator_with_empty_surnames_create_empty_students_list() {
        let studentGenerator = StudentGenerator()
        let studens = studentGenerator.generateStudents(namesArray: ["Ilya", "Gena", "Nikita"], surnamesArray: [], countOfStudents: 5)
        XCTAssertEqual(studens.count, 0)
    }
}

//: ### Запуск тестов

let testObserver = TestObserver()
XCTestObservationCenter.shared.addTestObserver(testObserver)
TestRunner().runTests(testClass: LessonThreeTests.self)
