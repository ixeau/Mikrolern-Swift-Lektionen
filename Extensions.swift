/*:
 Mikrolern Swift
 # Extensions
 **Erweiterungen**
 */
import Cocoa


// Extension von 'Int' mit 'Computed Property'
extension Int {
    
    var minuten: Int {
        // Hier könnte auch noch mehr Code stehen!
        return self * 60
    }
    
}

10.minuten


// Extension von 'Double' mit statischem Wert
extension Double {
    
    static var zufall: Double {
        return drand48()
    }
    
}

Double.zufall


// Extension von 'String' mit einer Funktion
extension String {
    
    func grüßen() {
        print("Hallo \(self)! 👋")
    }
    
}

"Martin".grüßen()


// Extension von 'Double' mit einer Funktion, die die Instanz selbst verändert
extension Double {
    
    mutating func zumQuadrat() {
        self = self * self
    }
    
}

var wert = 8.0
wert.zumQuadrat()
wert


// Extension der Klasse 'NSColor' mit einer Struktur mit statischen Werten
extension NSColor {
    
    struct Lieblingsfarben {
        
        static var türkis: NSColor {
            return NSColor(red: 0.0, green: 0.82, blue: 0.82, alpha: 1.0)
        }
        
        static var malve: NSColor {
            return NSColor(red: 0.87, green: 0.65, blue: 0.77, alpha: 1.0)
        }
        
    }
    
}

let farbe = NSColor.Lieblingsfarben.türkis
/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
