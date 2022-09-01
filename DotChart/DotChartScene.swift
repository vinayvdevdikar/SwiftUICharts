//
//  DotCharts.swift
//  SwiftUICharts
//
//  Created by Vinay Devdikar on 24/06/22.
//

import Charts
import SwiftUI
struct DotChartScene: View {
    var body: some View {
        NavigationView {
            VStack {
                ChartUIView(type: .dot)
            }.navigationTitle("Dot Chart")
        }.navigationViewStyle(.stack)
    }
}
