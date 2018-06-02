/*:
 Mikrolern Swift
 # Funktionen
 **Dein erster Schritt zum Algorithmus**
 */
import Cocoa


// Funktion aufrufen:
print("Hallo!")


// Funktion deklarieren:
func halloWelt() {
    print("Hallo Welt! 👋")
}
halloWelt()
halloWelt()


// Funktion mit einem Eingabe-Parameter:
func hallo(name: String) {
    print("Hallo \(name)!")
}
hallo(name: "Martin")


// Funktion mit einam Eingabe-Parameter ohne Label:
func hey(_ name: String) {
    print("Hey \(name)")
}
hey("Marty")


// Funktion mit einem Rückgabewert:
func hallo() -> String {
    return "Hallo du!"
}
hallo()
let begrüßung = hallo()
print(begrüßung)
print(hallo())


// Funktion mit Eingabe- & Rückgabewert:
func begrüße(name: String) -> Bool {
    
    if name != "" {
        print("Grüß dich, \(name)!")
        return true
    } else {
        print("Du hast keinen Namen!")
        return false
    }
    
}
let begrüßt = begrüße(name: "Maddin")


// Funktion mit Optionals:
func schöner(name: String?) -> Bool? {
    
    if let n = name {
        
        if n == "Martin" {
            return true
        } else {
            return false
        }

    }
    
    return nil
    
}

let deinName: String? = nil
let schön1 = schöner(name: deinName)
let schön2 = schöner(name: "Klaus")
let schön3 = schöner(name: "Martin")


/*
 Funktion mit mehreren
 Eingabe- & Rückgabewerten:
 */
func vorstellen(_ name: String, alter: Int) -> (name: String, geburtsjahr: String) {
    
    let namensSatz = "Mein Name ist \(name)."
    let geburtsjahrSatz = "Ich bin \(2018 - alter) geboren."
    
    return (namensSatz, geburtsjahrSatz)
}

let vorstellung = vorstellen("Martin", alter: 30)
print(vorstellung.name)
print(vorstellung.geburtsjahr)


/*
 Funktion mit In-Out-Parameter:
 Mithilfe von 'inout' können die Eingabeparameter
 außerhalb der Funktion verändert werden!
 */
var name1 = "Steve"
var name2 = "Tim"
func tausche(_ a: inout String, _ b: inout String) {
    let ursprünglichesA = a
    a = b
    b = ursprünglichesA
}
tausche(&name1, &name2)
name1
name2

/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
