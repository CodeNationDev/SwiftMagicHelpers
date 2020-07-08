//
#if !os(macOS)
import UIKit

public class ReplaceSegue: UIStoryboardSegue {
    
    override func perform() {
        if let delegate = UIApplication.shared.delegate, let rWindow = delegate.window, let inWindow = rWindow {
            UIView.transition(with: inWindow, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                if let delegate = UIApplication.shared.delegate as? AppDelegate, let rootwindow = delegate.window {
                    rootwindow.rootViewController = self.destination
                }
            }, completion: nil)
        }
    }
}
#endif
