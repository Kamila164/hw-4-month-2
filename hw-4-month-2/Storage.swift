import Foundation

class Storage: Realestate{
    var company: String
    var products = [Products]()
    
    init(company: String, products: Products, square: Double, price: Int, address: String) {
        self.company = company
        self.products = [Products]()
        super .init(square: square, price: price, address: address)
    }
    
    override func changeThePrice() {
        <#code#>
    }
}
