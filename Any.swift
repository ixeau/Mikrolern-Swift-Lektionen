/*:
 Mikrolern Swift
 # Any
 **Repräsentanten einer Instanz eines beliebigen Typen**
 */
import Cocoa


/*
 'Any' kann eine Instanz eines beliebigen Typen repräsentieren.
 Du solltest es nur nutzen, wenn du es wirklich brauchst:
 Es ist immer besser, einen spezifischen Typen anzugeben.
*/

var irgendetwas: Any
irgendetwas = "Mikrolernen"
irgendetwas = 2018

var krimskrams = [Any]()
krimskrams.append("Martin")
krimskrams.append(1987)
krimskrams.append(67.4)
krimskrams.append(true)

struct MeineStruktur {
}
krimskrams.append(MeineStruktur())

class MeineKlasse {
}
krimskrams.append(MeineKlasse())

print(krimskrams)


// 10 + irgendetwas // Fehler
let eineZahl = irgendetwas as? Int


for kram in krimskrams {
    switch kram {
    case let eineGanzzahl as Int:
        print("✅ Bekannt:\t\t'\(eineGanzzahl)' ist ein Integer.")
    case let einBool as Bool:
        print("✅ Bekannt:\t\t'\(einBool)' ist ein Boolean.")
    default:
        print("🆘 Unbekannt:\t'\(kram)'")
    }
}


/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
