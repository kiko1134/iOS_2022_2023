//
//  TaskView.swift
//  CalendarApp
//
//  Created by Emil Atanasov on 11/27/22.
//

import SwiftUI

struct TaskView: View {
    @Binding var task: TaskItem;
    @State var isCompleted: Bool = false
    var body: some View {
        VStack {
//            Text("Изглед на задача.")
            Toggle(isOn: $task.isComplete) {
                Text("\(task.title)")
                    .bold()
            }
            Button(action: {print("\(task)")}, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
        .padding()
    }
}

//struct TaskView_Previews: PreviewProvider {
//    static var previews: some View {
//        TaskView()
//    }
//}
