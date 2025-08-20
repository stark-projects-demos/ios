//
//  ContentView.swift
//  Stark iOS Sample
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Touch Target Too Small", destination: TouchTargetTooSmallView())
                NavigationLink("Missing Labels on Active Images, Progress Bars, Sliders, Switches", destination: MissingLabelsActiveElementsView())
                NavigationLink("Alert Missing Title/Description", destination: AlertMissingTitleView())
                NavigationLink("Form Label Issues (Checkboxes, Radios, Groups)", destination: FormLabelIssuesView())
                NavigationLink("Color Contrast & Color-Only Info", destination: ColorContrastIssuesView())
                NavigationLink("Media Missing Captions/Descriptions", destination: MediaMissingCaptionsView())
                NavigationLink("Images Missing Accessibility Labels", destination: ImagesMissingLabelsView())
            }
            .navigationTitle("Accessibility Demos")
        }
        .environment(\.locale, Locale(identifier: "en"))
    }
}

#Preview {
    ContentView()
}
