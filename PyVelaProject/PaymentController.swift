import Foundation
import UIKit

class PaymentController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var MyTable: UITableView!
    
    var Letters = [] as [String]
    var Use_by = [] as [String]
    var Date = [] as [String]
    var Amount = [] as [String]
    var Subjects = [] as [String]
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        MyTable.reloadData()
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (Letters.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PaymentControllerTableViewCell

        if Use_by[indexPath.row] == "ҰБТ" || Use_by[indexPath.row] == "Пән бойынша"{
            cell.AmountLabel.textColor = UIColor.red
        }
        else if Use_by[indexPath.row] == "Балансқа"{
            cell.AmountLabel.textColor = UIColor(red: 0.3529, green: 0.8196, blue: 0, alpha: 1)
        }
        else{
            cell.AmountLabel.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
        }
        cell.NumLabel.text = Letters[indexPath.row]
        cell.OperatorLabel.text = Use_by[indexPath.row]
        cell.DataLabel.text = Date[indexPath.row]
        cell.AmountLabel.text = Amount[indexPath.row]
        cell.ProfileSubjectsLabel.text = Subjects[indexPath.row]

        return(cell)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if Reachability.isConnectedToNetwork() == true {
            let defaults = UserDefaults.standard
            let url = URL(string: "http://185.111.107.111/api/pay_history.php")!
            var request = URLRequest(url: url)
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            request.httpMethod = "POST"
            let postString = "user_id=" + defaults.string(forKey: "ID")!
            request.httpBody = postString.data(using: .utf8)
            //Get response
            let task = URLSession.shared.dataTask(with: request, completionHandler:{(data, response, error) in
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: AnyObject]
                    let status = json["status"]!
                    let msg = json["msg"] as! NSDictionary
                    DispatchQueue.main.async {
                        if (status as! String == "true"){
                            for history_line in msg{
                                let info  = history_line.value as! NSDictionary
//                                print(info)
//                                print("___________________________")
                                if ((info["type"] as! String) == "out"){
                                    if ((info["subject2_id"] as! String) == "-1"){
                                        self.Amount.append("-100")
                                        self.Date.append(info["dateupdate"] as! String)
                                        self.Use_by.append("Пән бойынша")
                                        self.Letters.append("П")
                                        if info["subject1_id"] as! String == "1"{
                                            self.Subjects.append("Қазақстан тарихы")
                                        }
                                        else if info["subject1_id"] as! String == "2"{
                                            self.Subjects.append("Оқу сауаттылығы")
                                        }
                                        else if info["subject1_id"] as! String == "3"{
                                            self.Subjects.append("Математикалық сауаттылық")
                                        }
                                        else if info["subject1_id"] as! String == "4"{
                                            self.Subjects.append("Дүние жүзі тарихы")
                                        }
                                        else if info["subject1_id"] as! String == "5"{
                                            self.Subjects.append("Адам. Қоғам. Құқық.")
                                        }
                                        else if info["subject1_id"] as! String == "6"{
                                            self.Subjects.append("Қазақ тілі")
                                        }
                                        else if info["subject1_id"] as! String == "7"{
                                            self.Subjects.append("Қазақ әдебиеті")
                                        }
                                        else if info["subject1_id"] as! String == "8"{
                                            self.Subjects.append("Химия")
                                        }
                                        else if info["subject1_id"] as! String == "9"{
                                            self.Subjects.append("География")
                                        }
                                        else if info["subject1_id"] as! String == "10"{
                                            self.Subjects.append("Ағылшын тілі")
                                        }
                                        else if info["subject1_id"] as! String == "11"{
                                            self.Subjects.append("Биология")
                                        }
                                        else if info["subject1_id"] as! String == "12"{
                                            self.Subjects.append("Математика")
                                        }
                                        else if info["subject1_id"] as! String == "13"{
                                            self.Subjects.append("Физика")
                                        }
                                        else if info["subject1_id"] as! String == "14"{
                                            self.Subjects.append("Орыс тілі")
                                        }
                                        else if info["subject1_id"] as! String == "15"{
                                            self.Subjects.append("Орыс әдебиеті")
                                        }
                                        else{
                                            self.Subjects.append("Пән")
                                        }
                                    }
                                    else{
                                        self.Amount.append("-200")
                                        self.Date.append(info["dateupdate"] as! String)
                                        self.Use_by.append("ҰБТ")
                                        self.Letters.append("Ұ")
                                        if info["subject1_id"] as! String == "12" && info["subject2_id"] as! String == "13"{
                                            self.Subjects.append("Математика - Физика")
                                        }
                                        else if info["subject1_id"] as! String == "9" && info["subject2_id"] as! String == "12"{
                                            self.Subjects.append("Математика - География")
                                        }
                                        else if info["subject1_id"] as! String == "4" && info["subject2_id"] as! String == "9"{
                                            self.Subjects.append("Дүние жүзі тарихы - География")
                                        }
                                        else if (info["subject1_id"] as! String == "8" && info["subject2_id"] as! String == "11") || (info["subject1_id"] as! String == "11" && info["subject2_id"] as! String == "8"){
                                            self.Subjects.append("Химия - Биология")
                                        }
                                        else if (info["subject1_id"] as! String == "11" && info["subject2_id"] as! String == "9") || (info["subject1_id"] as! String == "9" && info["subject2_id"] as! String == "11"){
                                            self.Subjects.append("География - Биология")
                                        }
                                        else if (info["subject1_id"] as! String == "4" && info["subject2_id"] as! String == "10") || (info["subject1_id"] as! String == "10" && info["subject2_id"] as! String == "4"){
                                            self.Subjects.append("Ағылшын тілі - Дүние жүзі тарихы")
                                        }
                                        else if (info["subject1_id"] as! String == "9" && info["subject2_id"] as! String == "10") || (info["subject1_id"] as! String == "9" && info["subject2_id"] as! String == "10"){
                                            self.Subjects.append("Ағылшын тілі - География")
                                        }
                                        else if (info["subject1_id"] as! String == "7" && info["subject2_id"] as! String == "6") || (info["subject1_id"] as! String == "6" && info["subject2_id"] as! String == "7"){
                                            self.Subjects.append("Қазақ тілі - Қазақ әдебиеті")
                                        }
                                        else if (info["subject1_id"] as! String == "5" && info["subject2_id"] as! String == "4") || (info["subject1_id"] as! String == "4" && info["subject2_id"] as! String == "5"){
                                            self.Subjects.append("Дүние жүзі тарихы - Адам. Қоғам. Құқық.")
                                        }
                                        else if (info["subject1_id"] as! String == "8" && info["subject2_id"] as! String == "13") || (info["subject1_id"] as! String == "13" && info["subject2_id"] as! String == "8"){
                                            self.Subjects.append("Химия - Физика")
                                        }
                                        else if (info["subject1_id"] as! String == "14" && info["subject2_id"] as! String == "15") || (info["subject1_id"] as! String == "15" && info["subject2_id"] as! String == "14"){
                                            self.Subjects.append("Орыс тілі - Орыс әдебиеті")
                                        }
                                        else{
                                            self.Subjects.append("ҰБТ")
                                        }
                                    }
                                }
                                else if ((info["type"] as! String) == "in_bonus") {
                                    self.Amount.append("+" + (info["sum"] as! String))
                                    self.Date.append(info["dateupdate"] as! String)
                                    self.Letters.append("B")
                                    self.Use_by.append("Бонусқа")
                                    self.Subjects.append("")
                                }
                                else{
                                    self.Amount.append("+" + (info["sum"] as! String))
                                    self.Date.append(info["dateupdate"] as! String)
                                    self.Letters.append("Б")
                                    self.Use_by.append("Балансқа")
                                    self.Subjects.append("")
                                }
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
    }
}
