//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Ed Slack on 26/02/2024.
//

import SwiftUI

struct AbsenceView: View {
    let division: Division
    
    var body: some View {
        Text("Absence View - \(division.code)")
    }
}

#Preview {
    AbsenceView(division: Division.examples[0])
}
