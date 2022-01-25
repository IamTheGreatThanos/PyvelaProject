import Foundation
import UIKit
import WebKit

class OneSubject_TestingController: UIViewController, WKUIDelegate, WKNavigationDelegate, UIWebViewDelegate, UIGestureRecognizerDelegate{
    
    @IBOutlet weak var MainScrollView: UIScrollView!
    
    @IBOutlet weak var TimeLabel: UILabel!
    @IBOutlet weak var SubjectLabel: UILabel!
    @IBOutlet weak var IndicatorLabel: UILabel!
    @IBOutlet weak var QuestionsWebView: WKWebView!
    
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
    
    var A_Array = [String]()
    var B_Array = [String]()
    var C_Array = [String]()
    var D_Array = [String]()
    var E_Array = [String]()
    var Answers21_30 = [[String]]()
    
    var texts = [String]()
    var texts_qnum = [String]()
    
    var time = 5400
    var timer = Timer()
    var spend_time = 0
    
    var Questions = [String]()
    var Questions21_30 = [String]()
    var RightAnswers = [String]()
    var RightAnswers21_30 = [[String]]()
    var Picks21_30 = [[String]]()
    var Picks = [String]()
    var Num_Of_Right_Ans = [String]()
    
    var list_right_ans_in_ques = [String]()
    
    var ind = 0
    var count_question = 0
    var loop_ind = 0
    var Num_of_Right = ""
    var Points = 0
    var check_ind = 0
    var HowManyPicks = 0
    var json_Points = [Int]()
    var json_Points21_30 = [Int]()
    
    var end_json: NSMutableDictionary = NSMutableDictionary()
    var start_time = ""
    var jsonSTR = ""
    
    var Subject_Name = ""
    var This_Subject_id = 0


    @objc func counter() {
        self.spend_time += 1
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        self.start_time = formatter.string(from: date)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(OneSubject_TestingController.counter), userInfo: nil, repeats: true)

        
        
        let defaults = UserDefaults.standard
        defaults.set(self.Picks, forKey: "TerminatedPicks1_20")
        defaults.set(self.Picks21_30, forKey: "TerminatedPicks21_30")
        
        if A_Array[self.ind] == Picks[ind]{
            A_Label.textColor = UIColor.red
        }
        else{
            A_Label.textColor = UIColor.darkGray
        }
        
        if B_Array[self.ind] == Picks[ind]{
            B_Label.textColor = UIColor.red
        }
        else{
            B_Label.textColor = UIColor.darkGray
        }
        
        if C_Array[self.ind] == Picks[ind]{
            C_Label.textColor = UIColor.red
        }
        else{
            C_Label.textColor = UIColor.darkGray
        }
        
        if D_Array[self.ind] == Picks[ind]{
            D_Label.textColor = UIColor.red
        }
        else{
            D_Label.textColor = UIColor.darkGray
        }
        
        if E_Array[self.ind] == Picks[ind]{
            E_Label.textColor = UIColor.red
        }
        else{
            E_Label.textColor = UIColor.darkGray
        }
    }
    
    override func viewDidLoad() {
        let defaults = UserDefaults.standard
        defaults.set("Subject", forKey: "Terminate")
        MainScrollView.showsVerticalScrollIndicator = false
        super.viewDidLoad()
        
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: #selector(OneSubject_TestingController.action), userInfo: nil, repeats: true)
        
        F_Label.isHidden = true
        G_Label.isHidden = true
        H_Label.isHidden = true

        F_WebView.isHidden = true
        G_WebView.isHidden = true
        H_WebView.isHidden = true
        
        if defaults.string(forKey: "IfTerminated") == "1"{
            getFileFromTerminatedTest()
        }
        else{
            getFile()
            
            for _ in 0 ... 9 {
                Answers21_30.append([])
                RightAnswers21_30.append([])
            }
            
            for _ in 0 ... 9{
                Picks21_30.append([])
                list_right_ans_in_ques.append("0")
            }
            for _ in 0 ... 19{
                Picks.append("")
            }
            for i in 0 ... 9{
                Picks21_30[i].append("")
                Picks21_30[i].append("")
                Picks21_30[i].append("")
            }
        }
        
        let Subject_id = defaults.string(forKey: "Subject_id")!
        if Subject_id == "1" {
            defaults.set("Қазақстан тарихы", forKey: "Subject_Name")
        }
        else if (Subject_id == "2"){
            defaults.set("Оқу сауаттылығы", forKey: "Subject_Name")
        }
        else if (Subject_id == "3"){
            defaults.set("Мат. сауаттылық", forKey: "Subject_Name")
        }
        else if (Subject_id == "4"){
            defaults.set("Дүние жүзі тарихы", forKey: "Subject_Name")
        }
        else if (Subject_id == "5"){
            defaults.set("Адам. Қоғам. Құқық.", forKey: "Subject_Name")
        }
        else if (Subject_id == "6"){
            defaults.set("Қазақ тілі", forKey: "Subject_Name")
        }
        else if (Subject_id == "7"){
            defaults.set("Қазақ әдебиеті", forKey: "Subject_Name")
        }
        else if (Subject_id == "8"){
            defaults.set("Химия", forKey: "Subject_Name")
        }
        else if (Subject_id == "9"){
            defaults.set("География", forKey: "Subject_Name")
        }
        else if (Subject_id == "10"){
            defaults.set("Ағылшын тілі", forKey: "Subject_Name")
        }
        else if (Subject_id == "11"){
            defaults.set("Биология", forKey: "Subject_Name")
        }
        else if (Subject_id == "12"){
            defaults.set("Математика", forKey: "Subject_Name")
        }
        else if (Subject_id == "13"){
            defaults.set("Физика", forKey: "Subject_Name")
        }
        else if (Subject_id == "14"){
            defaults.set("Орыс тілі", forKey: "Subject_Name")
        }
        else if (Subject_id == "15"){
            defaults.set("Орыс әдебиеті", forKey: "Subject_Name")
        }
        
        
        let AWebView = UITapGestureRecognizer(target: self, action: #selector(A_WebView_Tapped) )
        AWebView.delegate = self
        A_WebView.addGestureRecognizer(AWebView)
        
        let BWebView = UITapGestureRecognizer(target: self, action: #selector(B_WebView_Tapped) )
        BWebView.delegate = self
        B_WebView.addGestureRecognizer(BWebView)

        let CWebView = UITapGestureRecognizer(target: self, action: #selector(C_WebView_Tapped) )
        CWebView.delegate = self
        C_WebView.addGestureRecognizer(CWebView)

        let DWebView = UITapGestureRecognizer(target: self, action: #selector(D_WebView_Tapped) )
        DWebView.delegate = self
        D_WebView.addGestureRecognizer(DWebView)

        let EWebView = UITapGestureRecognizer(target: self, action: #selector(E_WebView_Tapped) )
        EWebView.delegate = self
        E_WebView.addGestureRecognizer(EWebView)
        
        let FWebView = UITapGestureRecognizer(target: self, action: #selector(F_WebView_Tapped) )
        FWebView.delegate = self
        F_WebView.addGestureRecognizer(FWebView)
        
        let GWebView = UITapGestureRecognizer(target: self, action: #selector(G_WebView_Tapped) )
        GWebView.delegate = self
        G_WebView.addGestureRecognizer(GWebView)
        
        let HWebView = UITapGestureRecognizer(target: self, action: #selector(H_WebView_Tapped) )
        HWebView.delegate = self
        H_WebView.addGestureRecognizer(HWebView)
        
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
    @objc func A_WebView_Tapped() {
        if ind <= 19{
            Picks[ind] = A_Array[ind]
            A_Label.textColor = UIColor.red
            B_Label.textColor = UIColor.black
            C_Label.textColor = UIColor.black
            D_Label.textColor = UIColor.black
            E_Label.textColor = UIColor.black
            F_Label.textColor = UIColor.black
            G_Label.textColor = UIColor.black
            H_Label.textColor = UIColor.black
        }
        else{
            if A_Label.textColor == UIColor.red{
                A_Label.textColor = UIColor.darkGray
                if let index = Picks21_30[ind-20].index(of: Answers21_30[ind-20][0] ) {
                    Picks21_30[ind-20][index] = ""
                }
                list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! - 1)
            }
            else if A_Label.textColor == UIColor.black{
                if Int(list_right_ans_in_ques[ind-20])! < 3{
                    if Picks21_30[ind-20][0] == ""{
                        Picks21_30[ind-20][0] = Answers21_30[ind-20][0]
                    }
                    else if Picks21_30[ind-20][1] == ""{
                        Picks21_30[ind-20][1] = Answers21_30[ind-20][0]
                    }
                    else if Picks21_30[ind-20][2] == ""{
                        Picks21_30[ind-20][2] = Answers21_30[ind-20][0]
                    }
                    A_Label.textColor = UIColor.red
                    list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! + 1)
                }
            }
            else if A_Label.textColor == UIColor.darkGray{
                if Int(list_right_ans_in_ques[ind-20])! < 3{
                    if Picks21_30[ind-20][0] == ""{
                        Picks21_30[ind-20][0] = Answers21_30[ind-20][0]
                    }
                    else if Picks21_30[ind-20][1] == ""{
                        Picks21_30[ind-20][1] = Answers21_30[ind-20][0]
                    }
                    else if Picks21_30[ind-20][2] == ""{
                        Picks21_30[ind-20][2] = Answers21_30[ind-20][0]
                    }
                    A_Label.textColor = UIColor.red
                    list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! + 1)
                }
            }
        }
    }
    
    @objc func B_WebView_Tapped() {
        if ind <= 19{
            Picks[ind] = B_Array[ind]
            A_Label.textColor = UIColor.black
            B_Label.textColor = UIColor.red
            C_Label.textColor = UIColor.black
            D_Label.textColor = UIColor.black
            E_Label.textColor = UIColor.black
            F_Label.textColor = UIColor.black
            G_Label.textColor = UIColor.black
            H_Label.textColor = UIColor.black
        }
        else{
            if B_Label.textColor == UIColor.red{
                B_Label.textColor = UIColor.darkGray
                if let index = Picks21_30[ind-20].index(of: Answers21_30[ind-20][1] ) {
                    Picks21_30[ind-20][index] = ""
                }
                list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! - 1)
            }
            else if B_Label.textColor == UIColor.black{
                if Int(list_right_ans_in_ques[ind-20])! < 3{
                    if Picks21_30[ind-20][0] == ""{
                        Picks21_30[ind-20][0] = Answers21_30[ind-20][1]
                    }
                    else if Picks21_30[ind-20][1] == ""{
                        Picks21_30[ind-20][1] = Answers21_30[ind-20][1]
                    }
                    else if Picks21_30[ind-20][2] == ""{
                        Picks21_30[ind-20][2] = Answers21_30[ind-20][1]
                    }
                    B_Label.textColor = UIColor.red
                    list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! + 1)
                }
            }
            else if B_Label.textColor == UIColor.darkGray{
                if Int(list_right_ans_in_ques[ind-20])! < 3{
                    if Picks21_30[ind-20][0] == ""{
                        Picks21_30[ind-20][0] = Answers21_30[ind-20][1]
                    }
                    else if Picks21_30[ind-20][1] == ""{
                        Picks21_30[ind-20][1] = Answers21_30[ind-20][1]
                    }
                    else if Picks21_30[ind-20][2] == ""{
                        Picks21_30[ind-20][2] = Answers21_30[ind-20][1]
                    }
                    B_Label.textColor = UIColor.red
                    list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! + 1)
                }
            }
        }
    }
    
    @objc func C_WebView_Tapped() {
        if ind <= 19{
            Picks[ind] = C_Array[ind]
            A_Label.textColor = UIColor.black
            B_Label.textColor = UIColor.black
            C_Label.textColor = UIColor.red
            D_Label.textColor = UIColor.black
            E_Label.textColor = UIColor.black
            F_Label.textColor = UIColor.black
            G_Label.textColor = UIColor.black
            H_Label.textColor = UIColor.black
        }
        else{
            if C_Label.textColor == UIColor.red{
                C_Label.textColor = UIColor.darkGray
                if let index = Picks21_30[ind-20].index(of: Answers21_30[ind-20][2] ) {
                    Picks21_30[ind-20][index] = ""
                }
                list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! - 1)
            }
            else if C_Label.textColor == UIColor.black{
                if Int(list_right_ans_in_ques[ind-20])! < 3{
                    if Picks21_30[ind-20][0] == ""{
                        Picks21_30[ind-20][0] = Answers21_30[ind-20][2]
                    }
                    else if Picks21_30[ind-20][1] == ""{
                        Picks21_30[ind-20][1] = Answers21_30[ind-20][2]
                    }
                    else if Picks21_30[ind-20][2] == ""{
                        Picks21_30[ind-20][2] = Answers21_30[ind-20][2]
                    }
                    C_Label.textColor = UIColor.red
                    list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! + 1)
                }
            }
            else if C_Label.textColor == UIColor.darkGray{
                if Int(list_right_ans_in_ques[ind-20])! < 3{
                    if Picks21_30[ind-20][0] == ""{
                        Picks21_30[ind-20][0] = Answers21_30[ind-20][2]
                    }
                    else if Picks21_30[ind-20][1] == ""{
                        Picks21_30[ind-20][1] = Answers21_30[ind-20][2]
                    }
                    else if Picks21_30[ind-20][2] == ""{
                        Picks21_30[ind-20][2] = Answers21_30[ind-20][2]
                    }
                    C_Label.textColor = UIColor.red
                    list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! + 1)
                }
            }
        }
    }
    
    @objc func D_WebView_Tapped() {
        if ind <= 19{
            Picks[ind] = D_Array[ind]
            A_Label.textColor = UIColor.black
            B_Label.textColor = UIColor.black
            C_Label.textColor = UIColor.black
            D_Label.textColor = UIColor.red
            E_Label.textColor = UIColor.black
            F_Label.textColor = UIColor.black
            G_Label.textColor = UIColor.black
            H_Label.textColor = UIColor.black
        }
        else{
            if D_Label.textColor == UIColor.red{
                D_Label.textColor = UIColor.darkGray
                if let index = Picks21_30[ind-20].index(of: Answers21_30[ind-20][3] ) {
                    Picks21_30[ind-20][index] = ""
                }
                list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! - 1)
            }
            else if D_Label.textColor == UIColor.black{
                if Int(list_right_ans_in_ques[ind-20])! < 3{
                    if Picks21_30[ind-20][0] == ""{
                        Picks21_30[ind-20][0] = Answers21_30[ind-20][3]
                    }
                    else if Picks21_30[ind-20][1] == ""{
                        Picks21_30[ind-20][1] = Answers21_30[ind-20][3]
                    }
                    else if Picks21_30[ind-20][2] == ""{
                        Picks21_30[ind-20][2] = Answers21_30[ind-20][3]
                    }
                    D_Label.textColor = UIColor.red
                    list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! + 1)
                }
            }
            else if D_Label.textColor == UIColor.darkGray{
                if Int(list_right_ans_in_ques[ind-20])! < 3{
                    if Picks21_30[ind-20][0] == ""{
                        Picks21_30[ind-20][0] = Answers21_30[ind-20][3]
                    }
                    else if Picks21_30[ind-20][1] == ""{
                        Picks21_30[ind-20][1] = Answers21_30[ind-20][3]
                    }
                    else if Picks21_30[ind-20][2] == ""{
                        Picks21_30[ind-20][2] = Answers21_30[ind-20][3]
                    }
                    D_Label.textColor = UIColor.red
                    list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! + 1)
                }
            }
        }
    }
    
    @objc func E_WebView_Tapped() {
        if ind <= 19{
            self.Picks[ind] = E_Array[ind]
            A_Label.textColor = UIColor.black
            B_Label.textColor = UIColor.black
            C_Label.textColor = UIColor.black
            D_Label.textColor = UIColor.black
            E_Label.textColor = UIColor.red
            F_Label.textColor = UIColor.black
            G_Label.textColor = UIColor.black
            H_Label.textColor = UIColor.black
        }
        else{
            if E_Label.textColor == UIColor.red{
                E_Label.textColor = UIColor.darkGray
                if let index = Picks21_30[ind-20].index(of: Answers21_30[ind-20][4] ) {
                    Picks21_30[ind-20][index] = ""
                }
                list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! - 1)
            }
            else if E_Label.textColor == UIColor.black{
                if Int(list_right_ans_in_ques[ind-20])! < 3{
                    if Picks21_30[ind-20][0] == ""{
                        Picks21_30[ind-20][0] = Answers21_30[ind-20][4]
                    }
                    else if Picks21_30[ind-20][1] == ""{
                        Picks21_30[ind-20][1] = Answers21_30[ind-20][4]
                    }
                    else if Picks21_30[ind-20][2] == ""{
                        Picks21_30[ind-20][2] = Answers21_30[ind-20][4]
                    }
                    E_Label.textColor = UIColor.red
                    list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! + 1)
                }
            }
            else if E_Label.textColor == UIColor.darkGray{
                if Int(list_right_ans_in_ques[ind-20])! < 3{
                    if Picks21_30[ind-20][0] == ""{
                        Picks21_30[ind-20][0] = Answers21_30[ind-20][4]
                    }
                    else if Picks21_30[ind-20][1] == ""{
                        Picks21_30[ind-20][1] = Answers21_30[ind-20][4]
                    }
                    else if Picks21_30[ind-20][2] == ""{
                        Picks21_30[ind-20][2] = Answers21_30[ind-20][4]
                    }
                    E_Label.textColor = UIColor.red
                    list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! + 1)
                }
            }
        }
        
    }
    
    @objc func F_WebView_Tapped() {
        if ind > 19{
            if F_Label.textColor == UIColor.red{
                F_Label.textColor = UIColor.darkGray
                if let index = Picks21_30[ind-20].index(of: Answers21_30[ind-20][5] ) {
                    Picks21_30[ind-20][index] = ""
                }
                list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! - 1)
            }
            else if F_Label.textColor == UIColor.black{
                if Int(list_right_ans_in_ques[ind-20])! < 3{
                    if Picks21_30[ind-20][0] == ""{
                        Picks21_30[ind-20][0] = Answers21_30[ind-20][5]
                    }
                    else if Picks21_30[ind-20][1] == ""{
                        Picks21_30[ind-20][1] = Answers21_30[ind-20][5]
                    }
                    else if Picks21_30[ind-20][2] == ""{
                        Picks21_30[ind-20][2] = Answers21_30[ind-20][5]
                    }
                    F_Label.textColor = UIColor.red
                    list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! + 1)
                }
            }
            else if F_Label.textColor == UIColor.darkGray{
                if Int(list_right_ans_in_ques[ind-20])! < 3{
                    if Picks21_30[ind-20][0] == ""{
                        Picks21_30[ind-20][0] = Answers21_30[ind-20][5]
                    }
                    else if Picks21_30[ind-20][1] == ""{
                        Picks21_30[ind-20][1] = Answers21_30[ind-20][5]
                    }
                    else if Picks21_30[ind-20][2] == ""{
                        Picks21_30[ind-20][2] = Answers21_30[ind-20][5]
                    }
                    F_Label.textColor = UIColor.red
                    list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! + 1)
                }
            }
        }
    }
    
    @objc func G_WebView_Tapped() {
        if ind > 19{
            if G_Label.textColor == UIColor.red{
                G_Label.textColor = UIColor.darkGray
                if let index = Picks21_30[ind-20].index(of: Answers21_30[ind-20][6] ) {
                    Picks21_30[ind-20][index] = ""
                }
                list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! - 1)
            }
            else if G_Label.textColor == UIColor.black{
                if Int(list_right_ans_in_ques[ind-20])! < 3{
                    if Picks21_30[ind-20][0] == ""{
                        Picks21_30[ind-20][0] = Answers21_30[ind-20][6]
                    }
                    else if Picks21_30[ind-20][1] == ""{
                        Picks21_30[ind-20][1] = Answers21_30[ind-20][6]
                    }
                    else if Picks21_30[ind-20][2] == ""{
                        Picks21_30[ind-20][2] = Answers21_30[ind-20][6]
                    }
                    G_Label.textColor = UIColor.red
                    list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! + 1)
                }
            }
            else if G_Label.textColor == UIColor.darkGray{
                if Int(list_right_ans_in_ques[ind-20])! < 3{
                    if Picks21_30[ind-20][0] == ""{
                        Picks21_30[ind-20][0] = Answers21_30[ind-20][6]
                    }
                    else if Picks21_30[ind-20][1] == ""{
                        Picks21_30[ind-20][1] = Answers21_30[ind-20][6]
                    }
                    else if Picks21_30[ind-20][2] == ""{
                        Picks21_30[ind-20][2] = Answers21_30[ind-20][6]
                    }
                    G_Label.textColor = UIColor.red
                    list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! + 1)
                }
            }
        }
    }
    
    @objc func H_WebView_Tapped() {
        if ind > 19{
            if H_Label.textColor == UIColor.red{
                H_Label.textColor = UIColor.darkGray
                if let index = Picks21_30[ind-20].index(of: Answers21_30[ind-20][7] ) {
                    Picks21_30[ind-20][index] = ""
                }
                list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! - 1)
            }
            else if H_Label.textColor == UIColor.black{
                if Int(list_right_ans_in_ques[ind-20])! < 3{
                    if Picks21_30[ind-20][0] == ""{
                        Picks21_30[ind-20][0] = Answers21_30[ind-20][7]
                    }
                    else if Picks21_30[ind-20][1] == ""{
                        Picks21_30[ind-20][1] = Answers21_30[ind-20][7]
                    }
                    else if Picks21_30[ind-20][2] == ""{
                        Picks21_30[ind-20][2] = Answers21_30[ind-20][7]
                    }
                    H_Label.textColor = UIColor.red
                    list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! + 1)
                }
            }
            else if H_Label.textColor == UIColor.darkGray{
                if Int(list_right_ans_in_ques[ind-20])! < 3{
                    if Picks21_30[ind-20][0] == ""{
                        Picks21_30[ind-20][0] = Answers21_30[ind-20][7]
                    }
                    else if Picks21_30[ind-20][1] == ""{
                        Picks21_30[ind-20][1] = Answers21_30[ind-20][7]
                    }
                    else if Picks21_30[ind-20][2] == ""{
                        Picks21_30[ind-20][2] = Answers21_30[ind-20][7]
                    }
                    H_Label.textColor = UIColor.red
                    list_right_ans_in_ques[ind-20] = String(Int(list_right_ans_in_ques[ind-20])! + 1)
                }
            }
        }
    }
    
    
    func getFileFromTerminatedTest(){
        let defaults = UserDefaults.standard
        let json = defaults.value(forKey: "TerminatedTestBody") as! NSDictionary
        let Subject_id = defaults.string(forKey: "Subject_id")!
        self.This_Subject_id = Int(Subject_id)!
        
        self.Picks = defaults.stringArray(forKey: "TerminatedPicks1_20")!
        self.Picks21_30 = defaults.array(forKey: "TerminatedPicks21_30") as! [[String]]
    
        
        let html_text = "<!DOCTYPE html> <html> <head> <style> div { width: 100%; word-wrap: break-word; font-size: 40px;} img{width: 15%; height: auto; max-height:170px;} </style> </head> <body> <div>"
        let html_bottom = "</div> </body> </html>"
        
        if let msgArray = json.value(forKey: "msg") as? NSDictionary {
            
            self.SubjectLabel.text = msgArray.value(forKey: "subject_name") as? String
            
            self.Subject_Name = (msgArray.value(forKey: "subject_name") as? String)!
            
            defaults.set(self.Subject_Name, forKey: "Subject_Name")
            
            if let questionArray = msgArray.value(forKey: "questions1_20") as? NSArray {
                //looping through all the elements
                for question in questionArray{
                    
                    //converting the element to a dictionary
                    if let questionDict = question as? NSDictionary {
                        
                        //getting the name from the dictionary
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
            if let questionArray = msgArray.value(forKey: "questions21_30") as? NSArray {
                //looping through all the elements
                for question in questionArray{
                    
                    //converting the element to a dictionary
                    if let questionDict = question as? NSDictionary {
                        
                        //getting the name from the dictionary
                        if let object = questionDict.value(forKey: "q") {
                            //adding the name to the array
                            self.Questions21_30.append(html_text + (object as? String)! + html_bottom)
                            
                            self.IndicatorLabel.text = String(self.ind+1) + " in 30"
                            self.count_question = 30
                            
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
            else
            {
                if let questionArray = msgArray.value(forKey: "questions") as? NSArray {
                    //looping through all the elements
                    for question in questionArray{
                        
                        //converting the element to a dictionary
                        if let questionDict = question as? NSDictionary {
                            
                            //getting the name from the dictionary
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
                if Int(Subject_id) == 2{
                    if let texts = msgArray.value(forKey: "texts") as? NSArray{
                        for text_object in texts{
                            if let text = (text_object as? NSDictionary)!.value(forKey: "text"){
                                self.texts.append(html_text + (text as? String)! + html_bottom)
                            }
                            if let textqnum = (text_object as? NSDictionary)!.value(forKey: "question_number"){
                                self.texts_qnum.append(textqnum as! String)
                            }
                        }
                    }
                }
                
                self.count_question = 20
                self.IndicatorLabel.text = String(self.ind+1) + " in 20"
            }
            
            if self.This_Subject_id == 2{
                self.QuestionsWebView.loadHTMLString(self.texts[0] + "\n" + self.Questions[self.ind], baseURL: nil)
            }
            else{
                self.QuestionsWebView.loadHTMLString(self.Questions[self.ind], baseURL: nil)
            }
            
            
            self.A_WebView.loadHTMLString(self.A_Array[self.ind], baseURL: nil)
            self.B_WebView.loadHTMLString(self.B_Array[self.ind], baseURL: nil)
            self.C_WebView.loadHTMLString(self.C_Array[self.ind], baseURL: nil)
            self.D_WebView.loadHTMLString(self.D_Array[self.ind], baseURL: nil)
            self.E_WebView.loadHTMLString(self.E_Array[self.ind], baseURL: nil)
        }
    }
    
    
    
    //Post Method
    func getFile(){
        let url = URL(string: "http://185.111.107.111/api/order.php")!
        var request = URLRequest(url: url)
        let defaults = UserDefaults.standard
        let Subject_id = defaults.string(forKey: "Subject_id")!
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        let postString = "user_id=" + defaults.string(forKey: "ID")! + "&subject_id=" + Subject_id + "&lang_id=1" + "&test_type=1"
        request.httpBody = postString.data(using: .utf8)
        
        //            Get response
        let task = URLSession.shared.dataTask(with: request, completionHandler:{(data, response, error) in
            do{
                let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! NSDictionary
                let status = json["status"]!
                let defaults = UserDefaults.standard
                
                defaults.setValue(json, forKey: "Temporary")
                
//                print(json) // printing JSON File
                
                self.This_Subject_id = Int(Subject_id)!
                
                OperationQueue.main.addOperation({
                    //calling another function after fetching the json
                })
                
                DispatchQueue.main.async {
                    if status as! String == "true"{
                        defaults.set(json["balance"]!, forKey: "Money")
                        defaults.set(json["bonus"]!, forKey: "Bonus")
                        let html_text = "<!DOCTYPE html> <html> <head> <style> div { width: 100%; word-wrap: break-word; font-size: 40px;} img{width: 15%; height: auto; max-height:170px;} </style> </head> <body> <div>"
                        let html_bottom = "</div> </body> </html>"
                        
                        if let msgArray = json.value(forKey: "msg") as? NSDictionary {
                            
                            self.SubjectLabel.text = msgArray.value(forKey: "subject_name") as? String
                            
                            self.Subject_Name = (msgArray.value(forKey: "subject_name") as? String)!
                            
                            defaults.set(self.Subject_Name, forKey: "Subject_Name")
                            
                            if let questionArray = msgArray.value(forKey: "questions1_20") as? NSArray {
                                //looping through all the elements
                                for question in questionArray{
                                    
                                    //converting the element to a dictionary
                                    if let questionDict = question as? NSDictionary {
                                        
                                        //getting the name from the dictionary
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
                            if let questionArray = msgArray.value(forKey: "questions21_30") as? NSArray {
                                //looping through all the elements
                                for question in questionArray{
                                    
                                    //converting the element to a dictionary
                                    if let questionDict = question as? NSDictionary {
                                        
                                        //getting the name from the dictionary
                                        if let object = questionDict.value(forKey: "q") {
                                            //adding the name to the array
                                            self.Questions21_30.append(html_text + (object as? String)! + html_bottom)
                                            
                                            self.IndicatorLabel.text = String(self.ind+1) + " in 30"
                                            self.count_question = 30
                                            
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
                            else
                            {
                                if let questionArray = msgArray.value(forKey: "questions") as? NSArray {
                                    //looping through all the elements
                                    for question in questionArray{
                                        
                                        //converting the element to a dictionary
                                        if let questionDict = question as? NSDictionary {
                                            
                                            //getting the name from the dictionary
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
                                if Int(Subject_id) == 2{
                                    if let texts = msgArray.value(forKey: "texts") as? NSArray{
                                        for text_object in texts{
                                            if let text = (text_object as? NSDictionary)!.value(forKey: "text"){
                                                self.texts.append(html_text + (text as? String)! + html_bottom)
                                            }
                                            if let textqnum = (text_object as? NSDictionary)!.value(forKey: "question_number"){
                                                self.texts_qnum.append(textqnum as! String)
                                            }
                                        }
                                    }
                                }
                                
                                self.count_question = 20
                                self.IndicatorLabel.text = String(self.ind+1) + " in 20"
                            }
                            
                            if self.This_Subject_id == 2{
                                self.QuestionsWebView.loadHTMLString(self.texts[0] + "\n" + self.Questions[self.ind], baseURL: nil)
                            }
                            else{
                                self.QuestionsWebView.loadHTMLString(self.Questions[self.ind], baseURL: nil)
                            }
                            
                            
                            self.A_WebView.loadHTMLString(self.A_Array[self.ind], baseURL: nil)
                            self.B_WebView.loadHTMLString(self.B_Array[self.ind], baseURL: nil)
                            self.C_WebView.loadHTMLString(self.C_Array[self.ind], baseURL: nil)
                            self.D_WebView.loadHTMLString(self.D_Array[self.ind], baseURL: nil)
                            self.E_WebView.loadHTMLString(self.E_Array[self.ind], baseURL: nil)
                        }
                    }
                    else{
                        let alertController = UIAlertController(title: "Кешіріңіз", message: "Сервер әзірше жұмыс ыстемейді!", preferredStyle: .alert)
                        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                            UIAlertAction in
                            let mainTabController = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
                            
                            mainTabController.selectedViewController = mainTabController.viewControllers?[1]
                            
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
                    
                    mainTabController.selectedViewController = mainTabController.viewControllers?[1]
                    
                    self.present(mainTabController, animated: true, completion: nil)
                }
                alertController.addAction(okAction)
                self.present(alertController, animated: true, completion: nil)
            }
        })
        task.resume()
    }
    
    
    
    @objc func action()
    {
        if time != 0{
            time -= 1
        }
        else{
            time = 0
        }
        TimeLabel.text = String(String(time/3600) + " : " + String(time%3600/60) + " : " + String(time%3600%60))
    }
    
    
    @IBAction func NextButton_Tapped(_ sender: Any) {
        if (ind < count_question - 1)
        {
            ind = ind + 1
            if (ind > 19){
                IndicatorLabel.text = String(ind+1) + " in " + String(count_question)
                QuestionsWebView.loadHTMLString(Questions21_30[ind-20], baseURL: nil)
                
                if self.Answers21_30[self.ind - 20][0] == Picks21_30[ind - 20][0] || self.Answers21_30[self.ind - 20][0] == Picks21_30[ind - 20][1] || self.Answers21_30[self.ind - 20][0] == Picks21_30[ind - 20][2]{
                    A_Label.textColor = UIColor.red
                }
                else{
                    A_Label.textColor = UIColor.darkGray
                }
                
                if self.Answers21_30[self.ind - 20][1] == Picks21_30[ind - 20][0] || self.Answers21_30[self.ind - 20][1] == Picks21_30[ind - 20][1] || self.Answers21_30[self.ind - 20][1] == Picks21_30[ind - 20][2]{
                    B_Label.textColor = UIColor.red
                }
                else{
                    B_Label.textColor = UIColor.darkGray
                }
                
                if self.Answers21_30[self.ind - 20][2] == Picks21_30[ind - 20][0] || self.Answers21_30[self.ind - 20][2] == Picks21_30[ind - 20][1] || self.Answers21_30[self.ind - 20][2] == Picks21_30[ind - 20][2]{
                    C_Label.textColor = UIColor.red
                }
                else{
                    C_Label.textColor = UIColor.darkGray
                }
                
                if self.Answers21_30[self.ind - 20][3] == Picks21_30[ind - 20][0] || self.Answers21_30[self.ind - 20][3] == Picks21_30[ind - 20][1] || self.Answers21_30[self.ind - 20][3] == Picks21_30[ind - 20][2]{
                    D_Label.textColor = UIColor.red
                }
                else{
                    D_Label.textColor = UIColor.darkGray
                }
                
                if self.Answers21_30[self.ind - 20][4] == Picks21_30[ind - 20][0] || self.Answers21_30[self.ind - 20][4] == Picks21_30[ind - 20][1] || self.Answers21_30[self.ind - 20][4] == Picks21_30[ind - 20][2]{
                    E_Label.textColor = UIColor.red
                }
                else{
                    E_Label.textColor = UIColor.darkGray
                }
                
                if self.Answers21_30[self.ind - 20][5] == Picks21_30[ind - 20][0] || self.Answers21_30[self.ind - 20][5] == Picks21_30[ind - 20][1] || self.Answers21_30[self.ind - 20][5] == Picks21_30[ind - 20][2]{
                    F_Label.textColor = UIColor.red
                }
                else{
                    F_Label.textColor = UIColor.darkGray
                }
                
                if self.Answers21_30[self.ind - 20][6] == Picks21_30[ind - 20][0] || self.Answers21_30[self.ind - 20][6] == Picks21_30[ind - 20][1] || self.Answers21_30[self.ind - 20][6] == Picks21_30[ind - 20][2]{
                    G_Label.textColor = UIColor.red
                }
                else{
                    G_Label.textColor = UIColor.darkGray
                }
                
                if self.Answers21_30[self.ind - 20][7] == Picks21_30[ind - 20][0] || self.Answers21_30[self.ind - 20][7] == Picks21_30[ind - 20][1] || self.Answers21_30[self.ind - 20][7] == Picks21_30[ind - 20][2]{
                    H_Label.textColor = UIColor.red
                }
                else{
                    H_Label.textColor = UIColor.darkGray
                }
                
                F_Label.isHidden = false
                G_Label.isHidden = false
                H_Label.isHidden = false
                
                F_WebView.isHidden = false
                G_WebView.isHidden = false
                H_WebView.isHidden = false
                
                self.A_WebView.loadHTMLString(self.Answers21_30[self.ind - 20][0], baseURL: nil)
                self.B_WebView.loadHTMLString(self.Answers21_30[self.ind - 20][1], baseURL: nil)
                self.C_WebView.loadHTMLString(self.Answers21_30[self.ind - 20][2], baseURL: nil)
                self.D_WebView.loadHTMLString(self.Answers21_30[self.ind - 20][3], baseURL: nil)
                self.E_WebView.loadHTMLString(self.Answers21_30[self.ind - 20][4], baseURL: nil)
                self.F_WebView.loadHTMLString(self.Answers21_30[self.ind - 20][5], baseURL: nil)
                self.G_WebView.loadHTMLString(self.Answers21_30[self.ind - 20][6], baseURL: nil)
                self.H_WebView.loadHTMLString(self.Answers21_30[self.ind - 20][7], baseURL: nil)
                
            }
            else
            {
                self.A_WebView.loadHTMLString(self.A_Array[self.ind], baseURL: nil)
                self.B_WebView.loadHTMLString(self.B_Array[self.ind], baseURL: nil)
                self.C_WebView.loadHTMLString(self.C_Array[self.ind], baseURL: nil)
                self.D_WebView.loadHTMLString(self.D_Array[self.ind], baseURL: nil)
                self.E_WebView.loadHTMLString(self.E_Array[self.ind], baseURL: nil)
                
                if A_Array[self.ind] == Picks[ind]{
                    A_Label.textColor = UIColor.red
                }
                else{
                    A_Label.textColor = UIColor.darkGray
                }
                
                if B_Array[self.ind] == Picks[ind]{
                    B_Label.textColor = UIColor.red
                }
                else{
                    B_Label.textColor = UIColor.darkGray
                }
                
                if C_Array[self.ind] == Picks[ind]{
                    C_Label.textColor = UIColor.red
                }
                else{
                    C_Label.textColor = UIColor.darkGray
                }
                
                if D_Array[self.ind] == Picks[ind]{
                    D_Label.textColor = UIColor.red
                }
                else{
                    D_Label.textColor = UIColor.darkGray
                }
                
                if E_Array[self.ind] == Picks[ind]{
                    E_Label.textColor = UIColor.red
                }
                else{
                    E_Label.textColor = UIColor.darkGray
                }
                
                IndicatorLabel.text = String(ind+1) + " in " + String(count_question)
                
                if self.This_Subject_id == 2{
                    if ind+1 <= Int(texts_qnum[0])!{
                        QuestionsWebView.loadHTMLString(self.texts[0] + "\n" + Questions[ind], baseURL: nil)
                    }
                    else if ind+1 <= (Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                        QuestionsWebView.loadHTMLString(self.texts[1] + "\n" + Questions[ind], baseURL: nil)
                    }
                    else if ind+1 <= (Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                        QuestionsWebView.loadHTMLString(self.texts[2] + "\n" + Questions[ind], baseURL: nil)
                    }
                    else if ind+1 <= (Int(texts_qnum[3])! + Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                        QuestionsWebView.loadHTMLString(self.texts[3] + "\n" + Questions[ind], baseURL: nil)
                    }
                    else if ind+1 <= (Int(texts_qnum[4])! + Int(texts_qnum[3])! + Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                        QuestionsWebView.loadHTMLString(self.texts[4] + "\n" + Questions[ind], baseURL: nil)
                    }
                }
                else{
                    QuestionsWebView.loadHTMLString(Questions[ind], baseURL: nil)

                }
            }
            let defaults = UserDefaults.standard
            defaults.set(self.Picks, forKey: "TerminatedPicks1_20")
            defaults.set(self.Picks21_30, forKey: "TerminatedPicks21_30")
        }
    }
    
    @IBAction func BackButton_Tapped(_ sender: UIButton) {
        if (ind > 0)
        {
            ind = ind - 1
            if (ind > 19){
                IndicatorLabel.text = String(ind+1) + " in " + String(count_question)
                QuestionsWebView.loadHTMLString(Questions21_30[ind-20], baseURL: nil)
                
                self.A_WebView.loadHTMLString(self.Answers21_30[self.ind - 20][0], baseURL: nil)
                self.B_WebView.loadHTMLString(self.Answers21_30[self.ind - 20][1], baseURL: nil)
                self.C_WebView.loadHTMLString(self.Answers21_30[self.ind - 20][2], baseURL: nil)
                self.D_WebView.loadHTMLString(self.Answers21_30[self.ind - 20][3], baseURL: nil)
                self.E_WebView.loadHTMLString(self.Answers21_30[self.ind - 20][4], baseURL: nil)
                self.F_WebView.loadHTMLString(self.Answers21_30[self.ind - 20][5], baseURL: nil)
                self.G_WebView.loadHTMLString(self.Answers21_30[self.ind - 20][6], baseURL: nil)
                self.H_WebView.loadHTMLString(self.Answers21_30[self.ind - 20][7], baseURL: nil)
                
                if self.Answers21_30[self.ind - 20][0] == Picks21_30[ind - 20][0] || self.Answers21_30[self.ind - 20][0] == Picks21_30[ind - 20][1] || self.Answers21_30[self.ind - 20][0] == Picks21_30[ind - 20][2]{
                    A_Label.textColor = UIColor.red
                }
                else{
                    A_Label.textColor = UIColor.darkGray
                }
                
                if self.Answers21_30[self.ind - 20][1] == Picks21_30[ind - 20][0] || self.Answers21_30[self.ind - 20][1] == Picks21_30[ind - 20][1] || self.Answers21_30[self.ind - 20][1] == Picks21_30[ind - 20][2]{
                    B_Label.textColor = UIColor.red
                }
                else{
                    B_Label.textColor = UIColor.darkGray
                }
                
                if self.Answers21_30[self.ind - 20][2] == Picks21_30[ind - 20][0] || self.Answers21_30[self.ind - 20][2] == Picks21_30[ind - 20][1] || self.Answers21_30[self.ind - 20][2] == Picks21_30[ind - 20][2]{
                    C_Label.textColor = UIColor.red
                }
                else{
                    C_Label.textColor = UIColor.darkGray
                }
                
                if self.Answers21_30[self.ind - 20][3] == Picks21_30[ind - 20][0] || self.Answers21_30[self.ind - 20][3] == Picks21_30[ind - 20][1] || self.Answers21_30[self.ind - 20][3] == Picks21_30[ind - 20][2]{
                    D_Label.textColor = UIColor.red
                }
                else{
                    D_Label.textColor = UIColor.darkGray
                }
                
                if self.Answers21_30[self.ind - 20][4] == Picks21_30[ind - 20][0] || self.Answers21_30[self.ind - 20][4] == Picks21_30[ind - 20][1] || self.Answers21_30[self.ind - 20][4] == Picks21_30[ind - 20][2]{
                    E_Label.textColor = UIColor.red
                }
                else{
                    E_Label.textColor = UIColor.darkGray
                }
                
                if self.Answers21_30[self.ind - 20][5] == Picks21_30[ind - 20][0] || self.Answers21_30[self.ind - 20][5] == Picks21_30[ind - 20][1] || self.Answers21_30[self.ind - 20][5] == Picks21_30[ind - 20][2]{
                    F_Label.textColor = UIColor.red
                }
                else{
                    F_Label.textColor = UIColor.darkGray
                }
                
                if self.Answers21_30[self.ind - 20][6] == Picks21_30[ind - 20][0] || self.Answers21_30[self.ind - 20][6] == Picks21_30[ind - 20][1] || self.Answers21_30[self.ind - 20][6] == Picks21_30[ind - 20][2]{
                    G_Label.textColor = UIColor.red
                }
                else{
                    G_Label.textColor = UIColor.darkGray
                }
                
                if self.Answers21_30[self.ind - 20][7] == Picks21_30[ind - 20][0] || self.Answers21_30[self.ind - 20][7] == Picks21_30[ind - 20][1] || self.Answers21_30[self.ind - 20][7] == Picks21_30[ind - 20][2]{
                    H_Label.textColor = UIColor.red
                }
                else{
                    H_Label.textColor = UIColor.darkGray
                }
            }
            else
            {
                self.A_WebView.loadHTMLString(self.A_Array[self.ind], baseURL: nil)
                self.B_WebView.loadHTMLString(self.B_Array[self.ind], baseURL: nil)
                self.C_WebView.loadHTMLString(self.C_Array[self.ind], baseURL: nil)
                self.D_WebView.loadHTMLString(self.D_Array[self.ind], baseURL: nil)
                self.E_WebView.loadHTMLString(self.E_Array[self.ind], baseURL: nil)
                
                if A_Array[self.ind] == Picks[ind]{
                    A_Label.textColor = UIColor.red
                }
                else{
                    A_Label.textColor = UIColor.darkGray
                }
                
                if B_Array[self.ind] == Picks[ind]{
                    B_Label.textColor = UIColor.red
                }
                else{
                    B_Label.textColor = UIColor.darkGray
                }
                
                if C_Array[self.ind] == Picks[ind]{
                    C_Label.textColor = UIColor.red
                }
                else{
                    C_Label.textColor = UIColor.darkGray
                }
                
                if D_Array[self.ind] == Picks[ind]{
                    D_Label.textColor = UIColor.red
                }
                else{
                    D_Label.textColor = UIColor.darkGray
                }
                
                if E_Array[self.ind] == Picks[ind]{
                    E_Label.textColor = UIColor.red
                }
                else{
                    E_Label.textColor = UIColor.darkGray
                }
                
                IndicatorLabel.text = String(ind+1) + " in " + String(count_question)
                
                if self.This_Subject_id == 2{
                    if ind+1 <= Int(texts_qnum[0])!{
                        QuestionsWebView.loadHTMLString(self.texts[0] + "\n" + Questions[ind], baseURL: nil)
                    }
                    else if ind+1 <= (Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                        QuestionsWebView.loadHTMLString(self.texts[1] + "\n" + Questions[ind], baseURL: nil)
                    }
                    else if ind+1 <= (Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                        QuestionsWebView.loadHTMLString(self.texts[2] + "\n" + Questions[ind], baseURL: nil)
                    }
                    else if ind+1 <= (Int(texts_qnum[3])! + Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                        QuestionsWebView.loadHTMLString(self.texts[3] + "\n" + Questions[ind], baseURL: nil)
                    }
                    else if ind+1 <= (Int(texts_qnum[4])! + Int(texts_qnum[3])! + Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                        QuestionsWebView.loadHTMLString(self.texts[4] + "\n" + Questions[ind], baseURL: nil)
                    }
                }
                else{
                    QuestionsWebView.loadHTMLString(Questions[ind], baseURL: nil)
                }
                F_Label.isHidden = true
                G_Label.isHidden = true
                H_Label.isHidden = true
                F_WebView.isHidden = true
                G_WebView.isHidden = true
                H_WebView.isHidden = true
            }
        }
        let defaults = UserDefaults.standard
        defaults.set(self.Picks, forKey: "TerminatedPicks1_20")
        defaults.set(self.Picks21_30, forKey: "TerminatedPicks21_30")
    }
    
    @IBAction func ExitButton_Tapped(_ sender: UIBarButtonItem) {
        for i in self.Picks{
            if i == ""{
                self.HowManyPicks += 1
            }
        }
        if self.count_question == 30 {
            for i in self.Picks21_30{
                if i[0] == "" && i[1] == "" && i[2] == ""{
                    self.HowManyPicks += 1
                }
            }
        }
        if self.HowManyPicks != 0{
            let alert = UIAlertController(title: "Ескерту!", message: String(self.HowManyPicks) + " сұраққа жауап берілмеді! Жалғастырайық па?", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Иә", style: .default, handler: { action in
                self.CheckAnswers()
            }))
            alert.addAction(UIAlertAction(title: "Жоқ", style: .cancel, handler: { action in
                self.HowManyPicks = 0
            }))
            
            self.present(alert, animated: true)
        }
        else{
            CheckAnswers()
        }
    }
    func CheckAnswers(){
        let actionSheetController: UIAlertController = UIAlertController(title: "Ескерту!", message: "Тестті аяқтағыңыз келеді ме?", preferredStyle: .actionSheet)
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "Артқа", style: .cancel) { action -> Void in
            self.HowManyPicks = 0
        }
        actionSheetController.addAction(cancelAction)
        
        let takePictureAction: UIAlertAction = UIAlertAction(title: "Иә!", style: .default) { action -> Void in
            
            let defaults = UserDefaults.standard
            for i in 0 ... 19{
                if self.Picks[i] == self.RightAnswers[i]{
                    self.Points = self.Points + 1
                    self.json_Points.append(1)
                }
                else{
                    self.json_Points.append(0)
                }
            }
            
            
            
            for index in self.Num_Of_Right_Ans{
                if Int(index) == 1{
                    if self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][0]) && self.Picks21_30[self.check_ind][1] == "" && self.Picks21_30[self.check_ind][2] == ""{
                        self.Points += 2
                        self.json_Points21_30.append(2)
                    }
                    else if self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][0]) || self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][1]) || self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][2]){
                        self.Points += 1
                        self.json_Points21_30.append(1)
                    }
                    else{
                        self.json_Points21_30.append(0)
                    }
                }
                if Int(index) == 2{
                    if (self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][0]) && self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][1])) && self.Picks21_30[self.check_ind][2] == ""{
                        self.Points += 2
                        self.json_Points21_30.append(2)
                    }
                    else if (self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][0]) || self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][1]) || self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][2])){
                        self.Points += 1
                        self.json_Points21_30.append(1)
                    }
                    else{
                        self.json_Points21_30.append(0)
                    }
                }
                if Int(index) == 3{
                    if (self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][0]) && self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][1]) && self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][2])){
                        self.Points = self.Points + 2
                        self.json_Points21_30.append(2)
                    }
                    else if (self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][0]) && self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][1])) || (self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][0]) && self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][2])) || (self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][1]) && self.RightAnswers21_30[self.check_ind].contains(self.Picks21_30[self.check_ind][2])){
                        self.Points += 1
                        self.json_Points21_30.append(1)
                    }
                    else{
                        self.json_Points21_30.append(0)
                    }
                }
                self.check_ind = self.check_ind + 1
            }
            
            defaults.set(String(self.Points), forKey: "OneSubject_Points")
            defaults.set(String(self.count_question), forKey: "Count_quest")
            
            DispatchQueue.main.async{
                if (defaults.value(forKey: "LastTest_1") == nil) {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_1")
                    defaults.setValue(self.Picks, forKey: "LastTest_1_Picks1_20")
                    defaults.setValue(self.Picks21_30, forKey: "LastTest_1_Picks21_30")
                }
                else if defaults.value(forKey: "LastTest_2") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_2")
                    defaults.setValue(self.Picks, forKey: "LastTest_2_Picks1_20")
                    defaults.setValue(self.Picks21_30, forKey: "LastTest_2_Picks21_30")
                }
                else if defaults.value(forKey: "LastTest_3") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_3")
                    defaults.setValue(self.Picks, forKey: "LastTest_3_Picks1_20")
                    defaults.setValue(self.Picks21_30, forKey: "LastTest_3_Picks21_30")
                }
                else if defaults.value(forKey: "LastTest_4") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_4")
                    defaults.setValue(self.Picks, forKey: "LastTest_4_Picks1_20")
                    defaults.setValue(self.Picks21_30, forKey: "LastTest_4_Picks21_30")
                }
                else if defaults.value(forKey: "LastTest_5") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_5")
                    defaults.setValue(self.Picks, forKey: "LastTest_5_Picks1_20")
                    defaults.setValue(self.Picks21_30, forKey: "LastTest_5_Picks21_30")
                }
                else if defaults.value(forKey: "LastTest_6") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_6")
                    defaults.setValue(self.Picks, forKey: "LastTest_6_Picks1_20")
                    defaults.setValue(self.Picks21_30, forKey: "LastTest_6_Picks21_30")
                }
                else if defaults.value(forKey: "LastTest_7") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_7")
                    defaults.setValue(self.Picks, forKey: "LastTest_7_Picks1_20")
                    defaults.setValue(self.Picks21_30, forKey: "LastTest_7_Picks21_30")
                }
                else if defaults.value(forKey: "LastTest_8") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_8")
                    defaults.setValue(self.Picks, forKey: "LastTest_8_Picks1_20")
                    defaults.setValue(self.Picks21_30, forKey: "LastTest_8_Picks21_30")
                }
                else if defaults.value(forKey: "LastTest_9") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_9")
                    defaults.setValue(self.Picks, forKey: "LastTest_9_Picks1_20")
                    defaults.setValue(self.Picks21_30, forKey: "LastTest_9_Picks21_30")
                }
                else if defaults.value(forKey: "LastTest_10") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_10")
                    defaults.setValue(self.Picks, forKey: "LastTest_10_Picks1_20")
                    defaults.setValue(self.Picks21_30, forKey: "LastTest_10_Picks21_30")
                }
                else if defaults.value(forKey: "LastTest_10") != nil {
                    defaults.setValue(defaults.value(forKey: "LastTest_2"), forKey: "LastTest_1")
                    defaults.setValue(defaults.value(forKey: "LastTest_2_Picks1_20"), forKey: "LastTest_1_Picks1_20")
                    defaults.setValue(defaults.value(forKey: "LastTest_2_Picks21_30"), forKey: "LastTest_1_Picks21_30")
                    
                    defaults.setValue(defaults.value(forKey: "LastTest_3"), forKey: "LastTest_2")
                    defaults.setValue(defaults.value(forKey: "LastTest_3_Picks1_20"), forKey: "LastTest_2_Picks1_20")
                    defaults.setValue(defaults.value(forKey: "LastTest_3_Picks21_30"), forKey: "LastTest_2_Picks21_30")
                    
                    defaults.setValue(defaults.value(forKey: "LastTest_4"), forKey: "LastTest_3")
                    defaults.setValue(defaults.value(forKey: "LastTest_4_Picks1_20"), forKey: "LastTest_3_Picks1_20")
                    defaults.setValue(defaults.value(forKey: "LastTest_4_Picks21_30"), forKey: "LastTest_3_Picks21_30")
                    
                    defaults.setValue(defaults.value(forKey: "LastTest_5"), forKey: "LastTest_4")
                    defaults.setValue(defaults.value(forKey: "LastTest_5_Picks1_20"), forKey: "LastTest_4_Picks1_20")
                    defaults.setValue(defaults.value(forKey: "LastTest_5_Picks21_30"), forKey: "LastTest_4_Picks21_30")
                    
                    defaults.setValue(defaults.value(forKey: "LastTest_6"), forKey: "LastTest_5")
                    defaults.setValue(defaults.value(forKey: "LastTest_6_Picks1_20"), forKey: "LastTest_5_Picks1_20")
                    defaults.setValue(defaults.value(forKey: "LastTest_6_Picks21_30"), forKey: "LastTest_5_Picks21_30")
                    
                    defaults.setValue(defaults.value(forKey: "LastTest_7"), forKey: "LastTest_6")
                    defaults.setValue(defaults.value(forKey: "LastTest_7_Picks1_20"), forKey: "LastTest_6_Picks1_20")
                    defaults.setValue(defaults.value(forKey: "LastTest_7_Picks21_30"), forKey: "LastTest_6_Picks21_30")
                    
                    defaults.setValue(defaults.value(forKey: "LastTest_8"), forKey: "LastTest_7")
                    defaults.setValue(defaults.value(forKey: "LastTest_8_Picks1_20"), forKey: "LastTest_7_Picks1_20")
                    defaults.setValue(defaults.value(forKey: "LastTest_8_Picks21_30"), forKey: "LastTest_7_Picks21_30")
                    
                    defaults.setValue(defaults.value(forKey: "LastTest_9"), forKey: "LastTest_8")
                    defaults.setValue(defaults.value(forKey: "LastTest_9_Picks1_20"), forKey: "LastTest_8_Picks1_20")
                    defaults.setValue(defaults.value(forKey: "LastTest_9_Picks21_30"), forKey: "LastTest_8_Picks21_30")
                    
                    defaults.setValue(defaults.value(forKey: "LastTest_10"), forKey: "LastTest_9")
                    defaults.setValue(defaults.value(forKey: "LastTest_10_Picks1_20"), forKey: "LastTest_9_Picks1_20")
                    defaults.setValue(defaults.value(forKey: "LastTest_10_Picks21_30"), forKey: "LastTest_9_Picks21_30")
                    
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_10")
                    defaults.setValue(self.Picks, forKey: "LastTest_10_Picks1_20")
                    defaults.setValue(self.Picks21_30, forKey: "LastTest_10_Picks21_30")
                }
                
                
                
                let date = Date()
                let formatter = DateFormatter()
                formatter.dateFormat = "dd.MM.yyyy"
                let result = formatter.string(from: date)
                
                if defaults.string(forKey: "Order_count") != "9"{
                    if let order_count = defaults.string(forKey: "Order_count"){
                        defaults.set(Int(order_count)!+1, forKey: "Order_count")
                        
                        let subject_key = String(Int(order_count)!+1) + "_history"
                        let time_key = String(Int(order_count)!+1) + "_time"
                        let point_key = String(Int(order_count)!+1) + "_point"
                        let count_ques = String(Int(order_count)!+1) + "_count"
                        let letter_key = String(Int(order_count)!+1) + "_letter"
                        
                        defaults.set(result, forKey: time_key)
                        defaults.set(self.Points, forKey: point_key)
                        if self.This_Subject_id > 3{
                            defaults.set(String(Int(self.count_question)+10), forKey: count_ques)
                        }
                        else{
                            defaults.set(String(Int(self.count_question)), forKey: count_ques)
                        }
                        defaults.set(self.Subject_Name[0], forKey: letter_key)
                        defaults.set(self.Subject_Name, forKey: subject_key)
                        
                    }
                    else{
                        defaults.set(0, forKey: "Order_count")
                        
                        defaults.set(result, forKey: "0_time")
                        defaults.set(self.Points, forKey: "0_point")
                        if self.This_Subject_id > 3{
                            defaults.set(String(Int(self.count_question)+10), forKey: "0_count")
                        }
                        else{
                            defaults.set(String(Int(self.count_question)), forKey: "0_count")
                        }
                        
                        defaults.set(self.Subject_Name[0], forKey: "0_letter")
                        defaults.set(self.Subject_Name, forKey: "0_history")
                    }
                }
                else {
                    for i in 1 ... 9{
                        defaults.set(defaults.string(forKey: String(i) + "_time"), forKey: String(i-1) + "_time")
                        defaults.set(defaults.string(forKey: String(i) + "_point"), forKey: String(i-1) + "_point")
                        defaults.set(defaults.string(forKey: String(i) + "_count"), forKey: String(i-1) + "_count")
                        defaults.set(defaults.string(forKey: String(i) + "_letter"), forKey: String(i-1) + "_letter")
                        defaults.set(defaults.string(forKey: String(i) + "_history"), forKey: String(i-1) + "_history")
                    }
                    defaults.set(result, forKey: "9_time")
                    defaults.set(self.Points, forKey: "9_point")
                    if self.This_Subject_id > 3{
                        defaults.set(String(Int(self.count_question)+10), forKey: "9_count")
                    }
                    else{
                        defaults.set(String(Int(self.count_question)), forKey: "9_count")
                    }
                    defaults.set(self.Subject_Name[0], forKey: "9_letter")
                    defaults.set(self.Subject_Name, forKey: "9_history")
                }
                
                self.timer.invalidate()
                
                
                
                
                
                
                let this_json = defaults.value(forKey: "Temporary") as! NSDictionary
                let msg_this_json = this_json.value(forKey: "msg") as! NSDictionary
                var end_questions1_20 = [NSObject]()
                var end_questions21_30 = [NSObject]()
                

                if let this_questions1_20 = msg_this_json.value(forKey: "questions1_20") as? NSArray{
                    var json_index = 0
                    let html_text = "<!DOCTYPE html> <html> <head> <style> div { width: 100%; word-wrap: break-word; font-size: 40px;} img{width: 15%; height: auto; max-height:170px;} </style> </head> <body> <div>"
                    let html_bottom = "</div> </body> </html>"
                    for question in this_questions1_20{
                        let questionDict = question as? NSDictionary
                        let this_question: NSMutableDictionary = NSMutableDictionary()
                        
                        this_question.setValue(self.json_Points[json_index], forKey: "point")
                        this_question.setValue("a", forKey: "right_ans")
                        this_question.setValue(questionDict!.value(forKey: "a"), forKey: "a")
                        this_question.setValue(questionDict!.value(forKey: "b"), forKey: "b")
                        this_question.setValue(questionDict!.value(forKey: "c"), forKey: "c")
                        this_question.setValue(questionDict!.value(forKey: "d"), forKey: "d")
                        this_question.setValue(questionDict!.value(forKey: "e"), forKey: "e")
                        this_question.setValue(questionDict!.value(forKey: "q"), forKey: "q")
                        this_question.setValue(questionDict!.value(forKey: "q_id"), forKey: "q_id")
                        this_question.setValue(questionDict!.value(forKey: "topic_id"), forKey: "topic_id")
                        this_question.setValue(questionDict!.value(forKey: "topic_name"), forKey: "topic_name")
                        this_question.setValue(questionDict!.value(forKey: "topic_video_link"), forKey: "topic_video_link")
                        this_question.setValue(questionDict!.value(forKey: "weight"), forKey: "weight")
                        this_question.setValue(questionDict!.value(forKey: "year"), forKey: "year")
                        

                        if self.Picks[json_index] == html_text + (questionDict!.value(forKey: "a") as! String) + html_bottom{
                            this_question.setValue("a", forKey: "given_ans")
                        }
                        else if self.Picks[json_index] == html_text + (questionDict!.value(forKey: "b") as! String) + html_bottom{
                            this_question.setValue("b", forKey: "given_ans")
                        }
                        else if self.Picks[json_index] == html_text + (questionDict!.value(forKey: "c") as! String) + html_bottom{
                            this_question.setValue("c", forKey: "given_ans")
                        }
                        else if self.Picks[json_index] == html_text + (questionDict!.value(forKey: "d") as! String) + html_bottom{
                            this_question.setValue("d", forKey: "given_ans")
                        }
                        else if self.Picks[json_index] == html_text + (questionDict!.value(forKey: "e") as! String) + html_bottom{
                            this_question.setValue("e", forKey: "given_ans")
                        }
                        else{
                            this_question.setValue("", forKey: "given_ans")
                        }
                        
                        end_questions1_20.append(this_question)
                        json_index += 1
                    }
                }
                if let this_questions21_30 = msg_this_json.value(forKey: "questions21_30") as? NSArray{
                    var json_index = 0
                    let html_text = "<!DOCTYPE html> <html> <head> <style> div { width: 100%; word-wrap: break-word; font-size: 40px;} img{width: 15%; height: auto; max-height:170px;} </style> </head> <body> <div>"
                    let html_bottom = "</div> </body> </html>"
                    for question in this_questions21_30{
                        let questionDict = question as? NSDictionary
                        let this_question: NSMutableDictionary = NSMutableDictionary()
                        
                        this_question.setValue(self.json_Points21_30[json_index], forKey: "point")
                        this_question.setValue("a", forKey: "right_ans")
                        this_question.setValue(questionDict!.value(forKey: "a"), forKey: "a")
                        this_question.setValue(questionDict!.value(forKey: "b"), forKey: "b")
                        this_question.setValue(questionDict!.value(forKey: "c"), forKey: "c")
                        this_question.setValue(questionDict!.value(forKey: "d"), forKey: "d")
                        this_question.setValue(questionDict!.value(forKey: "e"), forKey: "e")
                        this_question.setValue(questionDict!.value(forKey: "f"), forKey: "f")
                        this_question.setValue(questionDict!.value(forKey: "g"), forKey: "g")
                        this_question.setValue(questionDict!.value(forKey: "h"), forKey: "h")
                        this_question.setValue(questionDict!.value(forKey: "q"), forKey: "q")
                        this_question.setValue(questionDict!.value(forKey: "q_id"), forKey: "q_id")
                        this_question.setValue(questionDict!.value(forKey: "topic_id"), forKey: "topic_id")
                        this_question.setValue(questionDict!.value(forKey: "topic_name"), forKey: "topic_name")
                        this_question.setValue(questionDict!.value(forKey: "topic_video_link"), forKey: "topic_video_link")
                        this_question.setValue(questionDict!.value(forKey: "weight"), forKey: "weight")
                        this_question.setValue(questionDict!.value(forKey: "year"), forKey: "year")
                        this_question.setValue(questionDict!.value(forKey: "right_ans_nums"), forKey: "right_ans_nums")
                        
                        if questionDict!.value(forKey: "right_ans_nums") as! String == "1"{
                            this_question.setValue("a", forKey: "right1_ans")
                            this_question.setValue("", forKey: "right2_ans")
                            this_question.setValue("", forKey: "right3_ans")

                        }
                        else if questionDict!.value(forKey: "right_ans_nums") as! String == "2"{
                            this_question.setValue("a", forKey: "right1_ans")
                            this_question.setValue("b", forKey: "right2_ans")
                            this_question.setValue("", forKey: "right3_ans")

                        }
                        else if questionDict!.value(forKey: "right_ans_nums") as! String == "3"{
                            this_question.setValue("a", forKey: "right1_ans")
                            this_question.setValue("b", forKey: "right2_ans")
                            this_question.setValue("c", forKey: "right3_ans")
                        }
                        
                        
                        if self.Picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "a") as! String) + html_bottom{
                            this_question.setValue("a", forKey: "given1_ans")
                        }
                        if self.Picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "a") as! String) + html_bottom{
                            this_question.setValue("a", forKey: "given2_ans")
                        }
                        if self.Picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "a") as! String) + html_bottom{
                            this_question.setValue("a", forKey: "given3_ans")
                        }
                        
                        if self.Picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "b") as! String) + html_bottom{
                            this_question.setValue("b", forKey: "given1_ans")
                        }
                        if self.Picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "b") as! String) + html_bottom{
                            this_question.setValue("b", forKey: "given2_ans")
                        }
                        if self.Picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "b") as! String) + html_bottom{
                            this_question.setValue("b", forKey: "given3_ans")
                        }
                        
                        if self.Picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "c") as! String) + html_bottom{
                            this_question.setValue("c", forKey: "given1_ans")
                        }
                        if self.Picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "c") as! String) + html_bottom{
                            this_question.setValue("c", forKey: "given2_ans")
                        }
                        if self.Picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "c") as! String) + html_bottom{
                            this_question.setValue("c", forKey: "given3_ans")
                        }
                        
                        if self.Picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "d") as! String) + html_bottom{
                            this_question.setValue("d", forKey: "given1_ans")
                        }
                        if self.Picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "d") as! String) + html_bottom{
                            this_question.setValue("d", forKey: "given2_ans")
                        }
                        if self.Picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "d") as! String) + html_bottom{
                            this_question.setValue("d", forKey: "given3_ans")
                        }
                        
                        if self.Picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "e") as! String) + html_bottom{
                            this_question.setValue("e", forKey: "given1_ans")
                        }
                        if self.Picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "e") as! String) + html_bottom{
                            this_question.setValue("e", forKey: "given2_ans")
                        }
                        if self.Picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "e") as! String) + html_bottom{
                            this_question.setValue("e", forKey: "given3_ans")
                        }
                        
                        if self.Picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "f") as! String) + html_bottom{
                            this_question.setValue("f", forKey: "given1_ans")
                        }
                        if self.Picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "f") as! String) + html_bottom{
                            this_question.setValue("f", forKey: "given2_ans")
                        }
                        if self.Picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "f") as! String) + html_bottom{
                            this_question.setValue("f", forKey: "given3_ans")
                        }
                        
                        if self.Picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "g") as! String) + html_bottom{
                            this_question.setValue("g", forKey: "given1_ans")
                        }
                        if self.Picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "g") as! String) + html_bottom{
                            this_question.setValue("g", forKey: "given2_ans")
                        }
                        if self.Picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "g") as! String) + html_bottom{
                            this_question.setValue("g", forKey: "given3_ans")
                        }
                        
                        if self.Picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "h") as! String) + html_bottom{
                            this_question.setValue("h", forKey: "given1_ans")
                        }
                        if self.Picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "h") as! String) + html_bottom{
                            this_question.setValue("h", forKey: "given2_ans")
                        }
                        if self.Picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "h") as! String) + html_bottom{
                            this_question.setValue("h", forKey: "given3_ans")
                        }
   
                        if self.Picks21_30[json_index][0] == ""{
                            this_question.setValue("", forKey: "given1_ans")
                        }
                        if self.Picks21_30[json_index][1] == ""{
                            this_question.setValue("", forKey: "given2_ans")
                        }
                        if self.Picks21_30[json_index][2] == ""{
                            this_question.setValue("", forKey: "given3_ans")
                        }
                        
                        end_questions21_30.append(this_question)
                        json_index += 1
                    }
                }
                else if let this_questions1_20 = msg_this_json.value(forKey: "questions") as? NSArray{
                    var json_index = 0
                    let html_text = "<!DOCTYPE html> <html> <head> <style> div { width: 100%; word-wrap: break-word; font-size: 40px;} img{width: 15%; height: auto; max-height:170px;} </style> </head> <body> <div>"
                    let html_bottom = "</div> </body> </html>"
                    for question in this_questions1_20{
                        let questionDict = question as? NSDictionary
                        let this_question: NSMutableDictionary = NSMutableDictionary()
                        
                        this_question.setValue(self.json_Points[json_index], forKey: "point")
                        this_question.setValue("a", forKey: "right_ans")
                        this_question.setValue(questionDict!.value(forKey: "a"), forKey: "a")
                        this_question.setValue(questionDict!.value(forKey: "b"), forKey: "b")
                        this_question.setValue(questionDict!.value(forKey: "c"), forKey: "c")
                        this_question.setValue(questionDict!.value(forKey: "d"), forKey: "d")
                        this_question.setValue(questionDict!.value(forKey: "e"), forKey: "e")
                        this_question.setValue(questionDict!.value(forKey: "q"), forKey: "q")
                        this_question.setValue(questionDict!.value(forKey: "q_id"), forKey: "q_id")
                        this_question.setValue(questionDict!.value(forKey: "topic_id"), forKey: "topic_id")
                        this_question.setValue(questionDict!.value(forKey: "topic_name"), forKey: "topic_name")
                        this_question.setValue(questionDict!.value(forKey: "topic_video_link"), forKey: "topic_video_link")
                        this_question.setValue(questionDict!.value(forKey: "weight"), forKey: "weight")
                        this_question.setValue(questionDict!.value(forKey: "year"), forKey: "year")
                        
                        
                        if self.Picks[json_index] == html_text + (questionDict!.value(forKey: "a") as! String) + html_bottom{
                            this_question.setValue("a", forKey: "given_ans")
                        }
                        else if self.Picks[json_index] == html_text + (questionDict!.value(forKey: "b") as! String) + html_bottom{
                            this_question.setValue("b", forKey: "given_ans")
                        }
                        else if self.Picks[json_index] == html_text + (questionDict!.value(forKey: "c") as! String) + html_bottom{
                            this_question.setValue("c", forKey: "given_ans")
                        }
                        else if self.Picks[json_index] == html_text + (questionDict!.value(forKey: "d") as! String) + html_bottom{
                            this_question.setValue("d", forKey: "given_ans")
                        }
                        else if self.Picks[json_index] == html_text + (questionDict!.value(forKey: "e") as! String) + html_bottom{
                            this_question.setValue("e", forKey: "given_ans")
                        }
                        else{
                            this_question.setValue("", forKey: "given_ans")
                        }
                        
                        end_questions1_20.append(this_question)
                        json_index += 1
                    }
                }

                self.end_json.setValue(msg_this_json.value(forKey: "num_id"), forKey: "num_id")
                self.end_json.setValue(msg_this_json.value(forKey: "subject_name"), forKey: "subject_name")
                self.end_json.setValue(msg_this_json.value(forKey: "lang_id"), forKey: "lang_id")
                self.end_json.setValue(msg_this_json.value(forKey: "lang_name"), forKey: "lang_name")
                self.end_json.setValue(defaults.string(forKey: "ID")!, forKey: "user_id")
                self.end_json.setValue(0, forKey: "on_ubt")
                self.end_json.setValue(defaults.string(forKey: "Subject_id")!, forKey: "subject_id")
                self.end_json.setValue(self.Points, forKey: "points")
                self.end_json.setValue(result, forKey: "passdate")
                self.end_json.setValue(self.start_time, forKey: "start_time")
                self.end_json.setValue(self.spend_time, forKey: "time_spend")
                if self.count_question == 20{
                    self.end_json.setValue(end_questions1_20, forKey: "questions")
                }
                else{
                    self.end_json.setValue(end_questions1_20, forKey: "questions1_20")
                    self.end_json.setValue(end_questions21_30, forKey: "questions21_30")
                }
                
                
                do{
                    let jsonData = try! JSONSerialization.data(withJSONObject: self.end_json)
                    let jsonString = String(data: jsonData, encoding: .utf8)
                    self.jsonSTR = jsonString!
                }
                
                
                let save_url = URL(string: "http://185.111.107.111/api/ubt/save1.php")!
                var save_request = URLRequest(url: save_url)
                save_request.setValue("application/json", forHTTPHeaderField: "Content-Type")
                save_request.addValue(String(self.jsonSTR.length), forHTTPHeaderField: "Content-Length")
                save_request.httpMethod = "POST"
                save_request.httpBody = self.jsonSTR.data(using: .utf8)
                //Get response
                let save_task = URLSession.shared.dataTask(with: save_request, completionHandler:{(data, response, error) in
                    do{
                        let _ = try JSONSerialization.jsonObject(with: data!, options: [])
                    }
                    catch{
                        print(error)
                    }
                })
                save_task.resume()
                
                defaults.removeObject(forKey: "TerminatedTest")
                defaults.setValue("0", forKey: "IfTerminated")
                defaults.removeObject(forKey: "TerminatedPicks1_20")
                defaults.removeObject(forKey: "TerminatedPicks21_30")
                
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier :"Check_OneSubject_PonitsController")
                self.present(viewController, animated: true)
            }
        }
        actionSheetController.addAction(takePictureAction)
        
        self.present(actionSheetController, animated: true, completion: nil)
    }
    
    func AppWillTerminate(){
        let defaults = UserDefaults.standard
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        let result = formatter.string(from: date)
        
        var list = [[String]]()
        var this_list = [String]()
        this_list.append(defaults.string(forKey: "Subject_Name")!)
        this_list.append("Бітіру")
        this_list.append(result)
        this_list.append(defaults.string(forKey: "Subject_Name")![0])
        
        list.append(this_list)
        
        defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "TerminatedTestBody")

        
        
        defaults.set(list, forKey: "TerminatedTest")
    }
}
