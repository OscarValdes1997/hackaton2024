import SpriteKit

class EscenaDespuesDeCargando: SKScene{    
    let personaje = SKSpriteNode(imageNamed: "muneco")
    let muneca = SKSpriteNode(imageNamed: "muneca")
    var globoTexto: SKSpriteNode?
    var coins = SKSpriteNode(imageNamed: "coin")
    var hearts = SKSpriteNode(imageNamed: "HEART")
    let textoEnGlobo = SKLabelNode(fontNamed: "Arial")

    
    override func didMove(to view: SKView) {
         super.didMove(to: view)
         
        
         let background = SKSpriteNode(imageNamed: "paisaje_despues_cargar")
         background.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
         background.zPosition = -1
        background.size = self.size
         addChild(background)
        
        personaje.position = CGPoint(x:100, y: 200)
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
        
        muneca.position = CGPoint(x: 750, y:230)
        addChild(muneca)
        
        globoTexto = SKSpriteNode(imageNamed: "Texto")
                globoTexto?.position = CGPoint(x: 450, y: 100)
                globoTexto?.zPosition = 1
                globoTexto?.isHidden = true
                globoTexto?.scale(to: CGSize(width: 800, height: 200))
                addChild(globoTexto!)

        textoEnGlobo.text = "¿Qué quieres ser de grande?"
            textoEnGlobo.fontSize = 30
            textoEnGlobo.fontColor = SKColor.black
            textoEnGlobo.position = CGPoint(x: 400, y: 30)
            textoEnGlobo.zPosition = 5
        addChild(textoEnGlobo)
     }
    
    override func update(_ currentTime: TimeInterval) {
        // Verifica si el globoTexto ya fue creado
        if let globoTexto = globoTexto {
            let distancia = sqrt(pow(personaje.position.x - muneca.position.x, 2) + pow(personaje.position.y - muneca.position.y, 2))
            
            // Ajusta este valor según el tamaño de tus sprites y qué tan cerca quieres que estén para mostrar el globo
            if distancia < 100 {
                textoEnGlobo.isHidden = false
                globoTexto.isHidden = false
            } else {
                textoEnGlobo.isHidden = true
                globoTexto.isHidden = true
            }
        }
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let touchedNode = self.atPoint(location)
        
        // Determinar cuadrante del toque
        if location.x > frame.midX && location.y > frame.midY {
            // Cuadrante superior derecho
            moveCharacter(direction: .upRight)
        } else if location.x < frame.midX && location.y > frame.midY {
            // Cuadrante superior izquierdo
            moveCharacter(direction: .upLeft)
        } else if location.x < frame.midX && location.y < frame.midY {
            // Cuadrante inferior izquierdo
            moveCharacter(direction: .downLeft)
        } else if location.x > frame.midX && location.y < frame.midY {
            // Cuadrante inferior derecho
            moveCharacter(direction: .downRight)
        }
    
    }
    
    // Método para mover el personaje
    func moveCharacter(direction: Direction) {
        let movementDistance: CGFloat = 20.0 // Ajusta esto según necesites
        let movementDuration: TimeInterval = 0.25 // Ajusta para controlar la velocidad del movimiento
        
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
