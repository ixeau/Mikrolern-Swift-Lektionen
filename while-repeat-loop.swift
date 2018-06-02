/*:
 Mikrolern Swift
 # while-Loop
 **Code wiederholen, solange ein bestimmter Zustand herrscht**
 */
import Cocoa


var akku = 0.0

/*
 while-Schleife:
 Code in {} wird nur ausgeführt, wenn Bedingung erfüllt ist.
 */
while akku < 100.0 {
    akku += 10.0
    print(akku)
}

print("Akku: \(akku)%\n")


/*
 repeat-while-Schleife:
 Code in {} wird einmal ausgeführt & dann so lange, wie Bedingung erfüllt ist.
 */
repeat {
    akku -= 10.0
    print(akku)
} while akku > 0.0

print("Akku: \(akku)%\n")


// Break & Continue
var netzteil = true
var defekt = false

while netzteil == true {
    
    if akku >= 100.0 || defekt == true {
        break // Beendet die gesamte Schleife vorzeitig
    }
    
    akku += 10.0
    print(akku)
    
    if akku < 100 {
        continue // Beendet den aktuellen Durchlauf der Schleife, alles hier drunter wird nicht ausgeführt
    }
    
    print("Akku ist fertig geladen.")
    
}

print("Die Schleife ist zuende.")

/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
