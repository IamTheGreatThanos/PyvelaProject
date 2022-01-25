import UIKit

class OneSubject_Controller: UIViewController, UITableViewDataSource,UITableViewDelegate{
    
    
    
    let Subjects_EN = ["Qazaq history",
    "Reading skils",
    "Mathematical skills",
    "World history",
    "Person, Society, Low",
    "Qazaq language",
    "Qazaq literature",
    "Chemistry",
    "Geography",
    "English for filologists",
    "Biology",
    "Mathematics",
    "Physics",
    "Russian language",
    "Russian literature"]
    
    let Subjects_RU = ["История Казахстана",
                       "Грамотность чтения",
                       "Математическая грамотность",
                       "Всемирная история",
                       "Человек. Общество. Право.",
                       "Казахский язык",
                       "Казахская литература",
                       "Химия",
                       "География",
                       "Английский язык",
                       "Биология",
                       "Математика",
                       "Физика",
                       "Русский язык",
                       "Русская литература"]
    
    let Subjects_KZ = ["Қазақстан тарихы",
                       "Оқу сауаттылығы",
                       "Математикалық сауаттылық",
                       "Дүние жүзі тарихы",
                       "Адам. Қоғам. Құқық.",
                       "Қазақ тілі",
                       "Қазақ әдебиеті",
                       "Химия",
                       "География",
                       "Ағылшын тілі",
                       "Биология",
                       "Математика",
                       "Физика",
                       "Орыс тілі",
                       "Орыс әдебиеті"]


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (Subjects_KZ.count)
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
        defaults.set(String(indexPath[1]+1), forKey: "Subject_id")
//        let locale = NSLocale.preferredLanguages.first!
        
        defaults.set(Subjects_KZ[indexPath.row], forKey: "OneSubject_Name")
        
        defaults.set("true", forKey: "IsTrue?")
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
            
            let actionSheetController: UIAlertController = UIAlertController(title: "Ескерту!", message: "Тест құны 100тг! Тестті бастайсыз ба?", preferredStyle: .actionSheet)
            
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
                                                                if Int(balans)! - 100 > 0{
                                                                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                                                    let viewController = storyboard.instantiateViewController(withIdentifier :"OneSubject_TestingController")
                                                                    self.present(viewController, animated: true)
                                                                }
                                                                else if let bonus = msgArray.value(forKey: "bonus") as? String{
                                                                    if Int(bonus)! - 100 > 0{
                                                                        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                                                        let viewController = storyboard.instantiateViewController(withIdentifier :"OneSubject_TestingController")
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
//                let actionSheetController: UIAlertController = UIAlertController(title: "Внимание!", message: "Стоимость теста 100тг! Начать тест?", preferredStyle: .actionSheet)
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
//                                                if Int(balans)! - 100 > 0{
//                                                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                                                    let viewController = storyboard.instantiateViewController(withIdentifier :"OneSubject_TestingController")
//                                                    self.present(viewController, animated: true)
//                                                }
//                                                else if let bonus = msgArray.value(forKey: "bonus") as? String{
//                                                    if Int(bonus)! - 100 > 0{
//                                                        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                                                        let viewController = storyboard.instantiateViewController(withIdentifier :"OneSubject_TestingController")
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
//                        let alert = UIAlertController(title: "Sorry", message: "Internet connection failed!", preferredStyle: UIAlertController.Style.alert)
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
