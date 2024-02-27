//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Ed Slack on 26/02/2024.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    
    init(code: String) {
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 1...size {
            let student = Student(forename: "Firstname\(i)", surname: "Surname\(i)", birthday: Date())
            division.students.append(student)
        }
        
        return division
    }
    
    static let examples: [Division] = [Division.createDivision(code: "CChex-1", of: 8),
                           Division.createDivision(code: "CComW-1", of: 10),
                           Division.createDivision(code: "CMdaY-6", of: 16),
                           Division.createDivision(code: "CMdpV-3", of: 14)]
    #endif
    
}
