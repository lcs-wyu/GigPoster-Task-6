//: # Gig Poster 6
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![superdrag-no-grid](superdrag-no-grid.png "Talking Heads")
 ![superdrag-with-grid](superdrag-with-grid.png "Talking Heads")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * use of arithmetic operators in expressions
 * functions
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 
 ## Use Source Control
 
 To create evidence that supports your case for exceeding expectations for thread 3:

 * You *must* commit and push regularly ... *not* just at the end of this task.

 * You *must* complete your work prior to 1:00 PM on Friday, March 6, 2020.
 
 Good luck! You've got this! 👊🏻👊🏼👊🏽👊🏾👊🏿
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let lightBlue = Color(hue: 193, saturation: 100, brightness: 86, alpha: 100)
let offWhite = Color(hue: 85, saturation: 8, brightness: 88, alpha: 100)
let translucentPink = Color(hue: 325, saturation: 100, brightness: 81, alpha: 75)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

// Begin your solution here...
canvas.fillColor = lightBlue
canvas.drawRectangle(at: Point(x: -10, y: -10), width: 1000, height: 1000)
canvas.drawText(message: "superdrag", at: Point(x: 23, y: 80), size: 50, kerning: 0.0)
canvas.drawText(message: "with", at: Point(x: 23, y: 48),size: 8)
canvas.drawText(message: "the shambles", at: Point(x: 23, y: 35),size: 8)
canvas.drawText(message: "and lifter", at: Point(x: 23, y: 22),size: 8)
canvas.drawText(message: "thursday", at: Point(x: 110, y: 48),size: 8)
canvas.drawText(message: "june 13 1996 / 8:30", at: Point(x: 110, y: 35),size: 8)
canvas.drawText(message: "no age limit", at: Point(x: 110, y: 22),size: 8)
canvas.drawText(message: "at brick by brick", at: Point(x: 300, y: 48),size: 8)
canvas.drawText(message: "1130 buenos avenue", at: Point(x: 300, y: 35),size: 8)
canvas.drawText(message: "san diego, ca", at: Point(x: 300, y: 22),size: 8)
canvas.borderColor = offWhite
canvas.translate(to: Point(x: 200, y: 400))
canvas.fillColor = offWhite
canvas.drawEllipse(at: Point(x: 0, y: 0), width: 15, height: 15)
canvas.drawShapesWithFill = false
for n in stride(from: 49, through: 392, by: 49) {
    canvas.drawEllipse(at: Point(x: 0, y: 0), width: n, height: n, borderWidth: 12)
}
canvas.borderColor = translucentPink
canvas.translate(to: Point(x: 0, y: 100))
canvas.fillColor = translucentPink
canvas.drawShapesWithFill = true
canvas.drawEllipse(at: Point(x: 0, y: 0), width: 15, height: 15)
canvas.drawShapesWithFill = false

for n in stride(from: 49, through: 392, by: 49) {
    canvas.drawEllipse(at: Point(x: 0, y: 0), width: n, height: n, borderWidth: 12)
}
PlaygroundPage.current.liveView = canvas


