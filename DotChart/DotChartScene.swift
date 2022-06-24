//
//  DotCharts.swift
//  SwiftUICharts
//
//  Created by Vinay Devdikar on 24/06/22.
//

import Charts
import SwiftUI
struct DotChartScene: View {
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        NavigationView {
            VStack {
                Chart(viewModel.chartData) {
                    PointMark(
                        x: .value("Country", $0.name),
                        y: .value("Currency", $0.value)
                    ).foregroundStyle(.red)
                }
            }.navigationTitle("Dot Chart")
        }.navigationViewStyle(.stack)
    }
}

struct DotChart_Previews: PreviewProvider {
    static var previews: some View {
        DotChartScene()
    }
}
