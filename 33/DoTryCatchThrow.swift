/*:
 Mikrolern Swift
 # Do Try Catch Throw
 **Mit Fehlern umgehen**
 */
import Cocoa


// Von uns definierte, mögliche Fehler:
enum Fehler: Error {
    case zuKurz
    case zuEinfach
}


// Funktion mit 'throws' (wirft ggf. Fehler zurück)
func pruefePasswort(_ pw: String) throws -> String {
    
    // Prüfe: Ist das Passwort länger als drei Buchstaben?
    guard pw.count > 3 else {
        throw Fehler.zuKurz
        /*
         Nach 'throw' wird kein Code mehr ausgeführt.
         Du musst kein 'return' ergänzen, die Funktion
         wird durch das 'throw' beendet.
        */
    }

    // Prüfe: Ist das Passwort einfach nur »passwort«?
    if pw == "passwort" {
        throw Fehler.zuEinfach
    }
    
    /*
     Code an dieser Stelle wird nur ausgeführt, wenn
     keiner der beiden Fehler von oben eintrifft.
     
     Läuft alles gut, gibt diese Funktion das
     eingegebene Passwort als String zurück:
    */
    
    return pw
    
}


/*
 Verwendung einer Funktion mit 'throw' ohne do-catch:
 Ist die Prüfung erfolgreich, funktioniert alles wie geplant.
 Treten allerdings Fehler auf, werden diese nicht gehandelt.
 */
 let pruefung1 = try pruefePasswort("geheim")
 print(pruefung1)



/*
 Verwendung einer Funktion mit 'throw' mit do-catch:
 Egal was passiert, wir haben alles unter Kontrolle!
 */
do {
    let pruefung2 = try pruefePasswort("passwort")
    print("Das Passwort '\(pruefung2)' ist gültig.")
} catch Fehler.zuKurz {
    print("Dein Passwort ist zu kurz. 🙄")
} catch Fehler.zuEinfach {
    print("Dein Passwort ist zu einfach. 🤐")
} catch {
    print("Unbekannter Fehler. 😵")
}
/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
