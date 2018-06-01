/*:
 Mikrolern Swift
 # Tuples
 **Temporär zusammengehörige Werte**
 */
import Cocoa

// Tuple ohne Namen
var alltagsAuto = ("Tesla", "Roadster 2", 400)

alltagsAuto
alltagsAuto.0
alltagsAuto.1
alltagsAuto.2


// Tuple mit Namen
var traumAuto = (marke: "Porsche", modell: "Cayman", ps: 300)

traumAuto
traumAuto.marke
traumAuto.modell
traumAuto.ps


// Wert im Tuple ändern
traumAuto.modell = "911"
traumAuto


// Traumauto zum Alltagsauto machen
alltagsAuto = traumAuto

/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
