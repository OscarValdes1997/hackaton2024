//
//  GameScene.swift
//  que_esta_pasando
//
//  Created by administrador on 08/03/24.
//  Copyright © 2024 administrador. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var background: SKSpriteNode!
    private var backGrounds = ["back1.png", "back2.png", "mapa.png" ]
    private var currentBackground = 0
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
        
        background = SKSpriteNode(imageNamed: backGrounds [ currentBackground ]  )
        background.position = CGPoint(x: frame.midX, y: frame.midY)
        background.zPosition = -1 // Asegura que el fondo esté detrás de todo lo demás
        
        // Ajustar el tamaño del fondo para cubrir la pantalla completa
        let scaleFactorY = self.size.height / background.size.height
        let scaleFactorX = self.size.width / background.size.width
        background.setScale(max(scaleFactorX, scaleFactorY))
        addChild(background)
        

        //añadir las etiquetas necesarias
        addLabel(text: "Entre sombras", fontSize: 30, position: CGPoint(x: 0, y:105), name: "Pixel México")
        addLabel(text: "Pixel México", fontSize: 50, position: CGPoint(x: 0, y:50 ), name: "Nombre del Videojuego" )
        addLabel(text: "HACKATHON FES ACATLAN 2024", fontSize: 25, position: CGPoint(x: frame.midX, y:frame.midY-600), name: "Evento")
    
        
        setupButtons();
        
        // Create shape node to use during mouse interaction
        let w = (self.size.width + self.size.height) * 0.05
        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
        
        if let spinnyNode = self.spinnyNode {
            spinnyNode.lineWidth = 2.5
            
            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1)))
            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 0.5),
                                              SKAction.fadeOut(withDuration: 0.5),
                                              SKAction.removeFromParent()]))
        }
        changeBackgroundPeriodically()
        
    }
    
    func changeBackgroundPeriodically() {
        let wait = SKAction.wait(forDuration: 5.0)
        let changeBackground = SKAction.run {
            self.currentBackground = (self.currentBackground + 1) % self.backGrounds.count
            let nextImageName = self.backGrounds[self.currentBackground]
            self.changeBackgroundImage(to: nextImageName)
        }
        let sequence = SKAction.sequence([wait, changeBackground])
        self.run(SKAction.repeatForever(sequence))
    }
    
    func changeBackgroundImage(to imageName: String) {
        let newBackground = SKSpriteNode(imageNamed: imageName)
        newBackground.position = CGPoint(x: frame.midX, y: frame.midY)
        newBackground.zPosition = background.zPosition
        newBackground.scale(to: frame.size)
        newBackground.alpha = 0
        addChild(newBackground)
        
        let fadeIn = SKAction.fadeIn(withDuration: 4.0)
        let fadeOut = SKAction.fadeOut(withDuration: 4.0)
        let removeOldBackground = SKAction.run {
            self.background.removeFromParent()
        }
        
        background.run(fadeOut)
        newBackground.run(SKAction.sequence([fadeIn, removeOldBackground]))
        
        // Actualizar la referencia al fondo actual
        background = newBackground
    }

    func setupButtons() {
        let iniciarButton = SKLabelNode(fontNamed: "Chalkduster")
        iniciarButton.text = "Iniciar"
        iniciarButton.fontSize = 40
        iniciarButton.fontColor = SKColor.white
        iniciarButton.position = CGPoint(x: 0, y: -20)
        iniciarButton.name = "iniciarButton"
        addChild(iniciarButton)
        
        // Crear el botón Reanudar
        let reanudarButton = SKLabelNode(fontNamed: "Chalkduster")
        reanudarButton.text = "Reanudar"
        reanudarButton.fontSize =  30
        reanudarButton.fontColor = SKColor.white
        reanudarButton.position = CGPoint(x: 0, y: -70)
        reanudarButton.name = "reanudarButton"
        addChild(reanudarButton)
        
        // Crear el botón Finalizar
        let finalizarButton = SKLabelNode(fontNamed: "Chalkduster")
        finalizarButton.text = "Finalizar"
        finalizarButton.fontSize = 30
        finalizarButton.fontColor = SKColor.white
        finalizarButton.position = CGPoint(x: 0, y: -120)
        finalizarButton.name = "finalizarButton"
        addChild(finalizarButton)
        
        //Crear el boton de FAQ
        let faqButton = SKLabelNode(fontNamed: "Chalkduster")
        faqButton.text = "FAQ"
        faqButton.fontSize = 30
        faqButton.fontColor = SKColor.white
        faqButton.position = CGPoint(x: 300, y: -170)
        faqButton.name = "faqButton"
        addChild(faqButton)
    }

    func blinkAction() -> SKAction {
        let fadeOut = SKAction.fadeAlpha(to: 0.1, duration: 0.15)
        let fadeIn = SKAction.fadeAlpha(to: 1.0, duration: 0.15)
        let blink = SKAction.sequence([fadeOut, fadeIn])
        return SKAction.repeat(blink, count: 10)
    }
    
    
    func addLabel(text: String, fontSize: CGFloat, position: CGPoint, name: String) {
        let label = SKLabelNode(fontNamed: "Chalkduster")
        label.text = text
        label.fontSize = fontSize
        label.fontColor = SKColor.white
        label.position = position
        label.name = name
        addChild(label)
    }
    
    func touchDown(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.green
            self.addChild(n)
        }
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.blue
            self.addChild(n)
        }
    }
    
    func touchUp(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.red
            self.addChild(n)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let nodesAtPoint = nodes(at: location)
        
        for node in nodesAtPoint {
            if let nodeName = node.name, ["iniciarButton", "reanudarButton", "finali                     zarButton","faqButton"].contains(nodeName) {
                node.run(blinkAction(), withKey: "parpadeo")
                
                // Realizar la acción correspondiente al botón
                switch nodeName {
                case "iniciarButton":
                    let transition = SKTransition.fade(withDuration: 1.0)
                    let nueva = NuevaEscena(size: self.size)
                    view?.presentScene(nueva,transition: transition)

                    break
                case "reanudarButton":
                    let secondScene = SecondScene(size: self.size)
                    secondScene.scaleMode = .aspectFill
                    let transition = SKTransition.fade(withDuration: 6.0) // O cualquier transición que prefieras
                    self.view?.presentScene(secondScene, transition: transition)
                    break
                case "finalizarButton":
                    // Código para "Finalizar" el juego
                    break
                case "faqButton":
                    //codigo que utilizaremos para "finalizar el juego"
                    break
                default:
                    break
                }
            }
        }
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}


