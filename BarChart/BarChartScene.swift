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
                ChartUIView(type: .bar)
            }.navigationTitle("Bar Chart")
        }.navigationViewStyle(.stack)
    }
}
