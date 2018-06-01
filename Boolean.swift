/*:
 Mikrolern Swift
 # Bool / Boolean
 **Wahr oder falsch?**
 */
import Cocoa


// Deklaration
var wohnzimmerLampe: Bool = true
var kuechenLampe = false


// Zustand ändern
wohnzimmerLampe = false


// Zustand umkehren
wohnzimmerLampe = !wohnzimmerLampe // = true
wohnzimmerLampe = !wohnzimmerLampe // = false


// Bool als Prüfwert
let zahlenArray = [1, 2, 3]
zahlenArray.contains(4) // Enthält unser Zahlen-Array 4? Nein! = false
zahlenArray.contains(2) // = true


/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
