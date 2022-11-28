import Foundation

class Apartments: Realestate{
    var numberOfResidents: Int
    var comfort = [Comfort]()
    
    init(numberOfResidents: Int, comfort: Comfort, square: Double, price: Int, address: String){
        self.numberOfResidents = numberOfResidents
        self.comfort = [Comfort]()
        super .init(square: square, price: price, address: address)
    }

    func appendComfortItem(model: Comfort){
        comfort.append(model)
    }
    
    override func changeThePrice() {
        var newPrice = 0
        let randomPrice = Int.random(in: 1000...5000)
        newPrice =  price + randomPrice
        
        var item = ""
        for i in comfort{
            item += i.item
            item += " ,"
        }
        
        print("\nКВАРТИРА. Площадь - \(square). Старая цена - \(price). Новая цена - \(newPrice). Адрес - \(address). Количество жильцов - \(numberOfResidents). Удобства - \(item)")
    }
}
