/*:
 Mikrolern Swift
 # Ganz- & Fließkommazahlen
 **Integer, Double & Floats**
 */
import Cocoa


// Deklarieren
var jahr = 2018
var temperatur = 24.0
var temperaturSchmerzgrenze: Double = -10.0


// Umkehren
temperatur = -temperatur
temperatur = -temperatur


// Addieren & Subtrahieren
jahr = jahr + 1
jahr += 1
jahr -= 2

jahr.distance(to: 1990)
abs(jahr.distance(to: 1990))

Double(jahr) - temperatur
temperatur += 1
temperatur -= 2.3


// Dividieren & Multiplizieren
jahr = jahr / 2
jahr = jahr * 2
temperatur = temperatur / 2.4
temperatur = temperatur * 1.25
temperatur *= 1.25
temperatur /= 1.25


// Runden
round(temperatur) // rundet auf bei >= 0.5 und ab bei <0.5
temperatur.rounded(.toNearestOrAwayFromZero)

ceil(temperatur) // rundet immer auf
temperatur.rounded(.up)

floor(temperatur) // rundet immer ab
temperatur.rounded(.down)

temperatur
temperatur.round(.down)
temperatur


// Kleiner oder Größer
min(jahr, 1990)
max(jahr, 1990)


// Quadratwurzel (square root)
sqrt(16.0)


// Pi — 3,14...
Double.pi


// Rechtwinkliges Dreieck
sin(90.0) // sinus
cos(90.0) // cosinus
tan(90.0) // tangens


// Remainder Division
12 % 2 // Die 2 passt 6-mal in die 12 (2 * 6 = 12).
13 % 2 // Die 2 passt 6-mal in die 13 (2 * 6 = 12). Einer bleibt übrig! Ergebnis: 1


// Zufälle
let zufall = drand48() // zwischen 0.0 und 1.0
let zufall2 = arc4random() // zwischen 0 und 2^32-1 (= 4.294.967.295)
let zufall3 = arc4random_uniform(3) // zwischen 0 und dem gegebenen Parameter minus 1
/*:
 © 2018 IXEAU UG (haftungsbeschränkt). Alle Rechte vorbehalten.
 */
