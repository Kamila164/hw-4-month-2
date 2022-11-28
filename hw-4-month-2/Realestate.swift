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

    func changeThePrice() -> Int{
        var newPrice = 0
        let randomPrice = Int.random(in: 1000...5000)
        newPrice =  price + randomPrice
        return newPrice
    }
    
    func printInfo(){
        let newPrice = changeThePrice()
        print("\nНЕДВИЖИМОСТЬ. Площадь - \(square). Старая цена - \(price). Новая цена - \(newPrice). Адрес - \(address)")
    }
}
