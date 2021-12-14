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

// Move the origin from the bottom-left corner of the canvas to it's centre point
//canvas.translate(to: Point(x: canvas.width / 2,
//                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)
//Draw the black background:
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

//Draw the upper black background:
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

// Set up the pink gradient color
canvas.defaultLineWidth = 5
for value in stride(from: 0,
                    through: 400,
                    by: 1) {
    canvas.highPerformance = true
let currentColor  = Color(hue: 345,
                              saturation: 37,
                              brightness:value/4,
                              alpha: 100)
    canvas.lineColor = currentColor
    
    // Draw a line
    canvas.drawLine(from: Point(x: 0, y: value),
                    to: Point(x: 400, y: value))
    canvas.highPerformance = false
}

//Text
//BLACKPINK
canvas.textColor = .white
canvas.drawText(message: "BLACK", at: Point (x: 18, y: 410), size: 52, kerning : 0)

let currentColor  = Color(hue: 345,
                              saturation: 37,
                              brightness:100,
                              alpha: 100)
canvas.textColor = currentColor
canvas.drawText(message: "BLACK", at: Point (x: 20, y: 410), size: 50, kerning : 0)

let currentColor2  = Color(hue: 323,
                              saturation: 55,
                              brightness:90,
                              alpha: 100)

canvas.textColor = .white
canvas.drawText(message: "PINK🖤", at: Point (x: 198, y: 410), size: 52, kerning : 0)

canvas.textColor = currentColor2
canvas.drawText(message: "PINK", at: Point (x: 200, y: 410), size: 50, kerning : 0)

//Small texts on the top
let currentColor3  = Color(hue: 345,
                              saturation: 37,
                              brightness:100,
                              alpha: 100)
canvas.textColor = currentColor3
canvas.drawText(message: "Jennie Lisa Rosé Jisoo", at: Point (x: 20, y: 560), size: 18, kerning : 2)
canvas.drawText(message: "2019 . 1 . 11", at: Point (x: 20, y: 530), size: 15, kerning : 5)

let currentColor4  = Color(hue: 365,
                              saturation: 37,
                              brightness:100,
                              alpha: 100)
canvas.textColor = currentColor4
canvas.drawText(message: "6 PM", at: Point (x: 320, y: 560), size: 18, kerning : 5)
canvas.drawText(message: "THAILAND", at: Point (x: 280, y: 530), size: 15, kerning : 5)


//Repeat hearts
canvas.highPerformance = true
for xPosition in stride(from: 0, through: 400, by: 100){
    for yPosition in stride(from: 0, through: 300, by:100){

        if xPosition == yPosition{

            let black = Color(hue: 100,
                              saturation: 0,
                              brightness:0,
                              alpha: 100)
            canvas.fillColor = black


        }else if yPosition - xPosition == 200{
            let black = Color(hue: 100,
                              saturation: 0,
                              brightness:0,
                              alpha: 100)
            canvas.fillColor = black
        }else if xPosition - yPosition == 200{
            let black = Color(hue: 100,
                              saturation: 0,
                              brightness:0,
                              alpha: 100)
            canvas.fillColor = black
        }else{
            let pink = Color(hue: 315,
                               saturation: 35,
                               brightness:100,
                               alpha: 100)
            canvas.fillColor = pink

        }
        
       //Draw the hearts
        canvas.drawShapesWithFill = true
        var triangle: [Point] = []
                triangle.append(Point(x: 51+xPosition, y: 2+yPosition))
                triangle.append(Point(x: 4+xPosition, y: 50+yPosition))
                triangle.append(Point(x: 96+xPosition, y: 50+yPosition))
                canvas.drawCustomShape(with: triangle)

        //draw 2 circles for heart
        canvas.drawEllipse(at: Point(x: 30+xPosition, y: 62+yPosition), width: 56, height: 65)
        canvas.drawEllipse(at: Point(x: 70+xPosition, y: 62+yPosition), width: 56, height: 65)
    }
    

 
    
    
    //Repeat hearts 2
    for xPosition in stride(from: 0, through: 400, by: 100){
        for yPosition in stride(from: 0, through: 300, by:100){

            if xPosition == yPosition{

                let pink = Color(hue: 345,
                                  saturation: 39,
                                  brightness:100,
                                  alpha: 100)
                canvas.fillColor = pink


            }else if yPosition - xPosition == 200{
                let pink = Color(hue: 345,
                                  saturation: 39,
                                  brightness:100,
                                  alpha: 100)
                canvas.fillColor = pink
                
            }else if xPosition - yPosition == 200{
                let pink = Color(hue: 345,
                                  saturation: 39,
                                  brightness:100,
                                  alpha: 100)
                canvas.fillColor = pink
            }else{
                let black = Color(hue: 100,
                                   saturation: 0,
                                   brightness:0,
                                   alpha: 100)
                canvas.fillColor = black

            }
            
            //Draw the second group of inside little hearts:
             
             canvas.drawShapesWithFill = true
              var triangle: [Point] = []
             triangle.append(Point(x: 50+xPosition, y: 15+yPosition))
             triangle.append(Point(x: 15+xPosition, y: 50+yPosition))
             triangle.append(Point(x: 82+xPosition, y: 50+yPosition))
             canvas.drawCustomShape(with: triangle)

              //draw 2 circles for heart
              canvas.drawEllipse(at: Point(x: 33+xPosition, y: 59+yPosition), width: 44, height: 43)
              canvas.drawEllipse(at: Point(x: 66+xPosition, y: 59+yPosition), width: 44, height: 43)
        }
    }
}

canvas.highPerformance = false
    
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
    

