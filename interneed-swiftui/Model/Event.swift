//
//  Event.swift
//  interneed-swiftui
//
//  Created by cleanmac on 07/07/21.
//

import Foundation

struct Event: Identifiable {
    enum EventType {
        case green
        case lightBlue
        case darkBlue
    }
    
    var id = UUID()
    var title: String
    var subtitle: String
    var type: EventType
}

extension Event {
    static func getAll() -> [Event] {
        [
            Event(title: "Career Conference", subtitle: "Treat yourself with knowledge", type: .green),
            Event(title: "Mentoring Session", subtitle: "How to Build Perfect Porfolio", type: .lightBlue),
            Event(title: "Sharing Session", subtitle: "Tips and Trick Online Interview", type: .darkBlue),
        ]
    }
}
