//
//  DayView.swift
//  CalendarApp
//
//  Created by Emil Atanasov on 11/27/22.
//

import SwiftUI

struct DayView: View {
    @Binding var calendarDay: CalendarDay
    var body: some View {
            HStack{
                if(calendarDay.tasks.isEmpty){
                    Text("is empty")
                }
                
                VStack{
                    ForEach($calendarDay.tasks , id: \.self){ $task in
                        TaskView(task: $task)
                    }
                }
            }
    }
}

//struct DayView_Previews: PreviewProvider {
//    static var previews: some View {
//        DayView(tasks: )
//    }
//}
