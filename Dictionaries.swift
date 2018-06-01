/*:
 
 Mikrolern Swift
 # Dictionaries
 **Ungeordnete Sammlungen**
 */
import Cocoa


// Dictionary deklarieren
// Syntax: [key : value] — also Schlüssel & Wert

var obst = ["Äpfel" : 4] // Dictionary mit einem Schlüssel samt Inhalt (Schlüssel: String, Wert: Int)
var gemuese = ["Tomaten" : 12, "Gurken" : 8] // Dictionary mit mehreren Inhalten
var getraenke = [String : Int]() // Dictionary ohne Inhalt
var produktNummern = [Int : String]() // Dictionary ohne Inhalt (Schlüssel: Int, Wert: String)

var spielzeuge = Dictionary<String, Int>() // Dictionary ohne Inhalt (alternative Schreibweise)
var sueßigkeiten : [String : Int]? // Optionales Dictionary ohne Inhalt

// Inhalte prüfen
gemuese.count // Zählen
gemuese["Tomaten"] // Wert abrufen
gemuese["Kürbis"] // Existiert ein Schlüssel nicht, erhälst du 'nil' = Nichts

getraenke
getraenke.isEmpty // Ist das Dictionary leer?
!getraenke.isEmpty // Ist das Dictionary NICHT leer?


// Inhalt hinzufügen
getraenke
getraenke["Wasser"] = 6 // Wert setzen
getraenke

produktNummern
produktNummern[12345] = "Kaugummis"
produktNummern
/*
 Es kann jeden Schlüssel nur ein einziges mal geben:
 Existiert der Schlüssel bereits, wird der bestehende Wert überschrieben.
 Existiert der Schlüssel noch nicht, wird er angelegt.
 */


// Inhalt entfernen
obst
obst.removeValue(forKey: "Äpfel")
obst

gemuese
gemuese["Tomaten"] = nil
gemuese

// Alle Inhalte entfernen
getraenke.removeAll()
getraenke = [:]


// Dictionary kopieren:
var altesGemuese = gemuese
altesGemuese["Gurken"] = 5

altesGemuese["Gurken"]
gemuese["Gurken"] // Ursprüngliches Dictionary verbleibt unverändert


/*
 Mit for-Schleifen kannst du durch Dictionaries iterieren
 und dir so zB alle Schlüssel ausgeben lassen.
 */

/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
