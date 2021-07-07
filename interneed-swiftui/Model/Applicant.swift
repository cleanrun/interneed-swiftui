//
//  Applicant.swift
//  interneed-swiftui
//
//  Created by cleanmac on 07/07/21.
//

import Foundation

struct Applicant: Identifiable {
    enum ApplicantStatus {
        case review
        case rejected
        case shortlisted
    }
    
    var id = UUID()
    var internship: Internship
    var applyDate: String
    var status: ApplicantStatus
}

extension Applicant {
    static func getAll() -> [Applicant] {
        [
            Applicant(internship: Internship.getAll()[0], applyDate: "Applied on June 24, 09.07 AM", status: .review),
            Applicant(internship: Internship.getAll()[3], applyDate: "Applied on August 1, 11.21 AM", status: .shortlisted)
        ]
    }
}
