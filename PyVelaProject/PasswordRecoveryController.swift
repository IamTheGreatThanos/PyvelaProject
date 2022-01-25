import Foundation
import UIKit

class PasswordRecoveryController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var LoginTextField: UITextField!
    @IBOutlet weak var ReLoginTextField: UITextField!
    @IBOutlet weak var ScrollView: UIScrollView!
    
    
    @IBAction func SendMessageButton_Tapped(_ sender: UIButton) {
        if (LoginTextField.text == ReLoginTextField.text){
            if Reachability.isConnectedToNetwork() == true {
                let url = URL(string: "http://185.111.107.111/api/forgetpassword.php")!
                var request = URLRequest(url: url)
                request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
                request.httpMethod = "POST"
                let postString = "login="+LoginTextField.text!
                request.httpBody = postString.data(using: .utf8)
                //Get response
                let task = URLSession.shared.dataTask(with: request, completionHandler:{(data, response, error) in
                    do{
                        let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: AnyObject]
                        let status = json["status"]!
                        DispatchQueue.main.async {
                            if status as! String == "true"
                            {
                                let alert = UIAlertController(title: "Керемет!", message: "Хат жіберілді!", preferredStyle: UIAlertController.Style.alert)
                                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                                self.present(alert, animated: true, completion: nil)
                            }
                            else
                            {
                                let alert = UIAlertController(title: "Кешіріңіз", message: "Логин дұрыс емес!", preferredStyle: UIAlertController.Style.alert)
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
        else
        {
            let alert = UIAlertController(title: "Кешіріңіз", message: "Еңгізілген жолдар ұқсамайды!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        ScrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
    
    
}
