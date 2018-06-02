/*:
 Mikrolern Swift
 # Klassen
 **Fast wie Strukturen — mit Referenzierung, Vererbung & anderen Besonderheiten**
 */
import Cocoa


// Klasse erstellen
class Stuhl {
    
    var beine = 4
    var sitzHöhe = 60.0
    
    // Initializer muss bei Klassen selbst geschrieben werden:
    
    init() {
    }
    
    init(b: Int, s: Double) {
        self.beine = b
        self.sitzHöhe = s
    }

}


let meinStuhl1 = Stuhl()
let meinStuhl2 = Stuhl(b: 3, s: 70.0)


// Struktur erstellen (zum Vergleich)
struct Tisch {
    var breite = 40
    var länge = 20
}

let meinTisch = Tisch()


// Subklasse erstellen
// (Eine neue Klasse auf Basis einer anderen)
class BüroStuhl: Stuhl {
    
    var kopfStütze = true
    var armLehnen = true
    
    func sitzHöheÄndern(um höhenAnpassung: Double) {
        sitzHöhe += höhenAnpassung
        print("Der Stuhl ist jetzt \(sitzHöhe)cm hoch.")
    }
    
}

let meinBüroStuhl = BüroStuhl()
meinBüroStuhl.sitzHöhe // geerbt von 'Stuhl'
meinBüroStuhl.kopfStütze
meinBüroStuhl.sitzHöheÄndern(um: -5.0)


// Subklasse einer Subklasse
// und Überschreiben einer Property & Funktion
class GamingStuhl: BüroStuhl {
    
    // Geerbte Funktion überschreiben
    override func sitzHöheÄndern(um: Double) {
        print("Sitzhöhe nicht verstellbar!")
    }
    
}
let meinGamingStuhl = GamingStuhl()

meinGamingStuhl.sitzHöheÄndern(um: 10.0)


// Referenzierung: Klassen werden nicht (so wie Strukturen) kopiert.
let meinZweiterGamingStuhl = meinGamingStuhl

meinGamingStuhl.sitzHöhe
meinZweiterGamingStuhl.sitzHöhe

meinZweiterGamingStuhl.sitzHöhe = 70.0
/*
 Änderungen von 'meinZweiterGamingStuhl' gehen zurück
 bis zum ursprünglichen Objekt 'meinGamingStuhl'
 */

meinGamingStuhl.sitzHöhe
meinZweiterGamingStuhl.sitzHöhe


// Finale Klasse: Von ihr kannst du keine Subklasse erstellen.
final class Thron: GamingStuhl {
    var podest = true
}


/*
 Wesentliche Unterschiede zwischen Klassen und Strukturen:
 1) Initializer müssen bei Klassen selbst geschrieben werden.
 2) Klassen können ihre Eigenschaften an andere Klassen weiter vererben.
 3) Instanzen von Klassen bilden Referenzen zueinander. Strukturen hingegen werden kopiert.
 4) Klassen unterstützen Deinitalizers: Swift macht dahingehend viel automatisch. Für Anfänger nicht relevant.
*/
/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
