/*:
 Mikrolern Swift
 # Arrays
 **Geordnete, sortierte Sammlungen**
 */
import Cocoa


var fisch = "Hai"


// Array deklarieren
var fische = ["Hering", "Steinbutt", "Flunder", "Seelachs"] // Array mit Strings

var fische2 = [String]() // Leeres Array — erwartet: Strings
var fische3: [String]? // Optional Array — könnte enthalten: Strings

var lottozahlen = [3, 7, 13, 23, 42] // Array mit Integer
var lottozahlen2 = [Int]() // Leeres Array — erwartet: Integer

var fischSammlung = [(name: String, alter: Int)]() // Leeres Array — erwartet: Tuple
var fischSammlung2 = [[String : Int]]() // Leeres Array — erwartet: Dictionary
var fischSammlung3 = [[String]]() // Leeres Array — erwartet: Array mit Strings


// Wie viele Werte enthält mein Array?
fische.count


// Auf Werte in einem Array zugreifen
fische
fische[3]
fische.index(of: "Steinbutt") // Aufgepasst: Der erste Wert im Array beginnt bei 0
fische.index(of: "Blobfisch") // Existiert ein index nicht, erhälst du 'nil' zurück


// Wert zum Array hinzufügen
fische.append(fisch) // Fügt Wert am Ende hinzu
fische.insert("Scholle", at: 0) // Fügt Wert hinzu wo du willst


// Wert aus dem Array entfernen
fische.remove(at: 1)
fische.removeFirst()
fische.removeLast()
fische



/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
