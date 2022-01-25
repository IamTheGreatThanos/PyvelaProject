import Foundation
import UIKit

class ResultsController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var MyTable: UITableView!
    
    var Nums = [] as [String]
    var Tests = [] as [String]
    var Days = [] as [String]
    var Points = [] as [String]
    
    var one = [0,0,0]
    var two = [0,0,0]
    var three = [0,0,0]
    var four = [0,0,0]
    var five = [0,0,0]
    var six = [0,0,0]
    var seven = [0,0,0]
    var eight = [0,0,0]
    var nine = [0,0,0]
    var ten = [0,0,0]
    var eleven = [0,0,0]
    var twelve = [0,0,0]
    var thirteen = [0,0,0]
    var fourteen = [0,0,0]
    var fiveteen = [0,0,0]
    
    var twelve_thirteen = [0,0,0]
    var fourteen_fiveteen = [0,0,0]
    var four_ten = [0,0,0]
    var four_five = [0,0,0]
    var four_nine = [0,0,0]
    var six_seven = [0,0,0]
    var eight_eleven = [0,0,0]
    var eight_thirteen = [0,0,0]
    var nine_ten = [0,0,0]
    var nine_eleven = [0,0,0]
    var nine_twelve = [0,0,0]

    
    
    var myIndex = 0
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (Tests.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellone", for: indexPath) as! ResultControllerTableViewCell
        
        cell.NumLabel.text = Nums[indexPath.row]
        cell.TestLabel.text = Tests[indexPath.row]
        cell.DataLabel.text = Days[indexPath.row]
        cell.PointLabel.text = Points[indexPath.row]
        
        if self.Points[indexPath.row] == "Бітіру"{
            cell.NumLabel.textColor = UIColor.red
            cell.PointLabel.textColor = UIColor.red
        }
        
        if Tests[indexPath.row] == "Қазақстан тарихы"{
            cell.LowLabel.text = "Төменгі балл: " + String(one[1])
            cell.HighLabel.text = "Жоғарғы балл: " + String(one[2])
        }
        if Tests[indexPath.row] == "Оқу сауаттылығы"{
            cell.LowLabel.text = "Төменгі балл: " + String(two[1])
            cell.HighLabel.text = "Жоғарғы балл: " + String(two[2])
        }
        if Tests[indexPath.row] == "Математикалық сауаттылық"{
            cell.LowLabel.text = "Төменгі балл: " + String(three[1])
            cell.HighLabel.text = "Жоғарғы балл: " + String(three[2])
        }
        if Tests[indexPath.row] == "Дүниежүзі тарихы"{
            cell.LowLabel.text = "Төменгі балл: " + String(four[1])
            cell.HighLabel.text = "Жоғарғы балл: " + String(four[2])
        }
        if Tests[indexPath.row] == "Адам. Қоғам. Құқық."{
            cell.LowLabel.text = "Төменгі балл: " + String(five[1])
            cell.HighLabel.text = "Жоғарғы балл: " + String(five[2])
        }
        if Tests[indexPath.row] == "Қазақ тілі"{
            cell.LowLabel.text = "Төменгі балл: " + String(six[1])
            cell.HighLabel.text = "Жоғарғы балл: " + String(six[2])
        }
        if Tests[indexPath.row] == "Қазақ әдебиеті"{
            cell.LowLabel.text = "Төменгі балл: " + String(seven[1])
            cell.HighLabel.text = "Жоғарғы балл: " + String(seven[2])
        }
        if Tests[indexPath.row] == "Химия"{
            cell.LowLabel.text = "Төменгі балл: " + String(eight[1])
            cell.HighLabel.text = "Жоғарғы балл: " + String(eight[2])
        }
        if Tests[indexPath.row] == "География"{
            cell.LowLabel.text = "Төменгі балл: " + String(nine[1])
            cell.HighLabel.text = "Жоғарғы балл: " + String(nine[2])
        }
        if Tests[indexPath.row] == "Ағылшын тілі"{
            cell.LowLabel.text = "Төменгі балл: " + String(ten[1])
            cell.HighLabel.text = "Жоғарғы балл: " + String(ten[2])
        }
        if Tests[indexPath.row] == "Биология"{
            cell.LowLabel.text = "Төменгі балл: " + String(eleven[1])
            cell.HighLabel.text = "Жоғарғы балл: " + String(eleven[2])
        }
        if Tests[indexPath.row] == "Математика"{
            cell.LowLabel.text = "Төменгі балл: " + String(twelve[1])
            cell.HighLabel.text = "Жоғарғы балл: " + String(twelve[2])
        }
        if Tests[indexPath.row] == "Физика"{
            cell.LowLabel.text = "Төменгі балл: " + String(thirteen[1])
            cell.HighLabel.text = "Жоғарғы балл: " + String(thirteen[2])
        }
        if Tests[indexPath.row] == "Орыс тілі"{
            cell.LowLabel.text = "Төменгі балл: " + String(fourteen[1])
            cell.HighLabel.text = "Жоғарғы балл: " + String(fourteen[2])
        }
        if Tests[indexPath.row] == "Орыс әдебиеті"{
            cell.LowLabel.text = "Төменгі балл: " + String(fiveteen[1])
            cell.HighLabel.text = "Жоғарғы балл: " + String(fiveteen[2])
        }
        if Tests[indexPath.row] == "ҰБТ"{
            cell.LowLabel.text = "Төменгі балл: " + String(twelve_thirteen[1])
            cell.HighLabel.text = "Жоғарғы балл: " + String(twelve_thirteen[2])
        }
        else{
            cell.LowLabel.text = "Төменгі балл: 0"
            cell.HighLabel.text = "Жоғарғы балл: 0"
        }
        
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        
        let actionSheetController: UIAlertController = UIAlertController(title: "Назар аудар!", message: "Тестке көшейік пе?", preferredStyle: .actionSheet)
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "Артқа", style: .cancel) { action -> Void in
            //Just dismiss the action sheet
        }
        actionSheetController.addAction(cancelAction)
        
        let takePictureAction: UIAlertAction = UIAlertAction(title: "Иә", style: .default) { action -> Void in
            
            let defaults = UserDefaults.standard
            defaults.set(String(indexPath.row), forKey: "IndexOfTest")
            defaults.set(String(self.Tests.count), forKey: "CountOfLine")
            
            if self.Points[self.myIndex] == "Бітіру"{
                let defaults = UserDefaults.standard
                defaults.setValue("1", forKey: "IfTerminated")
                
                if self.Tests[self.myIndex] == "ҰБТ"{
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let viewController = storyboard.instantiateViewController(withIdentifier :"UNT_TestingController")
                    self.present(viewController, animated: true)
                }
                else{
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let viewController = storyboard.instantiateViewController(withIdentifier :"OneSubject_TestingController")
                    self.present(viewController, animated: true)
                }
            }
            else{
                if self.Tests[self.myIndex] == "ҰБТ"{
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let viewController = storyboard.instantiateViewController(withIdentifier :"LookPass_UNT")
                    self.present(viewController, animated: true)
                }
                else{
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let viewController = storyboard.instantiateViewController(withIdentifier :"LookPass_Subject")
                    self.present(viewController, animated: true)
                }
            }
        }
        actionSheetController.addAction(takePictureAction)
        
        self.present(actionSheetController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
//        defaults.removeObject(forKey: "Order_count")
        if let order_count = defaults.string(forKey: "Order_count"){
            var loop_count = Int(order_count)!
            while (loop_count != -1){
                let subject_key = String(loop_count) + "_history"
                let time_key = String(loop_count) + "_time"
                let count_ques = String(loop_count) + "_count"
                let point_key = String(loop_count) + "_point"
                let letter_key = String(loop_count) + "_letter"
                
                
                Tests.append(defaults.string(forKey: subject_key)!)
                Days.append(defaults.string(forKey: time_key)!)
                Points.append(defaults.string(forKey: point_key)! + "/" + defaults.string(forKey: count_ques)!)
                Nums.append(defaults.string(forKey: letter_key)!)
                
                loop_count -= 1
            }
        }
        
        if let list = defaults.array(forKey: "TerminatedTest"){
//            print(list as NSArray)
            for i in list{
                Tests.insert((i as! NSArray)[0] as! String, at: 0)
                Days.insert((i as! NSArray)[2] as! String, at: 0)
                Points.insert((i as! NSArray)[1] as! String, at: 0)
                Nums.insert((i as! NSArray)[3] as! String, at: 0)
            }
        }
        
        if Reachability.isConnectedToNetwork() == true {
            let url = URL(string: "http://185.111.107.111/api/take_best_worst_average.php")!
            var request = URLRequest(url: url)
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            request.httpMethod = "POST"
            let postString = "user_id=" + defaults.string(forKey: "ID")!
            request.httpBody = postString.data(using: .utf8)
            //Get response
            let task = URLSession.shared.dataTask(with: request, completionHandler:{(data, response, error) in
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options: []) as! NSDictionary
                    let status = json["status"]!
//                    print(json)
                    DispatchQueue.main.async {
                        if status as! String == "true"{
                            if let points = json.value(forKey: "1") as? NSDictionary{
                                self.one[1] = points.value(forKey: "best") as! Int
                                self.one[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "2") as? NSDictionary{
                                self.two[1] = points.value(forKey: "best") as! Int
                                self.two[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "3") as? NSDictionary{
                                self.three[1] = points.value(forKey: "best") as! Int
                                self.three[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "4") as? NSDictionary{
                                self.four[1] = points.value(forKey: "best") as! Int
                                self.four[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "5") as? NSDictionary{
                                self.five[1] = points.value(forKey: "best") as! Int
                                self.five[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "6") as? NSDictionary{
                                self.six[1] = points.value(forKey: "best") as! Int
                                self.six[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "7") as? NSDictionary{
                                self.seven[1] = points.value(forKey: "best") as! Int
                                self.seven[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "8") as? NSDictionary{
                                self.eight[1] = points.value(forKey: "best") as! Int
                                self.eight[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "9") as? NSDictionary{
                                self.nine[1] = points.value(forKey: "best") as! Int
                                self.nine[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "10") as? NSDictionary{
                                self.ten[1] = points.value(forKey: "best") as! Int
                                self.ten[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "11") as? NSDictionary{
                                self.eleven[1] = points.value(forKey: "best") as! Int
                                self.eleven[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "12") as? NSDictionary{
                                self.twelve[1] = points.value(forKey: "best") as! Int
                                self.twelve[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "13") as? NSDictionary{
                                self.thirteen[1] = points.value(forKey: "best") as! Int
                                self.thirteen[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "14") as? NSDictionary{
                                self.fourteen[1] = points.value(forKey: "best") as! Int
                                self.fourteen[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "15") as? NSDictionary{
                                self.fiveteen[1] = points.value(forKey: "best") as! Int
                                self.fiveteen[2] = points.value(forKey: "worst") as! Int
                            }
                            
                            // UNT
                            if let points = json.value(forKey: "12_13") as? NSDictionary{
                                self.twelve_thirteen[1] = points.value(forKey: "best") as! Int
                                self.twelve_thirteen[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "14_15") as? NSDictionary{
                                self.fourteen_fiveteen[1] = points.value(forKey: "best") as! Int
                                self.fourteen_fiveteen[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "4_10") as? NSDictionary{
                                self.four_ten[1] = points.value(forKey: "best") as! Int
                                self.four_ten[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "4_5") as? NSDictionary{
                                self.four_five[1] = points.value(forKey: "best") as! Int
                                self.four_five[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "4_9") as? NSDictionary{
                                self.four_nine[1] = points.value(forKey: "best") as! Int
                                self.four_nine[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "6_7") as? NSDictionary{
                                self.six_seven[1] = points.value(forKey: "best") as! Int
                                self.six_seven[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "8_11") as? NSDictionary{
                                self.eight_eleven[1] = points.value(forKey: "best") as! Int
                                self.eight_eleven[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "8_13") as? NSDictionary{
                                self.eight_thirteen[1] = points.value(forKey: "best") as! Int
                                self.eight_thirteen[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "9_10") as? NSDictionary{
                                self.nine_ten[1] = points.value(forKey: "best") as! Int
                                self.nine_ten[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "9_11") as? NSDictionary{
                                self.nine_eleven[1] = points.value(forKey: "best") as! Int
                                self.nine_eleven[2] = points.value(forKey: "worst") as! Int
                            }
                            if let points = json.value(forKey: "9_12") as? NSDictionary{
                                self.nine_twelve[1] = points.value(forKey: "best") as! Int
                                self.nine_twelve[2] = points.value(forKey: "worst") as! Int
                            }
                        }
                        else{
                            let alertController = UIAlertController(title: "Кешіріңіз", message: "Сервер әзірше жұмыс істемейді!", preferredStyle: .alert)
                            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                                UIAlertAction in
                                let mainTabController = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
                                
                                mainTabController.selectedViewController = mainTabController.viewControllers?[0]
                                
                                self.present(mainTabController, animated: true, completion: nil)
                            }
                            alertController.addAction(okAction)
                            self.present(alertController, animated: true, completion: nil)
                        }
                    }
                }
                catch{
                    let alertController = UIAlertController(title: "Кешіріңіз", message: "Сервер әзірше жұмыс істемейді!", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                        UIAlertAction in
                        let mainTabController = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
                        
                        mainTabController.selectedViewController = mainTabController.viewControllers?[0]
                        
                        self.present(mainTabController, animated: true, completion: nil)
                    }
                    alertController.addAction(okAction)
                    self.present(alertController, animated: true, completion: nil)
                }
            })
            task.resume()
        }
        else {
            let alert = UIAlertController(title: "Кешіріңіз", message: "Интернет байланысы дұрыс емес!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }

        MyTable.reloadData()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
