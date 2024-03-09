//
//  csv.swift
//  FullHands
//
//  Created by CEDAM31 on 08/03/24.
//

import Foundation
/*
let data = [
    ["name": "Alice", "age": 30],
    ["name": "Bob", "age": 25],
    ["name": "Charlie", "age": 35]
]

// Create a file URL for the CSV file
let fileURL = URL(fileURLWithPath: NSTemporaryDirectory() + "people.csv")

// Create a file handle to write to the CSV file
var fileHandle: FileHandle!
do {
    fileHandle = try FileHandle(forWritingTo: fileURL)
} catch {
    print("Error creating file handle: \(error)")
    return
}

// Write the CSV header to the file
let header = "Name,Age\n"
if let data = header.data(using: .utf8) {
    fileHandle.write(data)
}

// Write each data item to the file as a CSV row
for item in data {
    let name = item["name"]!
    let age = item["age"]!
    let row = "\(name),\(age)\n"
    if let data = row.data(using: .utf8) {
        fileHandle.write(data)
    }
}

// Close the file handle
fileHandle.closeFile()

// Print the file URL for verification
print("CSV file saved to: \(fileURL)")
*/
