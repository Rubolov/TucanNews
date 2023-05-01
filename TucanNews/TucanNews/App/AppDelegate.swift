

import UIKit
@_exported import RambaHamba

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.backgroundColor = .black
    window?.rootViewController = UINavigationController(rootViewController: NewsListController())
    window?.makeKeyAndVisible()
    printFonts()
    
    return true
  }
  
  private func printFonts() {
    for family in UIFont.familyNames.sorted() {
      let names = UIFont.fontNames(forFamilyName: family)
      print("Family: \(family) Font names: \(names)")
    }
  }

}
