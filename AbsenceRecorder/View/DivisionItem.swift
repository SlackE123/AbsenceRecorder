//
//  DivisionItem.swift
//  AbsenceRecorder
//
//  Created by Ed Slack on 26/02/2024.
//

import SwiftUI

struct DivisionItem: View {
    let division: Division
    var body: some View {
        HStack {
            Image(systemName: "\(division.students.count).circle")
            Text(division.code)
        }
    }
}

struct DivisionItem_Previews: PreviewProvider {
    static var previews: some View {
        DivisionItem(division: Division(code: "CComW-1"))
    }
}
