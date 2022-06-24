//
//  SwitfUICharts.swift
//  SwiftUICharts
//
//  Created by Vinay Devdikar on 19/06/22.
//

import SwiftUI
import Charts
struct ChartContainer: View {
    
    @State private var selectedTab = TabItems.bar.rawValue
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        TabView {
            BarChartScene().tabItem {
                Label("Bar", image: "barchart")
            }.tag(TabItems.bar.rawValue)
            
            LineChartScene().tabItem {
                Label("Line", image: "linechart")
            }.tag(TabItems.line.rawValue)
            
            DotChartScene().tabItem {
                Label("Dot", image: "dotchart")
            }.tag(TabItems.line.rawValue)
        }
        .onAppear(perform: {
            viewModel.fetchChartDetails()
        })
        .environmentObject(viewModel)
    }
}


struct ChartContainer_Previews: PreviewProvider {
    static var previews: some View {
        ChartContainer()
    }
}
