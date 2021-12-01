//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas


//Draw background

canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 400)

for xPosition in stride(from: 0, through: 400, by: 40) {
    
for yPosition in stride(from: 0, through: 400, by: 40) {
        
        if xPosition == 0 ||
           yPosition == 0 ||
        xPosition + yPosition >= 410 {
            canvas.fillColor = .orange
        } else {
            canvas.fillColor = .white
        }
     
        canvas.drawEllipse(at: Point(x:xPosition, y: yPosition),
          width: 35,
          height: 35)
    
     //  canvas.textColor = .white
      // canvas.drawText(message: "(\(xPosition), \(yPosition))",//
                      //  at: Point(x: xPosition - 20,
                      //  y: yPosition),
                      //  size: 9)
        
    }
}
canvas.fillColor = .orange
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

//Text
canvas.textColor = .black
canvas.drawText(message: "pixies", at: Point (x: 10, y: 410), size: 70, kerning : 0)
canvas.drawText(message: "saturday", at: Point (x: 20, y: 550), size: 13, kerning : 0)
canvas.drawText(message: "december 13 1986", at: Point (x: 20, y: 530), size: 13, kerning : 0)
canvas.drawText(message: "9 pm over 21", at: Point (x: 20, y: 510), size: 13, kerning : 0)
canvas.drawText(message: "at the rat", at: Point (x: 250, y: 550), size: 13, kerning : 0)
canvas.drawText(message: "528 commonwealth", at: Point (x: 250, y: 530), size: 13, kerning : 0)
canvas.drawText(message: "boston, mass.", at: Point (x: 250, y: 510), size: 13, kerning : 0)

canvas.textColor = .white
canvas.drawText(message: "with", at: Point (x: 250, y: 460), size: 15, kerning : 0)
canvas.drawText(message: "throwing muses", at: Point (x: 250, y: 440), size: 15, kerning : 0)
canvas.drawText(message: "big dipper", at: Point (x: 250, y: 420), size: 15, kerning : 0)

canvas.highPerformance = false





/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
