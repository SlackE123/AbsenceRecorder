//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Ed Slack on 02/02/2024.
//

import SwiftUI

struct DivisionsView: View {
    @EnvironmentObject var state: StateController
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView {
            List(state.divisions, id: \.self.code) { division in
                NavigationLink(destination: AbsenceView(absence: Absence(date: Date(), students: division.students))) {
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
        DivisionsView()
            .environmentObject(StateController())
    }
}
