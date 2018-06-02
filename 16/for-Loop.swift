/*:
 Mikrolern Swift
 # for-Loop
 **for-Schleife — Code wiederholen für eine bestimmte Anzahl**
 */
import Cocoa


// Closed Range Operator ...
for index in 0...3 {
    print(index)
}


// Half Range Operator ..<
for i in 0..<3 {
    print("\(i). Durchlauf")
}


// Durch ein Array iterieren
var emojis = ["👻", "🌺", "🍩"]


// Alle Emojis ausgeben:
for e in 0..<emojis.count {
    print(emojis[e])
}

for emoji in emojis {
    print(emoji)
}


// Alle Emojis ab Index 2 ausgeben:
for e in emojis[2...] {
    print(e)
}


// Alle Emojis bis Index 1 ausgeben:
for e in emojis[..<2] {
    print(e)
}


// Durch Array iterieren, aber nichts mit dem Wert machen:
for _ in emojis {
    // Nutze _ wenn du den jeweiligen Wert der Iteration nicht benötigst
    print("Emoji")
}


// Durch ein Dictionary iterieren
var obst = ["Zitronen": 16, "Limetten": 8] // Syntax: [key : value] — [sorte : stück]

for (sorte, stück) in obst {
    print("\(stück) St. \(sorte)")
}

/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
