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

for verticalPosition in stride(from: 0, through: 400, by: 40) {
    
    for horizontalPosition in stride(from: 0, through: 400, by: 40) {
        horizontalPosition
     
        canvas.fillColor = .orange
        canvas.drawEllipse(at: Point(x:horizontalPosition, y: verticalPosition),
          width: 35,
          height: 35)
       // canvas.textColor = .white
       // canvas.drawText(message: "(\(horizontalPosition), \(verticalPosition))",
                               // at: Point(x: horizontalPosition - 20,
                                         // y: verticalPosition),
                               // size: 9)
        
    }
}
canvas.fillColor = .orange
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

canvas.textColor = .black





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
