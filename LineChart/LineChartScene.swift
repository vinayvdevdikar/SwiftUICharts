//
//  LineChartScene.swift
//  SwiftUICharts
//
//  Created by Vinay Devdikar on 19/06/22.
//

import SwiftUI
import Charts
struct LineChartScene: View {
    
    var body: some View {
        NavigationView {
            VStack {
                ChartUIView(type: .line)
            }.navigationTitle("Line Chart")
        }.navigationViewStyle(.stack)
    }
}

struct ChartUIView: View {
    var type: ChartType
    @EnvironmentObject var viewModel: ViewModel
    
    init(type: ChartType) {
        self.type = type
    }
    
    var body: some View {
        Chart(viewModel.chartData) {
            switch(self.type) {
            case .line:
                LineMark(
                    x: .value("Country", $0.name),
                    y: .value("Currency", $0.value)
                ).foregroundStyle(.red)
            case .bar:
                BarMark(
                    x: .value("Country", $0.name),
                    y: .value("Currency", $0.value)
                ).foregroundStyle(.green)
            case .dot:
                PointMark(
                    x: .value("Country", $0.name),
                    y: .value("Currency", $0.value)
                ).foregroundStyle(.blue)
            }
        }
    }
}

enum ChartType {
    case line
    case dot
    case bar
}
