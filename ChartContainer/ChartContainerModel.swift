//
//  ChartContainerModel.swift
//  SwiftUICharts
//
//  Created by Vinay Devdikar on 24/06/22.
//

import Foundation
// MARK: - Currency
struct Currency: Codable {
    let rates: [Rate]
}

// MARK: - Rate
struct Rate: Codable {
    let country: String
    let value: Double
}

struct ChartData: Identifiable {
    var id = UUID()
    let name: String
    let value: Double
}
