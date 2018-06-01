/*:
 Mikrolern Swift
 # Strings
 **Zeichenketten (Text)**
 */
import Cocoa

// Deklaration
var nachname = "Lexow"
var name: String

name = "Marti"

// Hinzufügen
name += "n"
name.append(" \(nachname)🤓")

// Entfernen
name.removeFirst()
name.removeLast()
name

// Aufgeteilt
let komponenten = name.components(separatedBy: " ")

// Zeichen zählen:
name.count

// Zeichen sortieren
name.sorted()
name
name = String(name.sorted())

// Zeichen umdrehen
name = String(name.reversed())

// Groß & Klein
name = name.uppercased()
name = name.lowercased()

// Erstes Zeichen groß
name = name.capitalized

// Zeichen
name.first
name.last

// Ersetzen
name = name.replacingOccurrences(of: " ", with: ".")
name = name.replacingOccurrences(of: "tron", with: "👾")

// Mehrzeilige Strings
var lebenslauf = """
                 So sehen mehrzeilige Strings aus!
                 Genau so.
                 """

/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
