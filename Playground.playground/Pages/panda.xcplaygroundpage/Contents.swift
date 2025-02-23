//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 400
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

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: canvas.width / 2,
                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .purple)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)

//Draw the green background with gradients
canvas.highPerformance = true
canvas.defaultLineWidth = 5
for value in stride(from: 20,
                    through: 80,
                    by: 1) {
    //Set the color
    let currentColor = Color(hue: 98,
                             saturation: 100,
                             brightness: value,
                             alpha: 100)
    canvas.lineColor = currentColor
    
    
    //Draw a line
    
    canvas.drawLine(from: Point(x: -200, y: value * 5 - 400), to: Point(x: 200, y: value * 5 - 400 ))


}

//Draw the blue background with gradients
canvas.highPerformance = true
canvas.defaultLineWidth = 5
for value in stride(from: 20,
                    through: 80,
                    by: 1) {
    //Set the color
    let currentColor = Color(hue: 200,
                             saturation: 100,
                             brightness:value,
                             alpha: 100)
    canvas.lineColor = currentColor
    
    
    //Draw a line
    
    canvas.drawLine(from: Point(x: -200, y: value * 5 - 200), to: Point(x: 200, y: value * 5 - 200 ))


}

//Draw the left ear
canvas.drawEllipse(at: Point(x: -40, y: 30), width: 55, height: 50)

canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: -40, y: 30), width: 30, height: 30)

//Draw the right ear
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 40, y: 30), width: 55, height: 50)

canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 40, y: 30), width: 30, height: 30)

//Draw the hands and feet:
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: -80, y: -50), width: 80, height: 40)
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 80, y: -50), width: 80, height: 40)
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: -40, y: -150), width: 40, height: 80)
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 40, y: -150), width: 40, height: 80)

//Draw the body part:
canvas.fillColor = .white
canvas.borderColor = .black
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 0, y: -90), width: 160, height: 140)


// Make the fill white
canvas.fillColor = .white
canvas.borderColor = .black
canvas.drawShapesWithBorders = true
//Draw panda's head
canvas.drawEllipse(at: Point(x: 0, y: 0), width: 120, height: 100)

//Draw right eye
canvas.fillColor = .black
canvas.borderColor = .black
canvas.drawEllipse(at: Point(x: 25, y: 10), width: 36, height: 28)

//Draw left eye
canvas.drawEllipse(at: Point(x: -25, y: 10), width: 36, height: 28)
canvas.fillColor = .black
canvas.borderColor = .black
canvas.drawShapesWithBorders = true

//Draw the left pupil
canvas.fillColor = .white
canvas.borderColor = .white
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 20, y:10), width: 16, height: 13)
canvas.fillColor = .white
canvas.borderColor = .white
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 30, y:5), width: 6, height: 3)

//Draw the right pupil
canvas.fillColor = .white
canvas.borderColor = .white
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: -20, y:10), width: 16, height: 13)
canvas.fillColor = .white
canvas.borderColor = .white
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: -30, y:5), width: 6, height: 3)

//Draw the nose
canvas.fillColor = .black
canvas.borderColor = .black
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 0, y: -10), width: 30, height: 16)

//Draw the mouth
p.penColor = .black
canvas.drawCurve(from: Point(x: 0, y: -20), to: Point(x: -20, y: -30), control1: Point(x: -10, y:-30), control2: Point(x: -10, y: -30))
canvas.drawCurve(from: Point(x: 0, y: -20), to: Point(x: 20, y: -30), control1: Point(x: 10, y:-30), control2: Point(x: 10, y: -30))

//Red circles under eyes:
//left:
canvas.fillColor = .red
canvas.borderColor = .red
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: -30, y: -10), width: 30, height: 10)

//right:
canvas.fillColor = .red
canvas.borderColor = .red
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 30, y:-10), width: 30, height: 10)

//Draw the clouds
canvas.fillColor = .white
canvas.borderColor = .white
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 0, y: 120), width: 40, height: 30)
canvas.drawEllipse(at: Point(x: 20, y: 120), width: 40, height: 30)
canvas.drawEllipse(at: Point(x: 30, y: 100), width: 40, height: 30)
canvas.drawEllipse(at: Point(x: -10, y: 100), width: 40, height: 30)
canvas.drawEllipse(at: Point(x: 10, y: 100), width: 40, height: 30)


canvas.drawEllipse(at: Point(x: -120, y: 150), width: 40, height: 30)
canvas.drawEllipse(at: Point(x: -100, y: 150), width: 40, height: 30)
canvas.drawEllipse(at: Point(x: -130, y: 130), width: 40, height: 30)
canvas.drawEllipse(at: Point(x: -120, y: 130), width: 40, height: 30)
canvas.drawEllipse(at: Point(x: -90, y: 130), width: 40, height: 30)


canvas.drawEllipse(at: Point(x: 150, y: 170), width: 40, height: 30)
canvas.drawEllipse(at: Point(x: 130, y: 170), width: 40, height: 30)
canvas.drawEllipse(at: Point(x: 150, y: 170), width: 40, height: 30)
canvas.drawEllipse(at: Point(x: 160, y: 150), width: 40, height: 30)
canvas.drawEllipse(at: Point(x: 130, y: 150), width: 40, height: 30)

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
