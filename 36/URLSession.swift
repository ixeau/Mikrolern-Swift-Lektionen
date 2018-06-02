/*:
 Mikrolern Swift
 # URLSession
 **Verbindung ins Internet**
 */
import Cocoa
import PlaygroundSupport


// Playground vorbereiten
PlaygroundPage.current.needsIndefiniteExecution = true


// Anfrage erstellen
let url = URL(string: "https://martinlexow.de/portrait.jpg")!
var request = URLRequest(url: url)


// Session ausführen
let task = URLSession.shared.dataTask(with: request) {
    data, response, error in
    
    
    // Prüfen ob alles geklappt hat:
    guard let d: Data = data as Data?,
          let _: URLResponse = response,
          error == nil else {

        print("Fehler: Anfrage gescheitert!")

        // Mögliche Ursachen könnten sein:
        // - Falsche URL
        // - In einer App: AppSandbox ist aktiviert. 'Outgoing Connections' müssen erlaubt werden.
        // - In einer App: Info.plist / 'App Transport Security Settings' — 'Allow Arbitrary Loads' setzen.

        return
    }


    // Daten empfangen!


    // Können wir aus den Daten einen String machen?
    if let dataString = String(data: d, encoding: String.Encoding.utf8) {
        print(dataString)
    }

    // Können wir aus den Daten ein Bild machen?
    if let dataImage = NSImage(data: d) {
        let rahmen = NSRect(x: 0.0, y: 0.0, width: 300, height: 300.0)
        let bildAnsicht = NSImageView(frame: rahmen)
        bildAnsicht.image = dataImage
        PlaygroundPage.current.liveView = bildAnsicht
    }
    
    
}
task.resume()
/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
