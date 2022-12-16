//
//  ViewController.swift
//  SparkleIntegration
//
//  Created by Arul murugan S on 04/11/22.
//

import Cocoa

class AppUpdateController: NSViewController {

  @IBOutlet private var updateButton: NSButton!
  @IBOutlet private var appVersion: NSTextField!
  
  override func viewWillAppear() {
    super.viewWillAppear()
    appVersion.stringValue = "version:" + Bundle.main.appVersion
    
    updateButton.target = self
    updateButton.action = #selector(checkForUpdates)
  }


  @objc private func checkForUpdates() {
    NSApp.appDelegate?.checkForUpdates()
  }
}

private extension Bundle {
  var appVersion: String {infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0"}
}
