//
//  AbsenceItem.swift
//  AbsenceRecorder
//
//  Created by Ed Slack on 26/02/2024.
//

import SwiftUI

struct AbsenceItem: View {
    @ObservedObject var studentAbsence: StudentAbsence
    
    var body: some View {
        HStack {
            Text("\(studentAbsence.student.forename)")
                .padding(.horizontal)
            Spacer()
            if studentAbsence.isAbsent {
                Button("❌", action: {toggleAbsent()})
                    .padding(.horizontal)
            } else {
                Button("✔️", action: {toggleAbsent()})
                    .padding(.horizontal)
            }
        }
    }
    func toggleAbsent() {
        studentAbsence.isAbsent.toggle()
    }
}

struct AbsenceItem_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceItem(studentAbsence: StudentAbsence.example)
    }
}
