import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let navigationController = UINavigationController(rootViewController: ProductListViewController())
        window?.rootViewController = navigationController
        window?.backgroundColor = Colors.backgroundColor // Color de fondo personalizado
        window?.makeKeyAndVisible()
        return true
    }
}
