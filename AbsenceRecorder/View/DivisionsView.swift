//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Ed Slack on 02/02/2024.
//

import SwiftUI

struct DivisionsView: View {
    var divisions: [Division]
    @EnvironmentObject var state: StateController
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView {
            List(state.divisions, id: \.self.code) { division in
                NavigationLink(destination: AbsenceView(division: division)) {
                DivisionItem(division: division)
                }
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {currentDate = currentDate.previousDay()}) {
                        Image(systemName: "arrow.backward")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {  currentDate = currentDate.nextDay() }) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
    }
}

struct DivisionsView_Previews: PreviewProvider {
    static var previews: some View {
        DivisionsView(divisions: Division.examples)
            .environmentObject(StateController())
    }
}
