/*:
 Mikrolern Swift
 # Enumerations / Enums
 **Aufzählungen**
 */
import Cocoa


// Enum deklarieren
enum Kompass {
    case Norden
    case Osten
    case Süden
    case Westen
}

let himmelsRichtung1 = Kompass.Westen
let himmelsRichtung2 = "Westen" // Anfällig für Schreibfehler
var himmelsRichtung3: Kompass = .Norden
himmelsRichtung3 = .Süden


// Beispiel: Gut, weil Xcode merkt, wenn etwas falsch geschrieben ist:
if himmelsRichtung1 == Kompass.Osten {
    print("Im Osten geht die Sonne auf!")
}


// Beispiel: Schlecht, weil anfällig für Schreibfehler:
let himmelsRichtung4 = "Norden"
if himmelsRichtung4 == "Nordne" {
    print("Im Norden taucht die Sonne niemals auf.")
}


/*
 Enum mit raw-Werten (String) und einer Funktion
 raw-Werte müssen vom Typ Strings, Int, Double/Float oder Bool sein
 */
enum Tier: String {
    case Fuchs = "🦊"
    case Panda = "🐼"
    case Frosch = "🐸"
    
    func emoji() -> String {
        return self.rawValue
    }
}

let haustier: Tier = .Panda
print(haustier.rawValue)
print(haustier.emoji())


// Enum mit raw-Werten (Int)
enum Vorwahl: Int {
    case Deutschland = 49
    case Österreich = 43
    case Schweiz = 41
}

print("+", Vorwahl.Deutschland.rawValue)


// Enum mit raw-Wert (Int), auto-vervollständigt!
enum Barcodes: Int {
    case Apfel = 1_000
    case Ingwer
    case Kiwi
}

print(Barcodes.Ingwer.rawValue) // entspricht 1_001


// Enum mit eigenem Initalizer: Standard-Wert
enum Stimmung {
    case Aufgeregt, Aufgeweckt, Müde
    
    init() {
        self = .Aufgeweckt
    }
}

let laune = Stimmung()
print(laune)


/*
 Enum mit 'associated values':
 Damit können cases individuell passender gestaltet werden
 */
enum Spieler {
    case Gesundheit(Double)
    case Erfahrung(level: Int)
    case Inventar([String])
    case Koordinaten(x: Int, y: Int)
}

Spieler.Gesundheit(100.0)
Spieler.Erfahrung(level: 4)
Spieler.Inventar(["Taschenlampe", "Kaugummi"])
Spieler.Koordinaten(x: 45, y: 90)

/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
