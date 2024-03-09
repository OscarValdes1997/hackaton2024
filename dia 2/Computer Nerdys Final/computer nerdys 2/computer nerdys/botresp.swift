//
//  botresp.swift
//  computer nerdys
//
//  Created by CEDAM03 on 08/03/24.
//

import Foundation

func getbotresp(message: String) -> String
{
    let tempmesagge = message.lowercased()
    
    if tempmesagge.contains("hola")
    {
        return "¿En que te puedo ayudar?"
    }
    else if tempmesagge.contains("adios")
    {
        return "Hasta pronto¡"
    }
    else if tempmesagge.contains("necesito ayuda")
    {
        return "¿Necesitas orientacio?"
    }
    else
    {
        return "Requieres algo mas"
    }
}
