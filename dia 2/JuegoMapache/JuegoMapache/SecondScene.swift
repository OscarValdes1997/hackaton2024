//
//  SecondScene.swift
//  que_esta_pasando
//
//  Created by administrador on 08/03/24.
//  Copyright © 2024 administrador. All rights reserved.
//

import SpriteKit
import GameplayKit

class SecondScene: SKScene {
    
    override func didMove(to view: SKView) {
        // Asumiendo que "nombreImagenFondo" es el nombre de tu imagen en los Assets
        let backgroundImage = SKSpriteNode(imageNamed: "mapa")
        backgroundImage.position = CGPoint(x: frame.midX, y: frame.midY)
        backgroundImage.alpha = 0.0 // Comienza completamente transparente
        backgroundImage.zPosition = -1
        backgroundImage.scale(to: frame.size)
        addChild(backgroundImage)
        
        // Acción para que la imagen de fondo se haga más clara
        let fadeInAction = SKAction.fadeIn(withDuration: 2.0) // Duración de 2 segundos
        backgroundImage.run(fadeInAction)
        
        // Crear y configurar la etiqueta de cargando
        let loadingLabel = SKLabelNode(fontNamed: "AvenirNext-Bold")
        loadingLabel.text = "CARGANDO ..."
        loadingLabel.fontSize = 30
        loadingLabel.fontColor = SKColor.black
        loadingLabel.position = CGPoint(x: 700, y: 350)
        addChild(loadingLabel)
        
        // Acción para la animación de la etiqueta "CARGANDO ..."
        let fadeOutLabel = SKAction.fadeAlpha(to: 0.2, duration: 0.5)
        let fadeInLabel = SKAction.fadeAlpha(to: 1.0, duration: 0.5)
        let loadingSequence = SKAction.sequence([fadeOutLabel, fadeInLabel])
        
        // Repite la secuencia de la etiqueta de cargando para siempre
        let repeatLoadingAction = SKAction.repeatForever(loadingSequence)
        loadingLabel.run(repeatLoadingAction)
        
        super.didMove(to: view)
        
        
        let delaySeconds: TimeInterval = 15;
        
        DispatchQueue.main.asyncAfter(deadline: .now() + delaySeconds){
            self.transicionarANuevaEscena()
        }
        
        
    }
    func transicionarANuevaEscena(){
                let nuevaEscena = EscenaDespuesDeCargando(size: self.size)
                nuevaEscena.scaleMode = self.scaleMode
                
                let transicion = SKTransition.fade(withDuration: 0.5)
                self.view?.presentScene(nuevaEscena, transition: transicion)
    }
    
}
    
