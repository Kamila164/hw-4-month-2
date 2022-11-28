import Foundation

class Storage: Realestate{
    var company: String
    var products = [Products]()
    
    init(company: String, products: Products, square: Double, price: Int, address: String) {
        self.company = company
        self.products = [Products]()
        super .init(square: square, price: price, address: address)
    }
    
    func appendProducts(model: Products){
        products.append(model)
    }
    
    override func changeThePrice() {
        var newPrice = 0
        let randomPrice = Int.random(in: 1000...5000)
        newPrice =  price + randomPrice
        
        var item = ""
        for i in products{
            item += i.product
            item += " ,"
        }
        print("\nСКЛАД. Площадь - \(square). Старая цена - \(price). Новая цена - \(newPrice). Адрес - \(address). Компания - \(company). Продукты - \(item)")
    }
}
