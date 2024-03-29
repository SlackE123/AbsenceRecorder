//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Ed Slack on 26/02/2024.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}
