/*:
 Mikrolern Swift
 # Playground LiveView
 **Vorschau direkt im Playground**
 */
import UIKit // Standard-Framework von iOS
import PlaygroundSupport // Ermöglicht die Vorschau


// Ansicht erzeugen
let rahmen = CGRect(x: 0.0, y: 0.0, width: 200.0, height: 200.0)
let ansicht = UIView(frame: rahmen)
ansicht.backgroundColor = UIColor.red


// Vorschau anzeigen
// Assistant Editor einblenden!
PlaygroundPage.current.liveView = ansicht
/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
