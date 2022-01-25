import UIKit

class ProfileController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    @IBOutlet weak var LastAndFirst_Name: UILabel!
    @IBOutlet weak var Information_Login: UILabel!
    @IBOutlet weak var Information_Num: UILabel!
    @IBOutlet weak var Information_IIN: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    
    override func viewDidLoad() {
        
        self.profileImageView.layer.cornerRadius = 55;
        self.profileImageView.clipsToBounds = true;
        
        if Reachability.isConnectedToNetwork() == true {
            let defaults = UserDefaults.standard
            let url = URL(string: "http://185.111.107.111/api/balans_bonus.php")!
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
                    let msg = json["msg"]!
                    DispatchQueue.main.async {
                        if (status as! String == "true"){
                            defaults.set(msg["balans"] as! String, forKey: "Money")
                            defaults.set(msg["bonus"] as! String, forKey: "Bonus")
                        }
                        else{
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
        else {
            let alert = UIAlertController(title: "Кешіріңіз", message: "Интернет байланысы дұрыс емес!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        
        let defaults = UserDefaults.standard
        LastAndFirst_Name.text = defaults.string(forKey: "Lastname")! + " " + defaults.string(forKey: "Name")!
        Information_Login.text = defaults.string(forKey: "Login")!
        Information_Num.text = defaults.string(forKey: "Phone_Num")! + " "
        Information_IIN.text = defaults.string(forKey: "IIN")! + " "
        
    }
    
    
    
    @IBAction func ExitButton_Tapped(_ sender: UIButton) {
        let actionSheetController: UIAlertController = UIAlertController(title: "Ескерту!", message: "Мұрағаттағы тесттер өшіріледі. Шыққыңыз келеді ме?", preferredStyle: .actionSheet)
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "Артқа", style: .cancel) { action -> Void in
            //Just dismiss the action sheet
        }
        actionSheetController.addAction(cancelAction)
        
        let takePictureAction: UIAlertAction = UIAlertAction(title: "Иә!", style: .default) { action -> Void in
            
            let defaults = UserDefaults.standard
            let domain = Bundle.main.bundleIdentifier!
            defaults.removePersistentDomain(forName: domain)
            defaults.synchronize()
            defaults.set(false, forKey: "Log_in")
            
            let mainController = self.storyboard?.instantiateViewController(withIdentifier: "Log_In") as! Log_In
            self.present(mainController, animated: true, completion: nil)
        }
        actionSheetController.addAction(takePictureAction)
        
        self.present(actionSheetController, animated: true, completion: nil)
    }
    
    @IBAction func ChangePhotoButton_Tapped(_ sender: UIButton) {
//        let image = UIImagePickerController()
//        image.delegate = self
//        image.sourceType = UIImagePickerController.SourceType.photoLibrary
//        image.allowsEditing = false
//        self.present(image, animated: true)
//        {
//        }
    }
    
    
    private func imagePickerController(_ picker: UIImagePickerController, didFinishPickingWithInfo info: [String : Any]){
        let theInfo:NSDictionary = info as NSDictionary
        let img:UIImage = theInfo.object(forKey: "UIImagePickerControllerOriginalImage") as! UIImage
        profileImageView.image = img
        self.dismiss(animated: true, completion: nil)
    }
    
}
