//
//  SplashScreenView.swift
//  GangaDrishthi
//
//  Created by Yaduraj Singh on 07/09/25.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isAnimating = false
    @State private var showMainContent = false
    
    var body: some View {
        ZStack {
            // Background
            AppConstants.Colors.primaryBlue
                .ignoresSafeArea()
            
            VStack(spacing: AppConstants.Spacing.xl) {
                Spacer()
                
                // App Icon/Logo Area
                VStack(spacing: AppConstants.Spacing.lg) {
                    // Main Icon - Using SF Symbol for now, can be replaced with custom logo
                    ZStack {
                        Circle()
                            .fill(AppConstants.Colors.white.opacity(0.1))
                            .frame(width: 120, height: 120)
                            .scaleEffect(isAnimating ? 1.1 : 1.0)
                            .animation(
                                Animation.easeInOut(duration: 2.0)
                                    .repeatForever(autoreverses: true),
                                value: isAnimating
                            )
                        
                        Image(systemName: "drop.circle.fill")
                            .font(.system(size: 60))
                            .foregroundColor(AppConstants.Colors.white)
                            .scaleEffect(isAnimating ? 1.0 : 0.8)
                            .animation(AppConstants.Animation.standard, value: isAnimating)
                    }
                    
                    // App Name
                    Text(AppConstants.AppInfo.appName)
                        .font(AppConstants.Fonts.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(AppConstants.Colors.white)
                        .opacity(isAnimating ? 1.0 : 0.0)
                        .animation(
                            AppConstants.Animation.standard.delay(0.3),
                            value: isAnimating
                        )
                    
                    // Tagline
                    Text(AppConstants.AppInfo.tagline)
                        .font(AppConstants.Fonts.callout)
                        .foregroundColor(AppConstants.Colors.white.opacity(0.8))
                        .multilineTextAlignment(.center)
                        .opacity(isAnimating ? 1.0 : 0.0)
                        .animation(
                            AppConstants.Animation.standard.delay(0.6),
                            value: isAnimating
                        )
                }
                
                Spacer()
                
                // Loading Indicator
                VStack(spacing: AppConstants.Spacing.md) {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: AppConstants.Colors.white))
                        .scaleEffect(1.2)
                        .opacity(isAnimating ? 1.0 : 0.0)
                        .animation(
                            AppConstants.Animation.standard.delay(0.9),
                            value: isAnimating
                        )
                    
                    Text("Initializing...")
                        .font(AppConstants.Fonts.caption1)
                        .foregroundColor(AppConstants.Colors.white.opacity(0.7))
                        .opacity(isAnimating ? 1.0 : 0.0)
                        .animation(
                            AppConstants.Animation.standard.delay(1.2),
                            value: isAnimating
                        )
                }
                .padding(.bottom, AppConstants.Spacing.xxl)
            }
            .padding(AppConstants.Spacing.lg)
        }
        .onAppear {
            startAnimations()
            
            // Navigate to main content after delay
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                withAnimation(AppConstants.Animation.standard) {
                    showMainContent = true
                }
            }
        }
        .fullScreenCover(isPresented: $showMainContent) {
            ContentView() // This will be replaced with your main app view later
        }
    }
    
    private func startAnimations() {
        withAnimation {
            isAnimating = true
        }
    }
}

#Preview {
    SplashScreenView()
}
