//
//  Note.swift
//  Notes Watch App
//
//  Created by Adem Koçdoğan on 23.09.2023.
//

import Foundation

struct Note: Identifiable, Codable, Hashable{
    let id: UUID
    let text: String
}
