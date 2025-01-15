//
//  ViewModel.swift
//  CoffeeRecipe
//
//  Created by 최범수 on 2025-01-15.
//
import SwiftUI

@Observable
class CoffeeData {
    var coffeeList: [Coffee] = []
    init() {
        coffeeList = loadCoffeeData()
    }
}

func loadCoffeeData() -> [Coffee] {
    guard let url = Bundle.main.url(forResource: "dummyJson", withExtension: "json") else {
        fatalError("CoffeeData.json 파일을 찾을 수 없습니다.")
    }
    
    do {
        let data = try Data(contentsOf: url)
        let coffeeList = try JSONDecoder().decode([Coffee].self, from: data)
        
        return coffeeList
    } catch {
        fatalError("dummyJson.json 파싱 실패: \(error)")
    }
}

//func saveJsonToDocuments(_ data: [Car]) {
//    let documentURL = FileManager.default.urls(for: .documentDirectory,
//                                               in: .userDomainMask).first!
//    let fileURL = documentURL.appendingPathComponent("coffeedata.json")
//    
//    do {
//        let encoder = JSONEncoder()
//        let encodedData = try encoder.encode(data)
//        try encodedData.write(to: fileURL, options: [.atomic])
//        print("Save Success")
//    } catch {
//        print("Failed to save \(fileURL): \(error)")
//    }
//}
