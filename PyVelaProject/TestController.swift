import Foundation
import UIKit

class TestController: UIViewController {
    @IBOutlet weak var VOUD_Controller: UIView!
    @IBOutlet weak var OneSubject_Controller: UIView!
    @IBOutlet weak var ENT_Controller: UIView!

    
    @IBAction func ShowControllers(_ sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == 0)
        {
            UIView.animate(withDuration: 0.5) {
                self.ENT_Controller.alpha = 1.0
                self.OneSubject_Controller.alpha = 0.0
                self.VOUD_Controller.alpha = 0.0
            }
        }
        else if (sender.selectedSegmentIndex == 1)
        {
            UIView.animate(withDuration: 0.5) {
                self.ENT_Controller.alpha = 0.0
                self.OneSubject_Controller.alpha = 1.0
                self.VOUD_Controller.alpha = 0.0
            }
        }
            
        else
        {
            UIView.animate(withDuration: 0.5) {
                self.ENT_Controller.alpha = 0.0
                self.OneSubject_Controller.alpha = 0.0
                self.VOUD_Controller.alpha = 1.0
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        defaults.set("", forKey: "Terminate")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
