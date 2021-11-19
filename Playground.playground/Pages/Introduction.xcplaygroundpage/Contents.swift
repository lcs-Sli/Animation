//: [Previous](@previous) / [Next](@next)
//: # Introduction
//:
//: This is a playground that will let you draw shapes and other graphics easily.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 400
let preferredHeight = 400
/*:
 ## Required code
 
 Lines 19 to 27 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
//Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

//Turn on high performance mode
canvas.highPerformance = true

// A loop to express the 0, 50, 100, 150...pattern
for banana in stride(from: 0,
                        through: 400,
                        by: 50) {
    banana
    
    //Draw the line from and to the points shown in our plan
    canvas.drawLine(from: Point(x:banana,  y: 0),
                    to: Point (x: 400, y: banana))
}

// A loop to express the 0, 50, 100, 150...pattern
canvas.lineColor = .purple
for banana in stride(from: 400,
                        through: 0,
                        by: -50) {
    banana
    
    //Draw the line from and to the points shown in our plan
    canvas.drawLine(from: Point(x:0, y: banana),
                    to: Point (x: banana, y: 400))
}

// A loop to express the 0, 50, 100, 150...pattern
canvas.lineColor = .red
for banana in stride(from: 400,
                        through: 0,
                        by: -50) {
    banana
    
    //Draw the line from and to the points shown in our plan
    canvas.drawLine(from: Point(x:banana, y: 0),
                    to: Point (x: 0, y:400 - banana))
}

// A loop to express the 0, 50, 100, 150...pattern
canvas.lineColor = .green
for banana in stride(from: 400,
                        through: 0,
                        by: -50) {
    banana
    
    //Draw the line from and to the points shown in our plan
    canvas.drawLine(from: Point(x:400, y: banana),
                    to: Point (x: 400-banana, y:400))
}
//Turn off high performance mode
canvas.highPerformance = false
