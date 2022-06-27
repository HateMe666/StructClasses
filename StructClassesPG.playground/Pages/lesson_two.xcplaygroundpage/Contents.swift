/*:
 Это файл в котором не надо ничего делать - он проверяет, что твоя логика написана верно
 
 По-нему ты можешь ориентироваться что написанная тобою логика работает верно.
 
 Если ты сделал все верно - в консоли ты увидишь такую строку:
 
 *** Executed 4 tests, with 0 failures (0 unexpected) ***
 
 если будут ошибкуи, тебе скажет количество ошибок - и неправильный результат:
 
 *** XCTAssertEqual failed: ("Optional(0)") is not equal to ("Optional(2000)") ***
 
 
 Чтобы проверить что твоя логика работает - просто запусти этот класс
 */

import XCTest

class LessonTwoTests: XCTestCase
{
    // Тест который проверяет что первой школы бюджет сформирован верно
    func test_budget_of_first_school_return_correctly() {
        let schoolsArray = [School(), School(), School()]
        let city = City(schoolsArray: schoolsArray)
        city.configureBudget()
        let budgetCalculator = SchoolBudgetCalculator(city: city)
        if let school = schoolsArray.first {
            XCTAssertEqual(budgetCalculator.getBudgetForSpecificSchool(school: school), 2000)
        } else {
            XCTFail("School does not exist")
        }
    }
    
    // Тест который проверяет что последней школы бюджет сформирован верно
    func test_budget_of_last_school_calculated_correctly() {
        let schoolsArray = [School(), School(), School()]
        let city = City(schoolsArray: schoolsArray)
        city.configureBudget()
        let budgetCalculator = SchoolBudgetCalculator(city: city)
        if let school = schoolsArray.last {
            XCTAssertEqual(budgetCalculator.getBudgetForSpecificSchool(school: school), 2000)
        } else {
            XCTFail("School does not exist")
        }
    }
    
    // Тест который проверяет что рандомной школы бюджет сформирован верно
    func test_budget_of_random_school_calculated_correctly() {
        let schoolsArray = [School(), School(), School()]
        let city = City(schoolsArray: schoolsArray)
        city.configureBudget()
        let budgetCalculator = SchoolBudgetCalculator(city: city)
        if let school = schoolsArray.randomElement() {
            XCTAssertEqual(budgetCalculator.getBudgetForSpecificSchool(school: school), 2000)
        } else {
            XCTFail("School does not exist")
        }
    }
    
    // Тест который проверяет что бюджет неопределен для школы которая не находится в городе
    func test_school_not_exist_in_city_return_nil_budget() {
        let schoolsArray = [School(), School(), School()]
        let city = City(schoolsArray: schoolsArray)
        city.configureBudget()
        let unknownSchool = School()
        let budgetCalculator = SchoolBudgetCalculator(city: city)
        XCTAssertNil(budgetCalculator.getBudgetForSpecificSchool(school: unknownSchool))
    }
}

//: ### Запуск тестов

let testObserver = TestObserver()
XCTestObservationCenter.shared.addTestObserver(testObserver)
TestRunner().runTests(testClass: LessonTwoTests.self)
