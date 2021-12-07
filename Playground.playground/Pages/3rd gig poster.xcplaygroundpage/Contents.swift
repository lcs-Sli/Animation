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
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */




/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */

// Begin writing your code below (you can remove the examples shown)
//Draw background
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
//Draw black rectangle with white border
canvas.fillColor = .black
canvas.borderColor = .white
canvas.drawShapesWithBorders = true
canvas.drawRectangle(at: Point(x: 0, y: 450), width: 400, height: 120)
//Text
canvas.textColor = .white
canvas.drawText(message: "the velvet underground", at: Point (x: 15, y: 410), size: 30, kerning : 0)
canvas.drawText(message: "first appearance in london😊", at: Point (x: 15, y: 550), size: 8, kerning : 0)
canvas.drawText(message: "the london college of printing", at: Point (x: 15, y: 538), size: 8, kerning : 0)
canvas.drawText(message: "with spring and pollyfloskin", at: Point (x: 150, y: 550), size: 8, kerning : 0)
canvas.drawText(message: "plus the great western light show", at: Point (x: 150, y: 538), size: 8, kerning : 0)
canvas.drawText(message: "thursday", at: Point (x: 300, y: 550), size: 8, kerning : 0)
canvas.drawText(message: "october 14 1971 /8 pm", at: Point (x: 300, y: 538), size: 8, kerning : 0)



canvas.drawShapesWithBorders = false

for xPosition in stride(from: 0, through: 400, by: 80){
    for yPosition in stride(from: 0, through: 370, by:80){
        
        if xPosition == yPosition{
            
            let white = Color(hue: 0,
                              saturation: 0,
                              brightness:100,
                              alpha: 100)
            canvas.fillColor = white
            canvas.lineColor = white
            
        } else {
            let purple = Color(hue: 313,
                               saturation: 100,
                               brightness:70,
                               alpha: 100)
            canvas.fillColor = purple
            canvas.lineColor = purple
        }
        

        
        canvas.drawRectangle(at: Point(x: xPosition, y: yPosition), width: 65, height: 15)
        
        canvas.drawRectangle(at: Point(x: xPosition, y: yPosition), width: 15, height: 65)
        
        //Diagonal lines
        
        canvas.defaultLineWidth = 16
        canvas.drawLine(from: Point(x: 20 + xPosition, y: 20 + yPosition),
                        to: Point(x: 65 + xPosition, y: 65 + yPosition))
        
        
        
    }
}



// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .white)

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
