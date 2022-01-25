import Foundation
import UIKit


extension String {
    
    var length: Int {
        return count
    }
    
    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }
    
    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }
    
    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }
    
    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
    
}


class Check_OneSubject_PonitsController: UIViewController {
    @IBOutlet weak var PonitLabel: UILabel!
    @IBOutlet weak var SubjectNameLabel: UILabel!
    @IBOutlet weak var Point_inLabel: UILabel!
    @IBOutlet weak var FirstLetterLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        PonitLabel.text = defaults.string(forKey: "OneSubject_Points")
        SubjectNameLabel.text = defaults.string(forKey: "Subject_Name")
        FirstLetterLabel.text = defaults.string(forKey: "Subject_Name")![0]
        if Int(defaults.string(forKey: "Count_quest")!)! == 30{
            Point_inLabel.text = defaults.string(forKey: "OneSubject_Points")! + "/40"
        }
        else
        {
            Point_inLabel.text = defaults.string(forKey: "OneSubject_Points")! + "/20"
        }
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
