import Foundation

var realestate = [Realestate]()

//КВАРТИРЫ
var apartments1 = Apartments(numberOfResidents: 2, comfort: comfort2, square: 56.98, price: 34000, address: "Токтогула 211")
var apartments2 = Apartments(numberOfResidents: 4, comfort: comfort3, square: 110.56, price: 40000, address: "Проспект Чуй 78")

var comfort = Comfort(item: "Wi-Fi")
var comfort2 = Comfort(item: "лифт")
apartments1.appendComfortItem(model: comfort)
apartments1.appendComfortItem(model: comfort2)
var comfort3 = Comfort(item: "отопление")
var comfort4 = Comfort(item: "газ")
apartments2.appendComfortItem(model: comfort3)
apartments2.appendComfortItem(model: comfort4)

realestate.append(apartments1)
realestate.append(apartments2)

//СКЛАД
var storage1 = Storage(company: "Elite", products: product1, square: 23.56, price: 12000, address: "Ташкумырская 89")

var product1 = Products(product: "Cola")
var product2 = Products(product: "Fanta")
var product3 = Products(product: "Sprite")
storage1.appendProducts(model: product1)
storage1.appendProducts(model: product2)
storage1.appendProducts(model: product3)

realestate.append(storage1)

//НЕДВИЖИМОСТЬ
realestate.append(Realestate(square: 56, price: 20000, address: "Проспект Мира 76"))
realestate.append(Realestate(square: 23.78, price: 15000, address: "Советская 4а"))


//ГАРАЖ
realestate.append(Garage(car: "BMW X6", basement: "да", square: 20.34, price: 170000, address: "Суеркулова 12"))
realestate.append(Garage(car: "Mercedes W212", basement: "нет", square: 18.65, price: 12000, address: "Ахунбаева 110"))
realestate.append(Garage(car: "Audi a6", basement: "нет", square: 22.46, price: 22000, address: "Малдыбаева 32"))


for real in realestate{
    real.changeThePrice()
}

var countApartments = 0
var countStorage = 0
var countRealestate = 0
var countGarage = 0
for item in realestate{
    if item is Apartments{
        countApartments += 1
    }else if item is Storage{
        countStorage += 1
    }else if item is Garage{
        countGarage += 1
    }else{
        countRealestate += 1
    }
}

print("\nКол-во квартир - \(countApartments) \nКол-во складов - \(countStorage) \nКол-во недвижимости - \(countRealestate) \nКол-во гаражей - \(countGarage)")

