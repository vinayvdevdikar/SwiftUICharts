//
//  ChartContainer+ViewModel.swift
//  SwiftUICharts
//
//  Created by Vinay Devdikar on 24/06/22.
//

import Foundation
@MainActor class ViewModel: ObservableObject {
    @Published var chartData: [ChartData] = []
    func fetchChartDetails() {
        guard let path = Bundle.main.path(forResource: "response", ofType: "json") else { return }
        do {
            let jsonData = try Data(contentsOf: URL(fileURLWithPath: path), options: .dataReadingMapped)
            let decoder = JSONDecoder()
            let list = try decoder.decode(Currency.self, from: jsonData)
            self.updateDataType(with: list.rates)
        } catch {
            print(error)
        }
    }
    
    func updateDataType(with data: [Rate]) {
        DispatchQueue.main.async {
            self.chartData = data.map { dataObj in
                return ChartData(name: dataObj.country, value: dataObj.value)
            }
            print(self.chartData.count)
        }
    }
}


