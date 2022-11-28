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
        var item = ""
        for i in comfort{
            item += i.item
            item += " ,"
        }
        
        print("\nПлощадь - \(square). Стоимость - \(price). . Адрес - \(address). Количество жильцов - \(numberOfResidents). Удобства - \(item)")
    }
}
