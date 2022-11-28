import Foundation

var realestate = [Realestate]()

var apartments1 = Apartments(numberOfResidents: 2, comfort: comfort2, square: 56.98, price: 34000, address: "Toktogula 211")
var apartments2 = Apartments(numberOfResidents: 4, comfort: comfort3, square: 110.56, price: 40000, address: "Chui 78")

var comfort = Comfort(item: "Wi-Fi")
var comfort2 = Comfort(item: "lift")
apartments1.appendComfortItem(model: comfort)
apartments1.appendComfortItem(model: comfort2)
var comfort3 = Comfort(item: "otoplenie")
var comfort4 = Comfort(item: "gaz")
apartments2.appendComfortItem(model: comfort3)
apartments2.appendComfortItem(model: comfort4)

realestate.append(apartments1)
realestate.append(apartments2)
realestate.append(Realestate(square: 56, price: 20000, address: "Mira 76"))

for real in realestate{
    real.changeThePrice()
}

var count = 0
var count2 = 0
for real in realestate{
    if real is Apartments{
        count += 1
    }else{
        count2 += 1
    }
}

print("Квартир - \(count) \nНедвижимость - \(count2)")

