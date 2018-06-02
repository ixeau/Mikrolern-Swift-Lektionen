/*:
 Mikrolern Swift
 # Strukturen
 **Sammlung zusammengehöriger Werte & Funktionen**
 */
import Cocoa


// Struktur deklarieren (ohne Werte):
struct Auto {
    var hersteller: String
    var neupreis: Double
}

var erstWagen = Auto(hersteller: "Porsche", neupreis: 80_000.0)


// Auf Werte in Struktur zugreifen & verändern:
erstWagen.hersteller
erstWagen.neupreis
erstWagen.neupreis = 90_000.0
erstWagen.neupreis


// Struktur deklarieren (mit Standardwerten):
struct Elektroauto {
    var antrieb = "Allrad"
    var batterie = 0.0
}

var zweitWagen = Elektroauto() // enthält die Standard-Werte aus 'Elektroauto'
var drittWagen = Elektroauto(antrieb: "Hinterrad", batterie: 100.0)


// Struktur inklusive einer Funktion:
struct Rennauto {
    
    var kilometerStand: Int

    mutating func fahre(km: Int) {
        kilometerStand += km
    }
    
}

var viertWagen = Rennauto(kilometerStand: 0)
viertWagen.kilometerStand
viertWagen.fahre(km: 200)
viertWagen.kilometerStand


// Strukturen kopieren:
var fünftWagen = viertWagen
fünftWagen.fahre(km: 4_600)
print(viertWagen.kilometerStand) // Ursprüngliche Variable bleibt unverändert
print(fünftWagen.kilometerStand) // Ausschließlich der 'fünftWagen' ist gefahren!


// Array welches Strukturen enthält:
var meinGaragenArray = [Auto]()


// Struktur in einer Struktur:
struct Garage {
    
    struct Motorrad {
        var höchstGeschwindigkeit = 200
    }
    
    var parkPlatz1: Auto
    var parkPlatz2: Elektroauto
    var parkPlatz3: Rennauto
    var parkPlatz4: Motorrad
    
}

var meineGarage = Garage(parkPlatz1: erstWagen,
                         parkPlatz2: zweitWagen,
                         parkPlatz3: viertWagen,
                         parkPlatz4: Garage.Motorrad())

//let harley1 = Motorrad() // Fehler: Geht nicht, da 'Motorrad' nur innerhalb 'Garage' exisiert
let harley2 = Garage.Motorrad()

meineGarage.parkPlatz1.hersteller
meineGarage.parkPlatz3.fahre(km: 100)

/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
