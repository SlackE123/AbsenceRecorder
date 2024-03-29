//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Ed Slack on 26/02/2024.
//

import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var state: StateController
    
    var body: some View {
        Text("Statistics: \(state.divisions[0].code)")
    }
}


struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
