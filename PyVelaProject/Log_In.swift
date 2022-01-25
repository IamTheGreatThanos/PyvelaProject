import UIKit
import SystemConfiguration


class Reachability {
    class func isConnectedToNetwork() -> Bool {
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout.size(ofValue: zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)
        guard let defaultRouteReachability = withUnsafePointer(to: &zeroAddress, {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {
                zeroSockAddress in SCNetworkReachabilityCreateWithAddress(nil, zeroSockAddress)}
        } ) else {
            return false
        }
        var flags : SCNetworkReachabilityFlags = []
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags) {return false}
        let isReachable = flags.contains(.reachable)
        let needsConnection = flags.contains(.connectionRequired)
        return (isReachable && !needsConnection)
    } // isConnectedToNetwork
} // class Reachabilit`




class Log_In: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var LoginTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var LoginScrollView: UIScrollView!
    
    
    @IBAction func Sign_In_Button_Tapped(_ sender: UIButton) {
        if Reachability.isConnectedToNetwork() == true {
            let url = URL(string: "http://185.111.107.111/api/login.php")!
            var request = URLRequest(url: url)
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            request.httpMethod = "POST"
            let postString = "login="+LoginTextField.text!+"&password="+PasswordTextField.text!
            request.httpBody = postString.data(using: .utf8)
            //Get response
            let task = URLSession.shared.dataTask(with: request, completionHandler:{(data, response, error) in
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: AnyObject]
                    let status = json["status"]!
                    DispatchQueue.main.async {
                        if status as! String == "true"
                        {
                            //Save Information
                            let ProfileInformation = json["profile"]!
                            let defaults = UserDefaults.standard
                            
                            defaults.set(true, forKey: "Log_in")
                            defaults.set(ProfileInformation["name"] as! String, forKey: "Name")
                            defaults.set(ProfileInformation["lanme"] as! String, forKey: "Lastname")
                            defaults.set(ProfileInformation["login"] as! String, forKey: "Login")
                            defaults.set(ProfileInformation["phone_num"] as! String, forKey: "Phone_Num")
                            defaults.set(ProfileInformation["iin"] as! String, forKey: "IIN")
                            defaults.set(ProfileInformation["money"] as! String, forKey: "Money")
                            defaults.set(ProfileInformation["bonus"] as! String, forKey: "Bonus")
                            defaults.set(ProfileInformation["lang"] as! String, forKey: "Language")
                            defaults.set(ProfileInformation["id"] as! String, forKey: "ID")
                            defaults.set(ProfileInformation["studyyear"] as! String, forKey: "Studyyear")
                            defaults.set(ProfileInformation["school"] as! String, forKey: "School")
                            defaults.set(ProfileInformation["birthdate"] as! String, forKey: "Birthdate")

                            
                            // Check the autorithation
                            let Log_in = defaults.bool(forKey: "Log_in")
                            
                            if (Log_in == true)
                            {
                                
                                let mainTabController = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
                                mainTabController.selectedViewController = mainTabController.viewControllers?[0]
                                self.present(mainTabController, animated: true, completion: nil)
                                
                            }
                        }
                        else
                        {
                            let alert = UIAlertController(title: "Кешіріңіз", message: "Логин немесе құпия сөз дұрыс емес!", preferredStyle: UIAlertController.Style.alert)
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
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == LoginTextField){
            LoginScrollView.setContentOffset(CGPoint(x: 0, y: 250), animated: true)
        }
        if (textField == PasswordTextField){
            LoginScrollView.setContentOffset(CGPoint(x: 0, y: 250), animated: true)
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        LoginScrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if Reachability.isConnectedToNetwork() == true {
        }
        else {
            let alert = UIAlertController(title: "Кешіріңіз", message: "Интернет байланысы дұрыс емес!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let Log_in = defaults.bool(forKey: "Log_in")
        
        //Check the autorithation
        if Log_in == true
        {
            let mainTabController = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
            
            mainTabController.selectedViewController = mainTabController.viewControllers?[1]
            
            self.present(mainTabController, animated: true, completion: nil)
        }
        
        
        
    }
    
}

