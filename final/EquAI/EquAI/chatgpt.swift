//
//  chatgpt.swift
//  EquAI
//
//  Created by CEDAM 12 on 08/03/24.
//

import Foundation

struct OpenAIResponse: Decodable {
    struct Choice: Decodable {
        let message: Message
    }
    struct Message: Decodable {
        let content: String
    }
    let choices: [Choice]
}

class OpenAIManager: ObservableObject {
    @Published var response = ""
    private let apiKey = "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"

    func askGPT3(question: String) {
        let url = URL(string: "https://api.openai.com/v1/chat/completions")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let body: [String: Any] = [
            "model": "gpt-3.5-turbo", // Reemplaza con el modelo que deseas utilizar
            "messages": [["role": "user", "content": question]]
        ]

        let jsonData = try? JSONSerialization.data(withJSONObject: body)
        request.httpBody = jsonData
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                DispatchQueue.main.async {
                    self.response = "Error: \(error.localizedDescription)"
                }
                return
            }
            guard let data = data else {
                DispatchQueue.main.async {
                    self.response = "No data in response."
                }
                return
            }
            if let decodedResponse = try? JSONDecoder().decode(OpenAIResponse.self, from: data) {
                DispatchQueue.main.async {
                    self.response = decodedResponse.choices.first?.message.content ?? "No response"
                }
            }
        }
        
        task.resume()
    }
}
