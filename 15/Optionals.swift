/*:
 Mikrolern Swift
 # Optionals
 **Optionale Werte**
 */
import Cocoa


/*
 Wenn wir wissen, welchen Wert eine Variable oder
 Konstante erhält, können wir sie wie folgt deklarieren:
 */
var vorname = "Martin"
var nachname: String = "Lexow"


// Manchmal wissen wir nicht, welcher Wert enthalten ist:
var kuenstlerName: String // Deklaration ohne einen Wert (es erfolgt keine Initialisierung)
//print(kuenstlerName) // Funktioniert nicht: Wir können nichts ausgeben, was nicht da ist.


/*
 Mit 'Optionals' geben wir an, dass ein Wert optional ist:
 Er kann also vorhanden sein, oder auch nicht.
 */
var spitzname: String? // Das Fragezeichen definiert diese Variable als Optional
print(spitzname) // Funktioniert, da als Variable als 'Optinal' gekennzeichnet ist. Gibt 'nil' zurück = Nichts


spitzname = "Nerd"
print(spitzname)
print(spitzname ?? "Kein Spitzname bekannt!") // ?? = 'Nil-Coalescing Operator'


/*
 Der vernünftige Weg:
 Optional 'auspacken' = 'unwrappen'
 */
if let sname = spitzname {
    print(sname)
} else {
    print("Du hast keinen Spitznamen!")
}

/*
 Der gefährliche Weg:
 Optional zum 'auspacken' zwingen = 'force unwrap'
 */
print(spitzname!) // Deine App stürzt ab, wenn kein Wert vorhanden ist


// Prüfen, ob eine Variable ungleich 'nil' ist:
if spitzname != nil {
    print("Dein Spitzname ist \(spitzname!)!")
}


// Die Optional-Variable auf 'nil' zurücksetzen:
spitzname = nil
print(spitzname)


// Deklaration als Optional aber direkt mit einem Wert:
var kurznamen: String? = "Marty"

/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
