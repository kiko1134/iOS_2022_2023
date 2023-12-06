//
//  ContentView.swift
//  CalendarApp
//
//  Created by Emil Atanasov on 11/26/22.
//

import SwiftUI

struct HomeView: View {
    // Това е статичен модел. Ако искаме да го редактираме
    // трябва да определим като "състояние".
    @ObservedObject
    var model: CalendarModel = CalendarModel.mockInstance
    var body: some View {
        NavigationView {
                    VStack {
                        MonthView(month: $model.months[0])
                    }
                    .padding()
                    .navigationTitle("Calendar App")
                }
            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
