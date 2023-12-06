//
//  MonthView.swift
//  CalendarApp
//
//  Created by Emil Atanasov on 11/26/22.
//

import SwiftUI

struct MonthView: View {
    var days = calendarDayLabels
    @Binding var month: CalendarMonth
    var body: some View {
                Grid {
                    GridRow {
                        ForEach(days, id: \.self) { day in
                            Text(day)
                                .bold()
                        }
                    }
                    ForEach($month.weeks, id: \.self) { $week in
                        WeekView(week:$week)
                    }
                }
    }
}

//struct MonthView_Previews: PreviewProvider {
//    static var previews: some View {
//            MonthView(month: CalendarMonth.mockMonth)
//    }
//}
