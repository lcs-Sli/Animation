//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
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
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)
//Define a list of verticles
var triangle: [Point] = []
triangle.append (Point (x: 120, y: 200)) //A
triangle.append (Point (x: 140, y: 180)) //A
triangle.append (Point (x: 0, y: 20)) //A

//Draw triangle
canvas .drawCustomShape(with: triangle)

var triangleB: [Point] = []
triangleB.append (Point (x: 160, y: 160)) //B
triangleB.append (Point (x: 180, y: 140)) //B
triangleB.append (Point (x: 0, y: 20)) //B

canvas.drawCustomShape(with: triangleB)

var triangleC: [Point] = []
triangleC.append (Point (x: 200, y: 120)) //C
triangleC.append (Point (x: 220, y: 100)) //C
triangleC.append (Point (x: 0, y: 20)) //C

canvas.drawCustomShape(with: triangleC)

var triangleD: [Point] = []
triangleD.append (Point (x: 220, y: 70)) //D
triangleD.append (Point (x: 240, y: 50)) //D
triangleD.append (Point (x: 0, y: 20)) //D

canvas.drawCustomShape(with: triangleD)
