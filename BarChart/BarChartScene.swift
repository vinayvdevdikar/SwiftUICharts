//
//  BarChartScene.swift
//  SwiftUICharts
//
//  Created by Vinay Devdikar on 19/06/22.
//

import Charts
import SwiftUI
struct BarChartScene: View {
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        NavigationView {
            VStack {
                Chart(viewModel.chartData) {
                    BarMark(
                        x: .value("Country", $0.name),
                        y: .value("Currency", $0.value)
                    ).foregroundStyle(.blue)
                }
            }.navigationTitle("Bar Chart")
        }.navigationViewStyle(.stack)
    }
}

struct BarChart_Previews: PreviewProvider {
    static var previews: some View {
        BarChartScene()
    }
}