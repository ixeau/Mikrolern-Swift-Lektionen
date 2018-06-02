/*:
 Mikrolern Swift
 # Guard
 **Verfügbarkeit von Werten prüfen**
 */
import Cocoa


let meinName: String? = "Martin"


// Funktion mit Guard
func hallo(person: String?) {
    
    guard let name = person else {
        return
    }
    print("Hallo \(name)!")
    
}

hallo(person: nil)
hallo(person: meinName)


/*
 Zum Vergleich: Eine Funktion die das gleiche macht,
 aber ohne Guard – sie ist länger & schlechter lesbar
 */
func aloah(person: String?) {
    
    var name = ""
    if let n = person {
        name = n
    } else {
        return
    }
    print("Aloah \(name)!")
    
}

aloah(person: meinName)



// Funktion, die mit Guard Inhalte eines Dictionaries prüft
var personenDaten = [String : Any]()
personenDaten["name"] = "Martin"
personenDaten["ort"] = "Berlin"

func prüfe(_ daten: [String : Any]) {
    
    guard let name = daten["name"] as? String,
          var ort = daten["ort"] as? String
        else {
          print("Daten unvollständig!")
          return
    }
    
    ort += " ❤️"
    print("\(name) ist in \(ort)")
    
}

prüfe(personenDaten)
/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
