//
//  AppDelegate.swift
//  SparkleIntegration
//
//  Created by Arul murugan S on 04/11/22.
//

import Cocoa
import Sparkle

@main
class AppDelegate: NSObject, NSApplicationDelegate {

  private let updateController = SPUStandardUpdaterController(startingUpdater: true, updaterDelegate: nil, userDriverDelegate: nil)
  
  func applicationDidFinishLaunching(_ notification: Notification) {
    self.updateController.updater.automaticallyChecksForUpdates = true
    self.updateController.updater.automaticallyDownloadsUpdates = true
  }
  
  func checkForUpdates() {
    updateController.updater.checkForUpdates()
  }
  
  func checkForUpdatesInBackground() {
    self.updateController.updater.checkForUpdatesInBackground()
  }
}

extension NSApplication {
  var appDelegate: AppDelegate? {
    NSApp.delegate as? AppDelegate
  }
}
