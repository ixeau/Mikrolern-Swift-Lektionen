/*:
 Mikrolern Swift
 # Kommentare
 **Kommentiere deinen Code, damit du ihn auch morgen noch verstehst**
 */
import Cocoa


// Ich bin ein einzeiliger Kommentar


// Shortcut für schnelles auskommentieren:
// Shift + Command + 7
//print("Hallo Welt!")


/*
 Dieser Kommentar kann problemlos
 über mehrere Zeilen hinweg gehen.
 */


/**
 Dieser Kommentar beschreibt die Funktion unter mir. Wenn du die Alt-Taste
 gedrückt hälst und mit der Maus auf den Funktionsnamen klickst, siehst du ihn!
 Er kann **fetten** oder _kursiven_ Text, aber auch `Code` enthalten. Und natürlich Emojis. 🚀
 * Dies ist eine
 * Aufzählung
 - author: Martin Lexow
 - attention: Hierauf bitte besonders aufpassen!
 - parameter kommentar: Dieser Parameter wird als Text in der Konsole ausgegeben.
 - returns: Wirft `true` zurück, wenn der `kommentar` ausgegeben worden ist. Ansonsten `false`.
 */
func drucke(kommentar: String?) -> Bool {
    if let k = kommentar {
        print(k)
        return true
    } else {
        return false
    }
}

drucke(kommentar: "Hallo.")


/*
 Wenn du dich für mehr Details zum Thema Markup-Formatierung
 interessiert, wirf einen Blick in die Dokumentation von Apple:
 https://developer.apple.com/library/content/documentation/Xcode/Reference/xcode_markup_formatting_ref/MarkupFunctionality.html#//apple_ref/doc/uid/TP40016497-CH54-SW1
 */
/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
