//
//  FileSwitcherDumpApp.swift
//  FileSwitcherDump
//
//  Created by sourcelocation on 25/02/2023.
//

import SwiftUI

@main
struct FileSwitcherDumpApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// https://stackoverflow.com/a/51241158

extension Bundle {
    public var icon: UIImage? {
        if let icons = infoDictionary?["CFBundleIcons"] as? [String: Any],
            let primaryIcon = icons["CFBundlePrimaryIcon"] as? [String: Any],
            let iconFiles = primaryIcon["CFBundleIconFiles"] as? [String],
            let lastIcon = iconFiles.last {
            return UIImage(named: lastIcon)
        }
        return nil
    }
}
