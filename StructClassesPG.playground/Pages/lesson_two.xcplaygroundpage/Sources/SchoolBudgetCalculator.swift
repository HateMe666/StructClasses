import Foundation

/// Калькулятор который расчитывает бюджет города потраченный на школы
public class SchoolBudgetCalculator {
    
    /// Город для готорого надо расчитать бюджет
    let city: City
    
    /// Инициализтор калькулятора с определенным бюджетом
    public init(city: City) {
        self.city = city
    }
    
    /// Функция которая должна вернуть бюджет определенной школы
    public func getBudgetForSpecificSchool(school: School) -> Int? {
        // Заменить этот код на проверку если школы нет в этом городе.
        if 1 == 0 {
            return nil
        }
    
        // Если школа есть в бюджете - вернуть ее бюджет
        return 0
    }
}
