import Foundation
import UIKit

class ProfileEditing: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var ScrollV: UIScrollView!
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Lastname: UITextField!
    @IBOutlet weak var PhoneNumber: UITextField!
    @IBOutlet weak var Birthday: UITextField!
    @IBOutlet weak var School: UITextField!
    @IBOutlet weak var Class: UITextField!
    @IBOutlet weak var IIN: UITextField!
    
    @IBOutlet weak var OldPassword: UITextField!
    @IBOutlet weak var NewPassword: UITextField!
    @IBOutlet weak var ReNewPassword: UITextField!
    
    @IBOutlet weak var IAgreeButtonOutlet: UIButton!
    
    @IBAction func TermsOfAgreement(_ sender: UIButton) {
        guard let url = URL(string: "http://www.pyvela.kz") else {
            return
        }
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
    
    @IBAction func IAgreeButton(_ sender: UIButton) {
        self.IAgreeButtonOutlet.isEnabled = false
        self.IAgreeButtonOutlet.borderColor = UIColor.black
        if Reachability.isConnectedToNetwork() == true {
            let defaults = UserDefaults.standard
            let url = URL(string: "http://185.111.107.111/api/agreement1.php")!
            var request = URLRequest(url: url)
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            request.httpMethod = "POST"
            let postString = "user_id=" + defaults.string(forKey: "ID")! + "&check=1"
            request.httpBody = postString.data(using: .utf8)
            //Get response
            let task = URLSession.shared.dataTask(with: request, completionHandler:{(data, response, error) in
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: AnyObject]
                    let status = json["status"]!
//                    print(json)
                    DispatchQueue.main.async {
                        if (status as! String == "true"){
                            self.IAgreeButtonOutlet.isEnabled = false
                            self.IAgreeButtonOutlet.borderColor = UIColor.black
                            self.IAgreeButtonOutlet.setTitleColor(UIColor.darkGray, for: .normal)
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
        else {
            let alert = UIAlertController(title: "Кешіріңіз", message: "Интернет байланысы дұрыс емес!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        Name.text = defaults.string(forKey: "Name")!
        Lastname.text = defaults.string(forKey: "Lastname")!
        PhoneNumber.text = defaults.string(forKey: "Phone_Num")!
        IIN.text = defaults.string(forKey: "IIN")!
        Birthday.text = defaults.string(forKey: "Birthdate")!
        School.text = defaults.string(forKey: "School")!
        Class.text = defaults.string(forKey: "Studyyear")!
        
        if Reachability.isConnectedToNetwork() == true {
            let defaults = UserDefaults.standard
            let url = URL(string: "http://185.111.107.111/api/agreement1.php")!
            var request = URLRequest(url: url)
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            request.httpMethod = "POST"
            let postString = "user_id=" + defaults.string(forKey: "ID")! + "&check=1"
            request.httpBody = postString.data(using: .utf8)
            //Get response
            let task = URLSession.shared.dataTask(with: request, completionHandler:{(data, response, error) in
                DispatchQueue.main.async {
                    do{
                        let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: AnyObject]
                        let status = json["status"]!
                        DispatchQueue.main.async {
                            if (status as! String == "true"){
                                self.IAgreeButtonOutlet.isEnabled = false
                                self.IAgreeButtonOutlet.borderColor = UIColor.black
                                self.IAgreeButtonOutlet.setTitleColor(UIColor.darkGray, for: .normal)
                            }
                        }
                    }
                    catch{
                        let alert = UIAlertController(title: "Кешіріңіз", message: "Сервер әзірше жұмыс істемейді!", preferredStyle: UIAlertController.Style.alert)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                    }
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
    
    @IBAction func SaveChanges(_ sender: UIButton) {
        var isDigit = 1
        let Nums = ["1","2","3","4","5","6","7","8","9","0","10","11"]
        for i in Name.text!{
            if Nums.contains(String(i)){
                isDigit = 0
            }
        }
        for i in Lastname.text!{
            if Nums.contains(String(i)){
                isDigit = 0
            }
        }
        if PhoneNumber.text![0] == "8" && PhoneNumber.text![1] == "7" && PhoneNumber.text!.count == 11 && ((PhoneNumber.text![2] == "0" || PhoneNumber.text![2] == "4" || PhoneNumber.text![2] == "7") && (PhoneNumber.text![3] == "7" || PhoneNumber.text![3] == "8" || PhoneNumber.text![3] == "0" || PhoneNumber.text![3] == "1" || PhoneNumber.text![3] == "2" || PhoneNumber.text![3] == "6" || PhoneNumber.text![3] == "5")){
            if isDigit == 1{
                if IIN.text!.count == 12{
                    if Nums.contains(Class.text!){
                        if Birthday.text!.count == 10 && (Birthday.text![8] == "0" || Birthday.text![8] == "1" || Birthday.text![8] == "2" || Birthday.text![8] == "3") && Birthday.text![4] == "-" && Birthday.text![7] == "-"{
                            SavingChangesFunction()
                        }
                        else{
                            let alert = UIAlertController(title: "Ескертпе!", message: "Туған күн 'жжжж-аа-кк' форматында болуы тиіс. Мысалы: \n 2001-01-31 ", preferredStyle: UIAlertController.Style.alert)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                        }
                    }
                    else{
                        let alert = UIAlertController(title: "Кешіріңіз", message: "Қазақстандық мектепте сынып 12-ден аспайды емес пе?!", preferredStyle: UIAlertController.Style.alert)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                    }
                }
                else{
                    let alert = UIAlertController(title: "Кешіріңіз", message: "ЖСН дұрыс форматта емес!", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
            else{
                let alert = UIAlertController(title: "Кешіріңіз", message: "Есіміңізде, тегіңізде сан бар ма?!", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
        else{
            let alert = UIAlertController(title: "Кешіріңіз", message: "Нөміріңіз дұрыс форматта емес!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func SavingChangesFunction(){
        if Reachability.isConnectedToNetwork() == true {
            let defaults = UserDefaults.standard
            let ID = defaults.string(forKey: "ID")
            let url = URL(string: "http://185.111.107.111/api/update.php")!
            var request = URLRequest(url: url)
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            request.httpMethod = "POST"
            let postString = "name="+Name.text!+"&lname="+Lastname.text!+"&iin="+IIN.text!+"&phone_num="+PhoneNumber.text!+"&id="+ID!+"&birthdate="+Birthday.text!+"&stadyyear="+Class.text!+"&school="+School.text!
            request.httpBody = postString.data(using: .utf8)
            //Get response
            let task = URLSession.shared.dataTask(with: request, completionHandler:{(data, response, error) in
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: AnyObject]
                    print(json)
                    let status = json["status"]!
                    DispatchQueue.main.async {
                        if status as! String == "true"
                        {
                            defaults.set(self.Name.text!, forKey: "Name")
                            defaults.set(self.Lastname.text!, forKey: "Lastname")
                            defaults.set(self.IIN.text!, forKey: "IIN")
                            defaults.set(self.PhoneNumber.text!, forKey: "Phone_Num")
                            defaults.set(self.Birthday.text!, forKey: "Birthdate")
                            defaults.set(self.Class.text!, forKey: "Studyyear")
                            
                            let alert = UIAlertController(title: "Керемет", message: "Өзгерістер сақталды!", preferredStyle: UIAlertController.Style.alert)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                        }
                        else
                        {
                            let alert = UIAlertController(title: "Кешіріңіз", message: "Өзгерістер дұрыс емес!", preferredStyle: UIAlertController.Style.alert)
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
        else {
            let alert = UIAlertController(title: "Кешіріңіз", message: "Интернет байланысы дұрыс емес!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func ChangePassword(_ sender: UIButton) {
        if Reachability.isConnectedToNetwork() == true {
            if (NewPassword.text == ReNewPassword.text){
                let defaults = UserDefaults.standard
                let Login = defaults.string(forKey: "Login")
                let url = URL(string: "http://185.111.107.111/api/newpassword.php")!
                var request = URLRequest(url: url)
                request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
                request.httpMethod = "POST"
                let postString = "login="+Login!+"&password="+OldPassword.text!+"&newpassword="+NewPassword.text!
                request.httpBody = postString.data(using: .utf8)
                //Get response
                let task = URLSession.shared.dataTask(with: request, completionHandler:{(data, response, error) in
                    do{
                        let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: AnyObject]
                        let status = json["status"]!
                        DispatchQueue.main.async {
                            if status as! String == "true"
                            {
                                let alert = UIAlertController(title: "Керемет", message: "Өзгерістер сақталды!", preferredStyle: UIAlertController.Style.alert)
                                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                                self.present(alert, animated: true, completion: nil)
                            }
                            else
                            {
                                let alert = UIAlertController(title: "Кешіріңіз", message: "Өзгерістер дұрыс емес!", preferredStyle: UIAlertController.Style.alert)
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
                let alert = UIAlertController(title: "Кешіріңіз", message: "Жаңа құпия сөз жолдары ұқсамайды!", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
        else {
            let alert = UIAlertController(title: "Кешіріңіз", message: "Интернет байланысы дұрыс емес!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        PhoneNumber.resignFirstResponder()
        IIN.resignFirstResponder()
        Birthday.resignFirstResponder()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == Name){
            ScrollV.setContentOffset(CGPoint(x: 0, y: 250), animated: true)
        }
        if (textField == Lastname){
            ScrollV.setContentOffset(CGPoint(x: 0, y: 250), animated: true)
        }
        if (textField == PhoneNumber){
            ScrollV.setContentOffset(CGPoint(x: 0, y: 250), animated: true)
        }
        if (textField == OldPassword){
            ScrollV.setContentOffset(CGPoint(x: 0, y: 250), animated: true)
        }
        if (textField == NewPassword){
            ScrollV.setContentOffset(CGPoint(x: 0, y: 250), animated: true)
        }
        if (textField == ReNewPassword){
            ScrollV.setContentOffset(CGPoint(x: 0, y: 250), animated: true)
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        ScrollV.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
}


