/*:
 Mikrolern Swift
 # Switch
 **Schnell den gewünschten Code ausführen**
 */
import Cocoa


var alter = 18


// Switch — mit einem Integer
switch alter {
case 18:
    print("Du bist volljährig! 🕺")
case 18...30:
    print("Du bist \(alter) Jahre jung. 🌱")
case 50..<100:
    print("Über Alter spricht man nicht! 🛑")
case let a where a > 100:
    print("Du bist steinalt! 👴")
default:
    print("Du bist \(alter) Jahre alt.")
}

/*
 Reihenfolge beachten! Bei einem Switch Statement wird immer derjenige
 Code-Block ausgeführt, dessen Bedingungen als erster erfüllt sind.
 Deswegen kann es wichtig sein, auf die richtige Reihenfolge der cases zu achten.
 */


// Switch — mit einem Enum
enum Mahlzeit {
    case Frühstück
    case Mittagessen
    case Abendessen
    case Snack
}

let essen = Mahlzeit.Frühstück

switch essen {
case .Frühstück:
    print("☕️🥐🍯")
case .Mittagessen:
    print("🥗🍪🥛")
case .Abendessen:
    print("🥖🧀🍷")
case .Snack:
    print("🍩")
    fallthrough
    /*
     Mit 'fallthrough' geben wir an, dass wir im switch-statement bleiben wollen:
     Sollte eine Bedingung / ein case unter diesem hier zusätzlich zutreffen, wird
     dieser ebenfalls ausgeführt.
     */
default:
    print("🍏")
}
/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
