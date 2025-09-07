//
//  AppConstants.swift
//  GangaDrishthi
//
//  Created by Yaduraj Singh on 07/09/25.
//

import SwiftUI

struct AppConstants {
    
    // MARK: - Colors (Marine Theme)
    struct Colors {
        // Primary Blues - Professional Marine Palette
        static let primaryBlue = Color(red: 0.07, green: 0.36, blue: 0.65) // Deep Ocean Blue #1258A5
        static let secondaryBlue = Color(red: 0.20, green: 0.60, blue: 0.86) // Marine Blue #3399DB
        static let lightBlue = Color(red: 0.87, green: 0.94, blue: 0.98) // Light Ocean #DEF0FA
        static let accentBlue = Color(red: 0.00, green: 0.48, blue: 0.80) // Accent Blue #007ACC
        
        // Supporting Colors
        static let darkNavy = Color(red: 0.05, green: 0.20, blue: 0.35) // Dark Navy #0D3359
        static let white = Color.white
        static let lightGray = Color(red: 0.96, green: 0.96, blue: 0.96) // #F5F5F5
        static let mediumGray = Color(red: 0.85, green: 0.85, blue: 0.85) // #D9D9D9
        static let textPrimary = Color(red: 0.13, green: 0.13, blue: 0.13) // #212121
        static let textSecondary = Color(red: 0.46, green: 0.46, blue: 0.46) // #757575
        
        // Status Colors
        static let success = Color(red: 0.30, green: 0.69, blue: 0.31) // #4CAF50
        static let warning = Color(red: 1.00, green: 0.60, blue: 0.00) // #FF9800
        static let error = Color(red: 0.96, green: 0.26, blue: 0.21) // #F44336
    }
    
    // MARK: - Typography
    struct Fonts {
        static let largeTitle: Font = .system(size: 34, weight: .bold, design: .default)
        static let title1: Font = .system(size: 28, weight: .bold, design: .default)
        static let title2: Font = .system(size: 22, weight: .bold, design: .default)
        static let title3: Font = .system(size: 20, weight: .semibold, design: .default)
        static let headline: Font = .system(size: 17, weight: .semibold, design: .default)
        static let body: Font = .system(size: 17, weight: .regular, design: .default)
        static let callout: Font = .system(size: 16, weight: .regular, design: .default)
        static let subheadline: Font = .system(size: 15, weight: .regular, design: .default)
        static let footnote: Font = .system(size: 13, weight: .regular, design: .default)
        static let caption1: Font = .system(size: 12, weight: .regular, design: .default)
        static let caption2: Font = .system(size: 11, weight: .regular, design: .default)
    }
    
    // MARK: - Spacing
    struct Spacing {
        static let xs: CGFloat = 4
        static let sm: CGFloat = 8
        static let md: CGFloat = 16
        static let lg: CGFloat = 24
        static let xl: CGFloat = 32
        static let xxl: CGFloat = 48
    }
    
    // MARK: - Corner Radius
    struct CornerRadius {
        static let small: CGFloat = 8
        static let medium: CGFloat = 12
        static let large: CGFloat = 16
        static let extraLarge: CGFloat = 20
    }
    
    // MARK: - App Info
    struct AppInfo {
        static let appName = "GangaDrishthi"
        static let tagline = "Microplastic Detection & Analysis"
        static let version = "1.0"
    }
    
    // MARK: - Animation
    struct Animation {
        static let quick = SwiftUI.Animation.easeInOut(duration: 0.3)
        static let standard = SwiftUI.Animation.easeInOut(duration: 0.5)
        static let slow = SwiftUI.Animation.easeInOut(duration: 0.8)
    }
}
