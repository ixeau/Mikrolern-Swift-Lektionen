/*:
 Mikrolern Swift
 # Typealias
 **Spitznamen für deine Typen für mehr Ausdruckskraft**
*/
import Cocoa


// Ohne Typealias: Missverständlich!
let zeitraum1: Double
let zeitraum2 = Double(60.0) // Was ist gemeint: Sekunden, Minuten?


// Typealias 'Tage', abgeleitet vom Typen 'Double'
typealias Tage = Double
let zeitraum3: Tage
let zeitraum4 = Tage(60.0) // Eindeutig verständlich!


// Typealias 'Euro', abgeleitet vom Typen 'Integer'
typealias Euro = Int
let bargeld: Euro = 10


// Typealias 'Koordinate', abgeleitet von einem Tuple mit zwei Double
typealias Koordinate = (lon: Double, lat: Double)
let position = Koordinate(lon: 42.123, lat: 23.123)


// Typealias 'Feiertag', abgeleitet von der Struktur 'Date'
typealias Feiertag = Date
let weihnachten = Feiertag(timeIntervalSinceReferenceDate: Tage(365-8) * 86_400)
/*:
  © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
