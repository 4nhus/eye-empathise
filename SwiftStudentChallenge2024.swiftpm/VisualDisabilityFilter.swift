//
//  VisualDisabilityFilter.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 22/2/2024.
//

import Foundation

enum VisualDisabilityFilter: String, CaseIterable, Identifiable {
    case none
    // Red blind
    case protanopia
    // Green blind
    case deuteranopia
    // Blue-yellow blind
    case tritanopia
    // Completely colour blind
    case achromatopsia
    case lowVision
    var id: String { self.rawValue }
}
