pub struct Canvas{
    pub let width: Int
    pub let height: Int
    pub let pixels: [String]
    
    init(width: Int, height: Int, pixels: [String]){
        self.width = width
        self.height=height
        self.pixels = pixels
    }
}

pub fun display(_ canvas: Canvas){
    var i = 0
    log("+-----+")
    for str in canvas.pixels{
        if (str.length == canvas.width && str.length == canvas.height) {
            log("|".concat(canvas.pixels[i]).concat("|"))
        }
         i = i + 1
    }
    log("+-----+")
}

pub resource Picture{
    pub let canvas: Canvas
    init(canvas: Canvas){
        self.canvas = canvas
    }
}

pub fun main(){
    let pixelsX = [
        "*   *",
        " * * ",
        "  *  ",
        " * * ",
        "*   *"
    ]
    
    let canvasX = Canvas(
        width: 5,
        height: 5,
        pixels: pixelsX
    )
    /* let letterX <- create Picture(canvas: canvasX)
     log(letterX.canvas)
     destroy letterX */
     
     display(canvasX)

}