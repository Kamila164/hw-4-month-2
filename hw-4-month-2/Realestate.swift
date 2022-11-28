import Foundation

class Realestate{
    var square: Double
    var price: Int
    var address: String
    
    init(square: Double, price: Int, address: String) {
        self.square = square
        self.price = price
        self.address = address
    }

    func changeThePrice(){
        var newPrice = 0
        let randomPrice = Int.random(in: 1000...5000)
        price += randomPrice
        print("Площадь - \(square). Стоимость - \(price). Адрес - \(address)")
    }
}
