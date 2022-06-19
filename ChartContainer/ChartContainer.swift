//
//  SwitfUICharts.swift
//  SwiftUICharts
//
//  Created by Vinay Devdikar on 19/06/22.
//

import SwiftUI
struct ChartContainer: View {
    
    @State private var selectedTab = TabItems.bar.rawValue
    
    var body: some View {
        TabView {
            BarChartScene().tabItem {
                Label("Bar", image: "barchart")
            }.tag(TabItems.bar.rawValue)
            
            LineChartScene().tabItem {
                Label("Line", image: "linechart")
            }.tag(TabItems.line.rawValue)
        }
    }
}


struct ChartContainer_Previews: PreviewProvider {
    static var previews: some View {
        ChartContainer()
    }
}
