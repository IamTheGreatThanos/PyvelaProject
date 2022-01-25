import Foundation
import UIKit
import WebKit

class LookPass_Subject: UIViewController {
    @IBOutlet weak var SubjectName_Label: UILabel!
    @IBOutlet weak var Q_WebView: WKWebView!
    @IBOutlet weak var NumOfQ_Label: UILabel!
    
    @IBOutlet weak var A_Label: UILabel!
    @IBOutlet weak var B_Label: UILabel!
    @IBOutlet weak var C_Label: UILabel!
    @IBOutlet weak var D_Label: UILabel!
    @IBOutlet weak var E_Label: UILabel!
    @IBOutlet weak var F_Label: UILabel!
    @IBOutlet weak var G_Label: UILabel!
    @IBOutlet weak var H_Label: UILabel!
    
    @IBOutlet weak var A_WebView: WKWebView!
    @IBOutlet weak var B_WebView: WKWebView!
    @IBOutlet weak var C_WebView: WKWebView!
    @IBOutlet weak var D_WebView: WKWebView!
    @IBOutlet weak var E_WebView: WKWebView!
    @IBOutlet weak var F_WebView: WKWebView!
    @IBOutlet weak var G_WebView: WKWebView!
    @IBOutlet weak var H_WebView: WKWebView!
    
    var Questions = [] as [String]
    var Questions21_30 = [] as [String]
    var RightAnswers = [String]()
    var RightAnswers21_30 = [[String]]()
    var Num_Of_Right_Ans = [String]()
    var count_quest = 0
    var check = 0
    var loop_ind = 0
    var Num_of_Right = ""

    
    var Subject_Name = ""
    
    var ThisTest: NSDictionary = [:]
    
    var A_Array = [String]()
    var B_Array = [String]()
    var C_Array = [String]()
    var D_Array = [String]()
    var E_Array = [String]()
    var Answers21_30 = [[String]]()
    
    var Picks21_30 = [[String]]()
    var Picks = [String]()
    
    
    override func viewDidAppear(_ animated: Bool) {
        let alert = UIAlertController(title: "Назар аударыңыз!", message: "*Көк - сіз белгілеген дұрыс жауап. \n*Қызыл - сіз белгілеген бұрыс жауап. \n*Жасыл - дұрыс жауабы.", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 0 ... 9 {
            Answers21_30.append([])
            RightAnswers21_30.append([])
        }
        let defaults = UserDefaults.standard
        let num = Int(defaults.string(forKey: "IndexOfTest")!)!
        let countOfLines = Int(defaults.string(forKey: "CountOfLine")!)!
        self.ThisTest = defaults.value(forKey: "LastTest_" + String(countOfLines - num)) as! NSDictionary
        self.Picks = defaults.value(forKey: "LastTest_" + String(countOfLines - num) + "_Picks1_20") as! [String]
        self.Picks21_30 = defaults.value(forKey: "LastTest_" + String(countOfLines - num) + "_Picks21_30") as! [[String]]

        
        F_Label.isHidden = true
        G_Label.isHidden = true
        H_Label.isHidden = true

        F_WebView.isHidden = true
        G_WebView.isHidden = true
        H_WebView.isHidden = true
        
        if let msg = self.ThisTest.value(forKey: "msg") as? NSDictionary{
            let html_text = "<!DOCTYPE html> <html> <head> <style> div { width: 100%; word-wrap: break-word; font-size: 40px;} img{width: 15%; height: auto; max-height:170px;} </style> </head> <body> <div>"
            let html_bottom = "</div> </body> </html>"
            
            self.Subject_Name = (msg.value(forKey: "subject_name") as? String)!

            if let questions = msg.value(forKey: "questions") as? NSArray{
                for question in questions{
                    if let questionDict = question as? NSDictionary {
                        if let object = questionDict.value(forKey: "q") {
                            //adding the name to the array
                            self.Questions.append(html_text + (object as? String)! + html_bottom)
                        }
                        
                        
                        // Right answers
                        if let a = questionDict.value(forKey: "a"){
                            self.RightAnswers.append(html_text + (a as? String)! + html_bottom)
                        }
                        
                        var ThisAnswers = [String]()
                        
                        // A variant
                        if let a = questionDict.value(forKey: "a"){
                            ThisAnswers.append(html_text + (a as? String)! + html_bottom)
                        }
                        // B variant
                        if let a = questionDict.value(forKey: "b"){
                            ThisAnswers.append(html_text + (a as? String)! + html_bottom)
                        }
                        // C variant
                        if let a = questionDict.value(forKey: "c"){
                            ThisAnswers.append(html_text + (a as? String)! + html_bottom)
                        }
                        // D variant
                        if let a = questionDict.value(forKey: "d"){
                            ThisAnswers.append(html_text + (a as? String)! + html_bottom)
                        }
                        // E variant
                        if let a = questionDict.value(forKey: "e"){
                            ThisAnswers.append(html_text + (a as? String)! + html_bottom)
                        }
                        
                        ThisAnswers.shuffle()
                        
                        self.A_Array.append(ThisAnswers[0])
                        self.B_Array.append(ThisAnswers[1])
                        self.C_Array.append(ThisAnswers[2])
                        self.D_Array.append(ThisAnswers[3])
                        self.E_Array.append(ThisAnswers[4])
                    }
                }
                self.count_quest = 20
                
                Q_WebView.loadHTMLString(Questions[check], baseURL: nil)
                NumOfQ_Label.text = String(check+1) + " in " + String(count_quest)
                SubjectName_Label.text = self.Subject_Name

                A_WebView.loadHTMLString(A_Array[check], baseURL: nil)
                B_WebView.loadHTMLString(B_Array[check], baseURL: nil)
                C_WebView.loadHTMLString(C_Array[check], baseURL: nil)
                D_WebView.loadHTMLString(D_Array[check], baseURL: nil)
                E_WebView.loadHTMLString(E_Array[check], baseURL: nil)
            }
            else{
                if let questions1_20 = msg.value(forKey: "questions1_20") as? NSArray {
                    for question in questions1_20{
                        if let questionDict = question as? NSDictionary {
                            if let object = questionDict.value(forKey: "q") {
                                //adding the name to the array
                                self.Questions.append(html_text + (object as? String)! + html_bottom)
                            }
                            
                            // Right answers
                            if let a = questionDict.value(forKey: "a"){
                                self.RightAnswers.append(html_text + (a as? String)! + html_bottom)
                            }
                            
                            var ThisAnswers = [String]()
                            
                            // A variant
                            if let a = questionDict.value(forKey: "a"){
                                ThisAnswers.append(html_text + (a as? String)! + html_bottom)
                            }
                            // B variant
                            if let a = questionDict.value(forKey: "b"){
                                ThisAnswers.append(html_text + (a as? String)! + html_bottom)
                            }
                            // C variant
                            if let a = questionDict.value(forKey: "c"){
                                ThisAnswers.append(html_text + (a as? String)! + html_bottom)
                            }
                            // D variant
                            if let a = questionDict.value(forKey: "d"){
                                ThisAnswers.append(html_text + (a as? String)! + html_bottom)
                            }
                            // E variant
                            if let a = questionDict.value(forKey: "e"){
                                ThisAnswers.append(html_text + (a as? String)! + html_bottom)
                            }
                            
                            ThisAnswers.shuffle()
                            
                            self.A_Array.append(ThisAnswers[0])
                            self.B_Array.append(ThisAnswers[1])
                            self.C_Array.append(ThisAnswers[2])
                            self.D_Array.append(ThisAnswers[3])
                            self.E_Array.append(ThisAnswers[4])
                        }
                    }
                }
                if let questions21_30 = msg.value(forKey: "questions21_30") as? NSArray {
                    for question in questions21_30{
                        if let questionDict = question as? NSDictionary {
                            if let object = questionDict.value(forKey: "q") {
                                //adding the name to the array
                                self.Questions21_30.append(html_text + (object as? String)! + html_bottom)
                            }
                            
                            
                            // A variant
                            if let a = questionDict.value(forKey: "a"){
                                self.Answers21_30[self.loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // B variant
                            if let a = questionDict.value(forKey: "b"){
                                self.Answers21_30[self.loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // C variant
                            if let a = questionDict.value(forKey: "c"){
                                self.Answers21_30[self.loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // D variant
                            if let a = questionDict.value(forKey: "d"){
                                self.Answers21_30[self.loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // E variant
                            if let a = questionDict.value(forKey: "e"){
                                self.Answers21_30[self.loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // F variant
                            if let a = questionDict.value(forKey: "f"){
                                self.Answers21_30[self.loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // G variant
                            if let a = questionDict.value(forKey: "g"){
                                self.Answers21_30[self.loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // H variant
                            if let a = questionDict.value(forKey: "h"){
                                self.Answers21_30[self.loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            
                            
                            // Right Ans Nums
                            if let Right_ans_nums = questionDict.value(forKey: "right_ans_nums"){
                                self.Num_of_Right = (Right_ans_nums as! String)
                                self.Num_Of_Right_Ans.append(self.Num_of_Right)
                            }
                            
                            if Int(self.Num_of_Right) == 1{
                                if let a = questionDict.value(forKey: "a"){
                                    self.RightAnswers21_30[self.loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                            }
                            
                            if Int(self.Num_of_Right) == 2{
                                if let a = questionDict.value(forKey: "a"){
                                    self.RightAnswers21_30[self.loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                                if let a = questionDict.value(forKey: "b"){
                                    self.RightAnswers21_30[self.loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                            }
                            
                            if Int(self.Num_of_Right) == 3{
                                if let a = questionDict.value(forKey: "a"){
                                    self.RightAnswers21_30[self.loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                                if let a = questionDict.value(forKey: "b"){
                                    self.RightAnswers21_30[self.loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                                if let a = questionDict.value(forKey: "c"){
                                    self.RightAnswers21_30[self.loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                            }
                            
                            self.Answers21_30[self.loop_ind].shuffle()
                            
                            self.loop_ind = self.loop_ind + 1
                        }
                    }
                }
                self.count_quest = 30
                
                Q_WebView.loadHTMLString(Questions[check], baseURL: nil)
                NumOfQ_Label.text = String(check+1) + " in " + String(count_quest)
                SubjectName_Label.text = self.Subject_Name
                
                A_WebView.loadHTMLString(A_Array[check], baseURL: nil)
                B_WebView.loadHTMLString(B_Array[check], baseURL: nil)
                C_WebView.loadHTMLString(C_Array[check], baseURL: nil)
                D_WebView.loadHTMLString(D_Array[check], baseURL: nil)
                E_WebView.loadHTMLString(E_Array[check], baseURL: nil)
            }
        }
        
        if RightAnswers[check] == A_Array[check] && Picks[check] == A_Array[check]{
            A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
        }
        else if RightAnswers[check] == A_Array[check] && Picks[check] != A_Array[check]{
            A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
        }
        else if RightAnswers[check] != A_Array[check] && Picks[check] == A_Array[check]{
            A_Label.textColor = UIColor.red
        }
        
        if RightAnswers[check] == B_Array[check] && Picks[check] == B_Array[check]{
            B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
        }
        else if RightAnswers[check] == B_Array[check] && Picks[check] != B_Array[check]{
            B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
        }
        else if RightAnswers[check] != B_Array[check] && Picks[check] == B_Array[check]{
            B_Label.textColor = UIColor.red
        }
        
        if RightAnswers[check] == C_Array[check] && Picks[check] == C_Array[check]{
            C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
        }
        else if RightAnswers[check] == C_Array[check] && Picks[check] != C_Array[check]{
            C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
        }
        else if RightAnswers[check] != C_Array[check] && Picks[check] == C_Array[check]{
            C_Label.textColor = UIColor.red
        }
        
        if RightAnswers[check] == D_Array[check] && Picks[check] == D_Array[check]{
            D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
        }
        else if RightAnswers[check] == D_Array[check] && Picks[check] != D_Array[check]{
            D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
        }
        else if RightAnswers[check] != D_Array[check] && Picks[check] == D_Array[check]{
            D_Label.textColor = UIColor.red
        }
        
        if RightAnswers[check] == E_Array[check] && Picks[check] == E_Array[check]{
            E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
        }
        else if RightAnswers[check] == E_Array[check] && Picks[check] != E_Array[check]{
            E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
        }
        else if RightAnswers[check] != E_Array[check] && Picks[check] == E_Array[check]{
            E_Label.textColor = UIColor.red
        }
    }
    
    @IBAction func Next_Button(_ sender: UIButton) {
        if check < 19{
            check += 1
            Q_WebView.loadHTMLString(Questions[check], baseURL: nil)
            NumOfQ_Label.text = String(check+1) + " in " + String(count_quest)
            A_WebView.loadHTMLString(A_Array[check], baseURL: nil)
            B_WebView.loadHTMLString(B_Array[check], baseURL: nil)
            C_WebView.loadHTMLString(C_Array[check], baseURL: nil)
            D_WebView.loadHTMLString(D_Array[check], baseURL: nil)
            E_WebView.loadHTMLString(E_Array[check], baseURL: nil)
            
            A_Label.textColor = UIColor.black
            B_Label.textColor = UIColor.black
            C_Label.textColor = UIColor.black
            D_Label.textColor = UIColor.black
            E_Label.textColor = UIColor.black
            
            if RightAnswers[check] == A_Array[check] && Picks[check] == A_Array[check]{
                A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if RightAnswers[check] == A_Array[check] && Picks[check] != A_Array[check]{
                A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if RightAnswers[check] != A_Array[check] && Picks[check] == A_Array[check]{
                A_Label.textColor = UIColor.red
            }
            
            if RightAnswers[check] == B_Array[check] && Picks[check] == B_Array[check]{
                B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if RightAnswers[check] == B_Array[check] && Picks[check] != B_Array[check]{
                B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if RightAnswers[check] != B_Array[check] && Picks[check] == B_Array[check]{
                B_Label.textColor = UIColor.red
            }
            
            if RightAnswers[check] == C_Array[check] && Picks[check] == C_Array[check]{
                C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if RightAnswers[check] == C_Array[check] && Picks[check] != C_Array[check]{
                C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if RightAnswers[check] != C_Array[check] && Picks[check] == C_Array[check]{
                C_Label.textColor = UIColor.red
            }
            
            if RightAnswers[check] == D_Array[check] && Picks[check] == D_Array[check]{
                D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if RightAnswers[check] == D_Array[check] && Picks[check] != D_Array[check]{
                D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if RightAnswers[check] != D_Array[check] && Picks[check] == D_Array[check]{
                D_Label.textColor = UIColor.red
            }
            
            if RightAnswers[check] == E_Array[check] && Picks[check] == E_Array[check]{
                E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if RightAnswers[check] == E_Array[check] && Picks[check] != E_Array[check]{
                E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if RightAnswers[check] != E_Array[check] && Picks[check] == E_Array[check]{
                E_Label.textColor = UIColor.red
            }
            
            F_Label.isHidden = true
            G_Label.isHidden = true
            H_Label.isHidden = true
            
            F_WebView.isHidden = true
            G_WebView.isHidden = true
            H_WebView.isHidden = true
        }
        else if check < 29 && count_quest == 30{
            check += 1
            Q_WebView.loadHTMLString(Questions21_30[check-20], baseURL: nil)
            NumOfQ_Label.text = String(check+1) + " in " + String(count_quest)
            
            self.A_WebView.loadHTMLString(self.Answers21_30[self.check - 20][0], baseURL: nil)
            self.B_WebView.loadHTMLString(self.Answers21_30[self.check - 20][1], baseURL: nil)
            self.C_WebView.loadHTMLString(self.Answers21_30[self.check - 20][2], baseURL: nil)
            self.D_WebView.loadHTMLString(self.Answers21_30[self.check - 20][3], baseURL: nil)
            self.E_WebView.loadHTMLString(self.Answers21_30[self.check - 20][4], baseURL: nil)
            self.F_WebView.loadHTMLString(self.Answers21_30[self.check - 20][5], baseURL: nil)
            self.G_WebView.loadHTMLString(self.Answers21_30[self.check - 20][6], baseURL: nil)
            self.H_WebView.loadHTMLString(self.Answers21_30[self.check - 20][7], baseURL: nil)
            
            A_Label.textColor = UIColor.black
            B_Label.textColor = UIColor.black
            C_Label.textColor = UIColor.black
            D_Label.textColor = UIColor.black
            E_Label.textColor = UIColor.black
            F_Label.textColor = UIColor.black
            G_Label.textColor = UIColor.black
            H_Label.textColor = UIColor.black
            //A variant
            if Picks21_30[check-20].contains(Answers21_30[self.check - 20][0]) == true && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][0]) == true{
                A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][0]) == false && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][0]) == true{
                A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][0]) == true && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][0]) == false{
                A_Label.textColor = UIColor.red
            }
            //B variant
            if Picks21_30[check-20].contains(Answers21_30[self.check - 20][1]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][1]){
                B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][1]) == false && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][1]){
                B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][1]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][1]) == false{
                B_Label.textColor = UIColor.red
            }
            //C variant
            if Picks21_30[check-20].contains(Answers21_30[self.check - 20][2]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][2]){
                C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][2]) == false && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][2]){
                C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][2]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][2]) == false{
                C_Label.textColor = UIColor.red
            }
            //D variant
            if Picks21_30[check-20].contains(Answers21_30[self.check - 20][3]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][3]){
                D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][3]) == false && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][3]){
                D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][3]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][3]) == false{
                D_Label.textColor = UIColor.red
            }
            //E variant
            if Picks21_30[check-20].contains(Answers21_30[self.check - 20][4]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][4]){
                E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][4]) == false && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][4]){
                E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][4]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][4]) == false{
                E_Label.textColor = UIColor.red
            }
            //F variant
            if Picks21_30[check-20].contains(Answers21_30[self.check - 20][5]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][5]){
                F_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][5]) == false && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][5]){
                F_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][5]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][5]) == false{
                F_Label.textColor = UIColor.red
            }
            //G variant
            if Picks21_30[check-20].contains(Answers21_30[self.check - 20][6]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][6]){
                G_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][6]) == false && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][6]){
                G_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][6]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][6]) == false{
                G_Label.textColor = UIColor.red
            }
            //H variant
            if Picks21_30[check-20].contains(Answers21_30[self.check - 20][7]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][7]){
                H_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][7]) == false && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][7]){
                H_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][7]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][7]) == false{
                H_Label.textColor = UIColor.red
            }
            
            
            F_Label.isHidden = false
            G_Label.isHidden = false
            H_Label.isHidden = false
            
            F_WebView.isHidden = false
            G_WebView.isHidden = false
            H_WebView.isHidden = false
        }
    }
    @IBAction func Pre_Button(_ sender: UIButton) {
        if check > 0{
            check -= 1
            if check > 19{
                Q_WebView.loadHTMLString(Questions21_30[check-20], baseURL: nil)
                NumOfQ_Label.text = String(check+1) + " in " + String(count_quest)
                
                self.A_WebView.loadHTMLString(self.Answers21_30[self.check - 20][0], baseURL: nil)
                self.B_WebView.loadHTMLString(self.Answers21_30[self.check - 20][1], baseURL: nil)
                self.C_WebView.loadHTMLString(self.Answers21_30[self.check - 20][2], baseURL: nil)
                self.D_WebView.loadHTMLString(self.Answers21_30[self.check - 20][3], baseURL: nil)
                self.E_WebView.loadHTMLString(self.Answers21_30[self.check - 20][4], baseURL: nil)
                self.F_WebView.loadHTMLString(self.Answers21_30[self.check - 20][5], baseURL: nil)
                self.G_WebView.loadHTMLString(self.Answers21_30[self.check - 20][6], baseURL: nil)
                self.H_WebView.loadHTMLString(self.Answers21_30[self.check - 20][7], baseURL: nil)
                
                A_Label.textColor = UIColor.black
                B_Label.textColor = UIColor.black
                C_Label.textColor = UIColor.black
                D_Label.textColor = UIColor.black
                E_Label.textColor = UIColor.black
                F_Label.textColor = UIColor.black
                G_Label.textColor = UIColor.black
                H_Label.textColor = UIColor.black
                
                //A variant
                if Picks21_30[check-20].contains(Answers21_30[self.check - 20][0]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][0]){
                    A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][0]) == false && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][0]){
                    A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][0]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][0]) == false{
                    A_Label.textColor = UIColor.red
                }
                //B variant
                if Picks21_30[check-20].contains(Answers21_30[self.check - 20][1]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][1]){
                    B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][1]) == false && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][1]){
                    B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][1]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][1]) == false{
                    B_Label.textColor = UIColor.red
                }
                //C variant
                if Picks21_30[check-20].contains(Answers21_30[self.check - 20][2]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][2]){
                    C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][2]) == false && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][2]){
                    C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][2]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][2]) == false{
                    C_Label.textColor = UIColor.red
                }
                //D variant
                if Picks21_30[check-20].contains(Answers21_30[self.check - 20][3]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][3]){
                    D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][3]) == false && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][3]){
                    D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][3]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][3]) == false{
                    D_Label.textColor = UIColor.red
                }
                //E variant
                if Picks21_30[check-20].contains(Answers21_30[self.check - 20][4]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][4]){
                    E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][4]) == false && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][4]){
                    E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][4]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][4]) == false{
                    E_Label.textColor = UIColor.red
                }
                //F variant
                if Picks21_30[check-20].contains(Answers21_30[self.check - 20][5]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][5]){
                    F_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][5]) == false && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][5]){
                    F_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][5]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][5]) == false{
                    F_Label.textColor = UIColor.red
                }
                //G variant
                if Picks21_30[check-20].contains(Answers21_30[self.check - 20][6]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][6]){
                    G_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][6]) == false && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][6]){
                    G_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][6]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][6]) == false{
                    G_Label.textColor = UIColor.red
                }
                //H variant
                if Picks21_30[check-20].contains(Answers21_30[self.check - 20][7]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][7]){
                    H_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][7]) == false && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][7]){
                    H_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if Picks21_30[check-20].contains(Answers21_30[self.check - 20][7]) && RightAnswers21_30[check - 20].contains(Answers21_30[self.check - 20][7]) == false{
                    H_Label.textColor = UIColor.red
                }
                
                F_Label.isHidden = false
                G_Label.isHidden = false
                H_Label.isHidden = false
                
                F_WebView.isHidden = false
                G_WebView.isHidden = false
                H_WebView.isHidden = false
            }
            else{
                Q_WebView.loadHTMLString(Questions[check], baseURL: nil)
                NumOfQ_Label.text = String(check+1) + " in " + String(count_quest)
                A_WebView.loadHTMLString(A_Array[check], baseURL: nil)
                B_WebView.loadHTMLString(B_Array[check], baseURL: nil)
                C_WebView.loadHTMLString(C_Array[check], baseURL: nil)
                D_WebView.loadHTMLString(D_Array[check], baseURL: nil)
                E_WebView.loadHTMLString(E_Array[check], baseURL: nil)
                
                A_Label.textColor = UIColor.black
                B_Label.textColor = UIColor.black
                C_Label.textColor = UIColor.black
                D_Label.textColor = UIColor.black
                E_Label.textColor = UIColor.black
                
                if RightAnswers[check] == A_Array[check] && Picks[check] == A_Array[check]{
                    A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if RightAnswers[check] == A_Array[check] && Picks[check] != A_Array[check]{
                    A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if RightAnswers[check] != A_Array[check] && Picks[check] == A_Array[check]{
                    A_Label.textColor = UIColor.red
                }
                
                if RightAnswers[check] == B_Array[check] && Picks[check] == B_Array[check]{
                    B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if RightAnswers[check] == B_Array[check] && Picks[check] != B_Array[check]{
                    B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if RightAnswers[check] != B_Array[check] && Picks[check] == B_Array[check]{
                    B_Label.textColor = UIColor.red
                }
                
                if RightAnswers[check] == C_Array[check] && Picks[check] == C_Array[check]{
                    C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if RightAnswers[check] == C_Array[check] && Picks[check] != C_Array[check]{
                    C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if RightAnswers[check] != C_Array[check] && Picks[check] == C_Array[check]{
                    C_Label.textColor = UIColor.red
                }
                
                if RightAnswers[check] == D_Array[check] && Picks[check] == D_Array[check]{
                    D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if RightAnswers[check] == D_Array[check] && Picks[check] != D_Array[check]{
                    D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if RightAnswers[check] != D_Array[check] && Picks[check] == D_Array[check]{
                    D_Label.textColor = UIColor.red
                }
                
                if RightAnswers[check] == E_Array[check] && Picks[check] == E_Array[check]{
                    E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if RightAnswers[check] == E_Array[check] && Picks[check] != E_Array[check]{
                    E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if RightAnswers[check] != E_Array[check] && Picks[check] == E_Array[check]{
                    E_Label.textColor = UIColor.red
                }
                
                F_Label.isHidden = true
                G_Label.isHidden = true
                H_Label.isHidden = true
                
                F_WebView.isHidden = true
                G_WebView.isHidden = true
                H_WebView.isHidden = true
            }
        }
    }
    @IBAction func ExitButton_Tapped(_ sender: UIBarButtonItem) {
        let mainTabController = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        
        mainTabController.selectedViewController = mainTabController.viewControllers?[2]
        
        self.present(mainTabController, animated: true, completion: nil)
    }
}
