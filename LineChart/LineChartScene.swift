//
//  LineChartScene.swift
//  SwiftUICharts
//
//  Created by Vinay Devdikar on 19/06/22.
//

import SwiftUI
import Charts
struct LineChartScene: View {
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        NavigationView {
            VStack {
                Chart(viewModel.chartData) {
                    LineMark(
                        x: .value("Country", $0.name),
                        y: .value("Currency", $0.value)
                    ).foregroundStyle(.green)
                }
            }.navigationTitle("Line Chart")
        }.navigationViewStyle(.stack)
    }
}

struct LineChart_Previews: PreviewProvider {
    static var previews: some View {
        LineChartScene()
    }
}
