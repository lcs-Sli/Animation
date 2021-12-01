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



/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)
//Draw background

let currentColor = Color(hue: 18,
                         saturation: 100,
                         brightness:100,
                         alpha: 100)
canvas.fillColor = currentColor
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//Text
let currentColor2 = Color(hue: 27,
                         saturation: 7,
                         brightness:89,
                         alpha: 100)
canvas.textColor = currentColor2
canvas.drawText(message: "talking heads", at: Point (x: 25, y: 140), size: 40, kerning : 0)
canvas.drawText(message: "friday saturday sunday", at: Point (x: 15, y: 35), size: 8, kerning : 0)
canvas.drawText(message: "september 12,13,14.1975", at: Point (x: 15, y: 20), size: 8, kerning : 0)
canvas.drawText(message: "at cbgb and omfug", at: Point (x: 150, y: 35), size: 8, kerning : 0)
canvas.drawText(message: "315 bowery,new york city", at: Point (x: 150, y: 20), size: 8, kerning : 0)
canvas.drawText(message: "also appearing:", at: Point (x: 285, y: 35), size: 8, kerning : 0)
canvas.drawText(message: "from brooklyn,the shirts", at: Point (x: 285, y: 20), size: 8, kerning : 0)

//Draw the triangles
for xPosition in stride(from: 0, through: 400, by: 45){
    for yPosition in stride(from: 200, through: 600, by: 45){
        canvas.fillColor = .yellow
        var triangle: [Point] = []
        triangle.append(Point(x: xPosition, y: yPosition))
        triangle.append(Point(x: xPosition + 45, y: yPosition))
        triangle.append(Point(x: xPosition + 45, y: yPosition + 45))
        if yPosition - xPosition <= 200{
    
            let currentColor2 = Color(hue: 50,
                                     saturation: 71,
                                     brightness:89,
                                     alpha: 100)
            canvas.fillColor = currentColor2
            
        } else {
            canvas.fillColor = .white
        }
        
        canvas.drawCustomShape(with: triangle)
        
    }
}
        






// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

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
