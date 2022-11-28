import Foundation

class Garage: Realestate{
    var car: String
    var basement: String
    
    init(car: String, basement: String, square: Double, price: Int, address: String) {
        self.car = car
        self.basement = basement
        super .init(square: square, price: price, address: address)
    }
    
    override func changeThePrice() -> Int{
        var newPrice = 0
        let randomPrice = Int.random(in: 1000...5000)
        newPrice =  price + randomPrice
        return newPrice
    }
    
    override func printInfo() {
        let newPrice = changeThePrice()
        print("\nГАРАЖ. Площадь - \(square). Старая цена - \(price). Новая цена - \(newPrice). Адрес - \(address). Машина - \(car). Подвал - \(basement)")
    }
}
