//
//  WeekView.swift
//  CalendarApp
//
//  Created by Kristian Yodanov on 5.12.23.
//

import SwiftUI

struct WeekView: View {
    @Binding var week: CalendarWeek;
    var body: some View {
            GridRow{
                ForEach($week.days, id: \.self){$day in
                    let dayNumber = Calendar.current.component(.day, from: day.date)
                    let dayColor = day.type == WeekDay.weekend ? Color.red : Color.black
                    NavigationLink(destination: DayView(calendarDay: $day)) {
                        Text("\(dayNumber)").foregroundStyle(dayColor)
                    }
                }
        }
    }
}
//
//#Preview {
//    WeekView()
//}
