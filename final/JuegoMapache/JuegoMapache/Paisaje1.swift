import Foundation
import SpriteKit

struct PhysicsCategory {
    static let none      : UInt32 = 0
    static let all       : UInt32 = UInt32.max
    static let character : UInt32 = 0b1       // 1
    static let house     : UInt32 = 0b10      // 2
}

// Enum para representar las direcciones de movimiento
enum Direction {
    case upRight, upLeft, downLeft, downRight
}

class NuevaEscena: SKScene{
    let personaje = SKSpriteNode(imageNamed: "muneco")
    let casa = SKSpriteNode(imageNamed: "casita")
    var back: SKSpriteNode!
    var botonEntrar: SKLabelNode?
    var coins = SKSpriteNode(imageNamed: "coin")
    var hearts = SKSpriteNode(imageNamed: "HEART")

    override func didMove(to view: SKView){
        
        back = SKSpriteNode(texture: SKTexture(imageNamed: "pueblo"))
        back.size = self.size
        back.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        back.zPosition = -1
        self.addChild(back)
        
        casa.position = CGPoint(x: 100, y: 50)
        casa.size = CGSize(width: 100, height: 80)
        casa.name = "casa" // Esto facilita identificar el nodo más tarde
        casa.physicsBody = SKPhysicsBody(rectangleOf: casa.size) // O usa otro inicializador que se ajuste mejor a la forma de la casa
        casa.physicsBody?.isDynamic = false // La casa no se mueve
        addChild(casa)
        
        personaje.position = CGPoint(x:frame.midX, y: frame.midY)
        personaje.physicsBody = SKPhysicsBody(rectangleOf: personaje.size)
        personaje.physicsBody?.isDynamic = true
        personaje.physicsBody?.affectedByGravity = false
        addChild(personaje)
        
        coins.position = CGPoint(x:80, y: 320)
        addChild(coins)
        coins.xScale = 0.7
        coins.yScale = 0.7
        hearts.position = CGPoint(x:100, y: 350)
        addChild(hearts)
        
        let botonRegreso = SKLabelNode(fontNamed: "Arial")
            botonRegreso.text = "Regresar"
            botonRegreso.fontSize = 20
            botonRegreso.fontColor = SKColor.white
            botonRegreso.position = CGPoint(x: self.frame.minX + 200, y: self.frame.maxY - 50) // Ajusta la posición como necesites
            botonRegreso.name = "botonRegreso" // Asigna un nombre para identificarlo luego
            addChild(botonRegreso)
        
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: self.frame)
    }
    
    func mostrarBotonEntrar() {
        if botonEntrar == nil {
            botonEntrar = SKLabelNode(fontNamed: "Arial-BoldMT")
            botonEntrar?.text = "Entrar a la casa"
            botonEntrar?.fontSize = 20
            botonEntrar?.fontColor = SKColor.white
            botonEntrar?.position = CGPoint(x: self.frame.midX, y: self.frame.midY - 150) // Ajusta la posición como necesites
            botonEntrar?.name = "botonEntrar" // Asigna un nombre para identificarlo luego
            addChild(botonEntrar!)
        } else {
            botonEntrar?.isHidden = false
        }
    }
    
    // Método para ocultar el botón
    func ocultarBotonEntrar() {
        botonEntrar?.isHidden = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let touchedNode = self.atPoint(location)
        
        // Determinar cuadrante del toque
        if location.x > frame.midX && location.y > frame.midY {
            moveCharacter(direction: .upRight)
        } else if location.x < frame.midX && location.y > frame.midY {
            moveCharacter(direction: .upLeft)
        } else if location.x < frame.midX && location.y < frame.midY {
            moveCharacter(direction: .downLeft)
        } else if location.x > frame.midX && location.y < frame.midY {
            moveCharacter(direction: .downRight)
        }
        
        
        if touchedNode.name == "botonRegreso" {
                let transition = SKTransition.fade(withDuration: 1.0)
                let nueva = GameScene(size: self.size) 
                view?.presentScene(nueva,transition: transition)
        } else {
        }

    }
    
    // Método para mover el personaje
    func moveCharacter(direction: Direction) {
        let movementDistance: CGFloat = 20.0 // Ajusta esto según necesites
        let movementDuration: TimeInterval = 0.25 // Ajusta para controlar la velocidad del movimiento
        
        let distancia = sqrt(pow(personaje.position.x - casa.position.x, 2) + pow(personaje.position.y - casa.position.y, 2))
        if distancia < 100 { // Ajusta este valor según el tamaño de tus sprites y lo cerca que necesitas que estén
            mostrarBotonEntrar()
        } else {
            ocultarBotonEntrar()
        }
        
        var moveAction: SKAction
        
        switch direction {
        case .upRight:
            moveAction = SKAction.moveBy(x: movementDistance, y: movementDistance, duration: movementDuration)
        case .upLeft:
            moveAction = SKAction.moveBy(x: -movementDistance, y: movementDistance, duration: movementDuration)
        case .downLeft:
            moveAction = SKAction.moveBy(x: -movementDistance, y: -movementDistance, duration: movementDuration)
        case .downRight:
            moveAction = SKAction.moveBy(x: movementDistance, y: -movementDistance, duration: movementDuration)
        }
        
        personaje.run(moveAction)
    }
    
}

