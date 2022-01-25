import UIKit

class UNT_Controller: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let Subjects_EN = ["Mathematics - Physics",
                    "Mathematics - Geography",
                    "World history - Geography",
                    "Chemistry - Biology",
                    "Geography - Biology",
                    "English for filologists - World history",
                    "English for filologists - Geography",
                    "Qazaq language - Qazaq literature",
                    "World history - Person, Society, Low",
                    "Chemistry - Physics",
                    "Russian language - Russian literature"]
    
    let Subjects_RU = ["Математика - Физика",
                       "Математика - География",
                       "Всемирная история - География",
                       "Химия - Биология",
                       "География - Биология",
                       "Английский язык - Всемирная история",
                       "Английский язык - География",
                       "Казахский язык - Казахская литература",
                       "Всемирная история - Человек. Общество. Право.",
                       "Химия - Физика",
                       "Русский язык - Русская литература"]
    
    let Subjects_KZ = ["Математика - Физика",
                       "Математика - География",
                       "Дүние жүзі тарихы - География",
                       "Химия - Биология",
                       "География - Биология",
                       "Ағылшын тілі - Дүние жүзі тарихы",
                       "Ағылшын тілі - География",
                       "Қазақ тілі - Қазақ әдебиеті",
                       "Дүние жүзі тарихы - Адам. Қоғам. Құқық.",
                       "Химия - Физика",
                       "Орыс тілі - Орыс әдебиеті"]
    
    var Check_Num = false
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (Subjects_EN.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        
        
        let locale = NSLocale.preferredLanguages.first!
        if locale.hasPrefix("kz") {
            cell.textLabel?.text = Subjects_KZ[indexPath.row]
        }
        else if locale.hasPrefix("ru"){
            cell.textLabel?.text = Subjects_RU[indexPath.row]
        }
        else{
            cell.textLabel?.text = Subjects_EN[indexPath.row]
        }
        
        
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.checkmark
        
        
        let defaults = UserDefaults.standard
        defaults.set("true", forKey: "IsTrue?")

        
        if indexPath[1]+1 == 1{
            defaults.set("12", forKey: "Subject1_id")
            defaults.set("13", forKey: "Subject2_id")
        }
        else if indexPath[1]+1 == 2{
            defaults.set("12", forKey: "Subject1_id")
            defaults.set("9", forKey: "Subject2_id")
        }
        else if indexPath[1]+1 == 3{
            defaults.set("4", forKey: "Subject1_id")
            defaults.set("9", forKey: "Subject2_id")
        }
        else if indexPath[1]+1 == 4{
            defaults.set("8", forKey: "Subject1_id")
            defaults.set("11", forKey: "Subject2_id")
        }
        else if indexPath[1]+1 == 5{
            defaults.set("9", forKey: "Subject1_id")
            defaults.set("11", forKey: "Subject2_id")
        }
        else if indexPath[1]+1 == 6{
            defaults.set("10", forKey: "Subject1_id")
            defaults.set("4", forKey: "Subject2_id")
        }
        else if indexPath[1]+1 == 7{
            defaults.set("10", forKey: "Subject1_id")
            defaults.set("9", forKey: "Subject2_id")
        }
        else if indexPath[1]+1 == 8{
            defaults.set("6", forKey: "Subject1_id")
            defaults.set("7", forKey: "Subject2_id")
        }
        else if indexPath[1]+1 == 9{
            defaults.set("4", forKey: "Subject1_id")
            defaults.set("5", forKey: "Subject2_id")
        }
        else if indexPath[1]+1 == 10{
            defaults.set("8", forKey: "Subject1_id")
            defaults.set("13", forKey: "Subject2_id")
        }
        else if indexPath[1]+1 == 11{
            defaults.set("14", forKey: "Subject1_id")
            defaults.set("15", forKey: "Subject2_id")
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.none
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        defaults.set("false", forKey: "IsTrue?")
    }
    
    @IBAction func CheckButton_Tapped(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        if defaults.string(forKey: "IsTrue?") == "true"{
//            let locale = NSLocale.preferredLanguages.first!
            
            let actionSheetController: UIAlertController = UIAlertController(title: "Ескерту!", message: "Тест құны 200тг! Тестті бастайсыз ба?", preferredStyle: .actionSheet)
            
            let cancelAction: UIAlertAction = UIAlertAction(title: "Артқа", style: .cancel) { action -> Void in
                //Just dismiss the action sheet
            }
            actionSheetController.addAction(cancelAction)
            
            let takePictureAction: UIAlertAction = UIAlertAction(title: "Иә!", style: .default) { action -> Void in
                if Reachability.isConnectedToNetwork() == true {
                    let url = URL(string: "http://185.111.107.111/api/agreement1.php")!
                    var request = URLRequest(url: url)
                    request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
                    request.httpMethod = "POST"
                    let postString = "user_id=" + defaults.string(forKey: "ID")! + "&check=1"
                    request.httpBody = postString.data(using: .utf8)
                    //Get response
                    let task = URLSession.shared.dataTask(with: request, completionHandler:{(data, response, error) in
                        do{
                            let json = try JSONSerialization.jsonObject(with: data!, options: []) as! NSDictionary
                            let status = json.value(forKey: "status") as! NSString
//                            print(status)
                            DispatchQueue.main.async {
                                if (status as String == "true" && defaults.string(forKey: "IIN") != "" && defaults.string(forKey: "Phone_Num") != ""){
                                    if defaults.array(forKey: "TerminatedTest") != nil{
                                        let alert = UIAlertController(title: "Кешіріңіз", message: "Бітпеген тестті аяқтауыңыз керек! \n\nМұрағатқа кіріңіз...", preferredStyle: UIAlertController.Style.alert)
                                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                                        self.present(alert, animated: true, completion: nil)
                                    }
                                    else{
                                        let url = URL(string: "http://185.111.107.111/api/balans_bonus.php")!
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
                                                DispatchQueue.main.async {
                                                    if status as! String == "true"
                                                    {
                                                        if let msgArray = json.value(forKey: "msg") as? NSDictionary{
                                                            if let balans = msgArray.value(forKey: "balans") as? String{
                                                                if Int(balans)! - 200 > 0{
                                                                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                                                    let viewController = storyboard.instantiateViewController(withIdentifier :"UNT_TestingController")
                                                                    self.present(viewController, animated: true)
                                                                }
                                                                else if let bonus = msgArray.value(forKey: "bonus") as? String{
                                                                    if Int(bonus)! - 200 > 0{
                                                                        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                                                        let viewController = storyboard.instantiateViewController(withIdentifier :"UNT_TestingController")
                                                                        self.present(viewController, animated: true)
                                                                    }
                                                                }
                                                            }
                                                            else
                                                            {
                                                                let alert = UIAlertController(title: "Кешіріңіз", message: "Сіздің ақшаңыз жеткіліксіз!", preferredStyle: UIAlertController.Style.alert)
                                                                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                                                                self.present(alert, animated: true, completion: nil)
                                                            }
                                                        }
                                                    }
                                                    else
                                                    {
                                                        let alert = UIAlertController(title: "Кешіріңіз", message: "Сервер әзірше жұмыс істемейді!", preferredStyle: UIAlertController.Style.alert)
                                                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                                                        self.present(alert, animated: true, completion: nil)
                                                    }
                                                    
                                                }
                                            }
                                            catch{
                                                let alert = UIAlertController(title: "Кешіріңіз", message: "Сервер әзірше жұмыс істемейді!", preferredStyle: UIAlertController.Style.alert)
                                                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                                                self.present(alert, animated: true, completion: nil)
                                            }
                                        })
                                        task.resume()
                                    }
                                }
                                else{
                                    let alert = UIAlertController(title: "Кешіріңіз", message: "Профильдегі ЖСН және нөміріңіз туралы мәліметті толтырыңыз және келісім шартпен келісуіңіз керек! \n\nПрофиль -> Өзгерту", preferredStyle: UIAlertController.Style.alert)
                                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                                    self.present(alert, animated: true, completion: nil)
                                }
                            }
                        }
                        catch{
                            let alert = UIAlertController(title: "Кешіріңіз", message: "Сервер әзірше жұмыс істемейді!", preferredStyle: UIAlertController.Style.alert)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                        }
                    })
                    task.resume()
                }
                else
                {
                    let alert = UIAlertController(title: "Кешіріңіз", message: "Интернет байланысы дұрыс емес!", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
            actionSheetController.addAction(takePictureAction)
            
            self.present(actionSheetController, animated: true, completion: nil)
            
//            else if locale.hasPrefix("ru"){
//                let actionSheetController: UIAlertController = UIAlertController(title: "Внимание!", message: "Стоимость теста 200тг! Начать тест?", preferredStyle: .actionSheet)
//
//                let cancelAction: UIAlertAction = UIAlertAction(title: "Отмена", style: .cancel) { action -> Void in
//                    //Just dismiss the action sheet
//                }
//                actionSheetController.addAction(cancelAction)
//
//                let takePictureAction: UIAlertAction = UIAlertAction(title: "Да!", style: .default) { action -> Void in
//                    if Reachability.isConnectedToNetwork() == true {
//                        let url = URL(string: "http://185.111.107.111/api/balans_bonus.php")!
//                        var request = URLRequest(url: url)
//                        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//                        request.httpMethod = "POST"
//                        let postString = "user_id=" + defaults.string(forKey: "ID")!
//                        request.httpBody = postString.data(using: .utf8)
//                        //Get response
//                        let task = URLSession.shared.dataTask(with: request, completionHandler:{(data, response, error) in
//                            do{
//                                let json = try JSONSerialization.jsonObject(with: data!, options: []) as! NSDictionary
//                                let status = json["status"]!
//                                DispatchQueue.main.async {
//                                    if status as! String == "true"
//                                    {
//                                        if let msgArray = json.value(forKey: "msg") as? NSDictionary{
//                                            if let balans = msgArray.value(forKey: "balans") as? String{
//                                                if Int(balans)! - 200 > 0{
//                                                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                                                    let viewController = storyboard.instantiateViewController(withIdentifier :"UNT_TestingController")
//                                                    self.present(viewController, animated: true)
//                                                }
//                                                else if let bonus = msgArray.value(forKey: "bonus") as? String{
//                                                    if Int(bonus)! - 200 > 0{
//                                                        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                                                        let viewController = storyboard.instantiateViewController(withIdentifier :"UNT_TestingController")
//                                                        self.present(viewController, animated: true)
//                                                    }
//                                                }
//                                            }
//                                            else
//                                            {
//                                                let alert = UIAlertController(title: "Извините", message: "У вас недостаточно денег!", preferredStyle: UIAlertController.Style.alert)
//                                                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//                                                self.present(alert, animated: true, completion: nil)
//                                            }
//                                        }
//                                    }
//                                    else
//                                    {
//                                        let alert = UIAlertController(title: "Извините", message: "Сервер временно недоступен!", preferredStyle: UIAlertController.Style.alert)
//                                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//                                        self.present(alert, animated: true, completion: nil)
//                                    }
//
//                                }
//
//                            }
//                            catch{
//                                let alert = UIAlertController(title: "Извините", message: "Сервер временно недоступен!", preferredStyle: UIAlertController.Style.alert)
//                                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//                                self.present(alert, animated: true, completion: nil)
//                            }
//                        })
//                        task.resume()
//                    }
//                    else
//                    {
//                        let alert = UIAlertController(title: "Кешіріңіз", message: "Интернет байланысы дұрыс емес!", preferredStyle: UIAlertController.Style.alert)
//                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//                        self.present(alert, animated: true, completion: nil)
//                    }
//                }
//                actionSheetController.addAction(takePictureAction)
//
//                self.present(actionSheetController, animated: true, completion: nil)
//            }
            
        }
        else
        {
//            let locale = NSLocale.preferredLanguages.first!
        
            let alert = UIAlertController(title: "Назар аудар!", message: "Өтінемін, бір комбинация таңдаңыз...", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}
