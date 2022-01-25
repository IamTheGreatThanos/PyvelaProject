import Foundation
import UIKit


class SignUpController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var UsingLoginTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var RePasswordTextField: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        ScrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
    
    //Post request
    @IBAction func SignUpButton_Tapped(_ sender: UIButton) {
        if (PasswordTextField.text==RePasswordTextField.text){
            if Reachability.isConnectedToNetwork() == true {
                let url = URL(string: "http://185.111.107.111/api/register.php")!
                var request = URLRequest(url: url)
                request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
                request.httpMethod = "POST"
                let postString = "login="+UsingLoginTextField.text!+"&password="+PasswordTextField.text!
                request.httpBody = postString.data(using: .utf8)
                //Get response
                let task = URLSession.shared.dataTask(with: request, completionHandler:{(data, response, error) in
                    do{
                        let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: AnyObject]
                        let status = json["status"]!
                        DispatchQueue.main.async {
                            if status as! String == "true"
                            {
                                let alertController = UIAlertController(title: "Керемет!", message: "Хат жіберілді, почтаңызды растаңыз!", preferredStyle: .alert)
                                let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                                    UIAlertAction in
                                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                    let viewController = storyboard.instantiateViewController(withIdentifier :"Log_In")
                                    self.present(viewController, animated: true)
                                }
                                alertController.addAction(okAction)
                                self.present(alertController, animated: true, completion: nil)
                            }
                            else
                            {
                                let alert = UIAlertController(title: "Sorry", message: "Логин немесе құпия сөз дұрыс форматта емес!", preferredStyle: UIAlertController.Style.alert)
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
            let alert = UIAlertController(title: "Кешіріңіз", message: "Құпия сөз бірдей емес!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
