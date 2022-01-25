import Foundation
import UIKit


class Check_UNT_PonitsController: UIViewController{
    @IBOutlet weak var Ponit_Label: UILabel!
    @IBOutlet weak var subject1_point_Label: UILabel!
    @IBOutlet weak var subject2_point_Label: UILabel!
    @IBOutlet weak var subject3_point_Label: UILabel!
    @IBOutlet weak var subject4_point_Label: UILabel!
    @IBOutlet weak var subject5_point_Label: UILabel!
    @IBOutlet weak var subject1_name_Label: UILabel!
    @IBOutlet weak var subject2_name_Label: UILabel!
    @IBOutlet weak var subject1_letter: UILabel!
    @IBOutlet weak var subject2_letter: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        
        subject1_name_Label.text = defaults.string(forKey: "subject1_name")!
        subject2_name_Label.text = defaults.string(forKey: "subject2_name")!
        subject1_letter.text = defaults.string(forKey: "subject1_name")![0]
        subject2_letter.text = defaults.string(forKey: "subject2_name")![0]
        Ponit_Label.text = defaults.string(forKey: "UNT_Points")!
        subject1_point_Label.text = defaults.string(forKey: "subject1_point")! + "/20"
        subject2_point_Label.text = defaults.string(forKey: "subject2_point")! + "/20"
        subject3_point_Label.text = defaults.string(forKey: "subject3_point")! + "/20"
        subject4_point_Label.text = defaults.string(forKey: "subject4_point")! + "/40"
        subject5_point_Label.text = defaults.string(forKey: "subject5_point")! + "/40"
    }
    
    @IBAction func TestAnother_Tapped(_ sender: UIButton) {
        let mainTabController = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        
        mainTabController.selectedViewController = mainTabController.viewControllers?[1]
        
        self.present(mainTabController, animated: true, completion: nil)
    }
    @IBAction func AnalyzeButton_Tapped(_ sender: UIButton) {
        let mainTabController = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        
        mainTabController.selectedViewController = mainTabController.viewControllers?[2]
        
        self.present(mainTabController, animated: true, completion: nil)
    }
}
