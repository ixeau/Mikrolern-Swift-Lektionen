/*:
 Mikrolern Swift
 # if-else Abfrage ✓
 **Wenn-Dann Abfrage**
 */
import Cocoa


var guteLaune = true
let temperatur = -34.0


if guteLaune == true {
    print("🐳") // Wird ausgeführt, wenn 'guteLaune' == true ist
} else {
    print("😓") // Wird ausgeführt, wenn 'guteLaune' == false ist
}


// Kurze Schreibweise für Bool (entspricht == true)
if guteLaune {
    print("🙋")
}


// Kurze Schreibweise für Bool (entspricht == false)
if !guteLaune {
    print("🤦‍♀️")
}


if temperatur > 20.0 {
    print("T-Shirt anziehen.") // Wird ausgeführt, wenn 'temperatur' über 20.0 ist
}

/*
 Vergleichs-Operatoren:
 == entspricht 'gleich'
 != entspricht 'ungleich'
 >= entspricht 'größer gleich'
 <= entspricht 'kleiner gleich'
 <  entspricht 'kleiner als'
 >  entspricht 'größer als'

 Verknüpfungen:
 && — entspricht 'und'
 || — entspricht 'oder'
 */


if guteLaune == true && temperatur >= 25.0 {
    print("👕 Lieblings-T-Shirt anziehen!")
}


var ferien = true
if (guteLaune && temperatur < 0.0) || ferien {
    print("Lets Play!")
}



// if-else-if-Abfrage:
if !guteLaune {
    print("😥")
} else if ferien {
    guteLaune = true
    print("🤩")
}


// Tuples vergleichen:
if (guteLaune, temperatur) == (true, -34.0) {
    print("Winterjacke anziehen!")
}


// Der Drei-geteilte Operator: 'Frage ? Antwort 1 : Antwort 2' (Ternary Conditional Operator)
let sonnenbrille = (temperatur > 20.0 ? true : false)

/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
