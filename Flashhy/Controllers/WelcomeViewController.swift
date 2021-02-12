

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden=true
        super.viewWillAppear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden=false
        super.viewWillDisappear(animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text=""
        
        
        var index = 0.0
        for letter in K.appName{
            Timer.scheduledTimer(withTimeInterval: index*0.1, repeats: false) { (Timer) in
                self.titleLabel.text?.append(letter)
            }
            index += 1
        }
    }
}
