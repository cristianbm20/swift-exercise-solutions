// TODO: Define the Position struct
struct Size {
  var width = 80
  var height = 60
  mutating func resize(newWidth: Int, newHeight: Int) {
    width = newWidth
    height = newHeight
  }
}

// TODO: Define the Size struct
struct Position {
  var x = 0
  var y = 0
  mutating func moveTo(newX: Int, newY: Int) {
    x = newX
    y = newY
  }
}

// TODO: Define the Window class
class Window {
  var title = "New Window"
  let screenSize = Size(width: 800, height: 600)
  var size = Size()
  var position = Position()
  var contents: String? = nil

  init(title: String = "New Window", size: Size = Size(), position: Position = Position(), contents: String? = nil) {
    self.title = title
    self.size = size
    self.position = position
    self.contents = contents
  }

  func resize(to: Size) -> Void {
    let newWidth = max(1, min(to.width, screenSize.width - position.x))
    let newHeight = max(1, min(to.height, screenSize.height - position.y))
    size.resize(newWidth: newWidth, newHeight: newHeight)
  }

  func move(to: Position) -> Void {
    let newX = max(0, min(to.x, screenSize.width - size.width))
    let newY = max(0, min(to.y, screenSize.height - size.height))
    position.moveTo(newX: newX, newY: newY)
  }

  func update(title: String) -> Void {
    self.title = title
  }
  
  func update(text: String?) -> Void {
    self.contents = text
  }
  
  func display() -> String {
    return "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(contents ?? "[This window intentionally left blank]")\n"
  }
}


var mainWindow: Window = {
  var window: Window = Window()
  window.update(title: "Main Window")
  window.resize(to: Size(width: 400, height: 300))
  window.move(to: Position(x: 100, y: 100))
  window.update(text: "This is the main window")
  return window
}()
