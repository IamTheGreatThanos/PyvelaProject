import Foundation
import UIKit
import WebKit

class UNT_TestingController: UIViewController, WKUIDelegate, WKNavigationDelegate, UIWebViewDelegate, UIGestureRecognizerDelegate{
  
    @IBOutlet weak var TimeLabel: UILabel!
    @IBOutlet weak var IndicatorLabel: UILabel!
    @IBOutlet weak var QuestionWebView: WKWebView!
    @IBOutlet weak var SubjectSegmentControll: UISegmentedControl!
    
    @IBAction func SubjectIndicator(_ sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == 0)
        {
            F_Label.isHidden = true
            G_Label.isHidden = true
            H_Label.isHidden = true
            
            F_WebView.isHidden = true
            G_WebView.isHidden = true
            H_WebView.isHidden = true
            
            ind = 0
            
            SubjectNumber_by_Indicator = 0
            QuestionWebView.loadHTMLString(subject1_q[ind], baseURL: nil)
            
            A_WebView.loadHTMLString(subject1_A_Array[ind], baseURL: nil)
            B_WebView.loadHTMLString(subject1_B_Array[ind], baseURL: nil)
            C_WebView.loadHTMLString(subject1_C_Array[ind], baseURL: nil)
            D_WebView.loadHTMLString(subject1_D_Array[ind], baseURL: nil)
            E_WebView.loadHTMLString(subject1_E_Array[ind], baseURL: nil)
            
            if subject1_A_Array[self.ind] == subject1_picks[ind]{
                A_Label.textColor = UIColor.red
            }
            else{
                A_Label.textColor = UIColor.darkGray
            }
            
            if subject1_B_Array[self.ind] == subject1_picks[ind]{
                B_Label.textColor = UIColor.red
            }
            else{
                B_Label.textColor = UIColor.darkGray
            }
            
            if subject1_C_Array[self.ind] == subject1_picks[ind]{
                C_Label.textColor = UIColor.red
            }
            else{
                C_Label.textColor = UIColor.darkGray
            }
            
            if subject1_D_Array[self.ind] == subject1_picks[ind]{
                D_Label.textColor = UIColor.red
            }
            else{
                D_Label.textColor = UIColor.darkGray
            }
            
            if subject1_E_Array[self.ind] == subject1_picks[ind]{
                E_Label.textColor = UIColor.red
            }
            else{
                E_Label.textColor = UIColor.darkGray
            }
            
            IndicatorLabel.text = String(ind+1) + " in 20"

        }
        else if (sender.selectedSegmentIndex == 1)
        {
            F_Label.isHidden = true
            G_Label.isHidden = true
            H_Label.isHidden = true
            
            F_WebView.isHidden = true
            G_WebView.isHidden = true
            H_WebView.isHidden = true
            
            ind = 0
            
            SubjectNumber_by_Indicator = 1
            QuestionWebView.loadHTMLString(texts[0] + "\n" + subject2_q[ind], baseURL: nil)
            
            A_WebView.loadHTMLString(subject2_A_Array[ind], baseURL: nil)
            B_WebView.loadHTMLString(subject2_B_Array[ind], baseURL: nil)
            C_WebView.loadHTMLString(subject2_C_Array[ind], baseURL: nil)
            D_WebView.loadHTMLString(subject2_D_Array[ind], baseURL: nil)
            E_WebView.loadHTMLString(subject2_E_Array[ind], baseURL: nil)
            
            if subject2_A_Array[self.ind] == subject2_picks[ind]{
                A_Label.textColor = UIColor.red
            }
            else{
                A_Label.textColor = UIColor.darkGray
            }
            
            if subject2_B_Array[self.ind] == subject2_picks[ind]{
                B_Label.textColor = UIColor.red
            }
            else{
                B_Label.textColor = UIColor.darkGray
            }
            
            if subject2_C_Array[self.ind] == subject2_picks[ind]{
                C_Label.textColor = UIColor.red
            }
            else{
                C_Label.textColor = UIColor.darkGray
            }
            
            if subject2_D_Array[self.ind] == subject2_picks[ind]{
                D_Label.textColor = UIColor.red
            }
            else{
                D_Label.textColor = UIColor.darkGray
            }
            
            if subject2_E_Array[self.ind] == subject2_picks[ind]{
                E_Label.textColor = UIColor.red
            }
            else{
                E_Label.textColor = UIColor.darkGray
            }
            
            IndicatorLabel.text = String(ind+1) + " in 20"
        }
        else if (sender.selectedSegmentIndex == 2)
        {
            F_Label.isHidden = true
            G_Label.isHidden = true
            H_Label.isHidden = true
            
            F_WebView.isHidden = true
            G_WebView.isHidden = true
            H_WebView.isHidden = true
            
            ind = 0
            
            SubjectNumber_by_Indicator = 2
            QuestionWebView.loadHTMLString(subject3_q[ind], baseURL: nil)
            
            A_WebView.loadHTMLString(subject3_A_Array[ind], baseURL: nil)
            B_WebView.loadHTMLString(subject3_B_Array[ind], baseURL: nil)
            C_WebView.loadHTMLString(subject3_C_Array[ind], baseURL: nil)
            D_WebView.loadHTMLString(subject3_D_Array[ind], baseURL: nil)
            E_WebView.loadHTMLString(subject3_E_Array[ind], baseURL: nil)
            
            if subject3_A_Array[self.ind] == subject3_picks[ind]{
                A_Label.textColor = UIColor.red
            }
            else{
                A_Label.textColor = UIColor.darkGray
            }
            
            if subject3_B_Array[self.ind] == subject3_picks[ind]{
                B_Label.textColor = UIColor.red
            }
            else{
                B_Label.textColor = UIColor.darkGray
            }
            
            if subject3_C_Array[self.ind] == subject3_picks[ind]{
                C_Label.textColor = UIColor.red
            }
            else{
                C_Label.textColor = UIColor.darkGray
            }
            
            if subject3_D_Array[self.ind] == subject3_picks[ind]{
                D_Label.textColor = UIColor.red
            }
            else{
                D_Label.textColor = UIColor.darkGray
            }
            
            if subject3_E_Array[self.ind] == subject3_picks[ind]{
                E_Label.textColor = UIColor.red
            }
            else{
                E_Label.textColor = UIColor.darkGray
            }
            
            IndicatorLabel.text = String(ind+1) + " in 20"
        }
        else if (sender.selectedSegmentIndex == 3)
        {
            F_Label.isHidden = true
            G_Label.isHidden = true
            H_Label.isHidden = true
            
            F_WebView.isHidden = true
            G_WebView.isHidden = true
            H_WebView.isHidden = true
            
            ind = 0

            SubjectNumber_by_Indicator = 3
            QuestionWebView.loadHTMLString(subject4_q[ind], baseURL: nil)
            
            A_WebView.loadHTMLString(subject4_A_Array[ind], baseURL: nil)
            B_WebView.loadHTMLString(subject4_B_Array[ind], baseURL: nil)
            C_WebView.loadHTMLString(subject4_C_Array[ind], baseURL: nil)
            D_WebView.loadHTMLString(subject4_D_Array[ind], baseURL: nil)
            E_WebView.loadHTMLString(subject4_E_Array[ind], baseURL: nil)
            
            if subject4_A_Array[self.ind] == subject4_picks[ind]{
                A_Label.textColor = UIColor.red
            }
            else{
                A_Label.textColor = UIColor.darkGray
            }
            
            if subject4_B_Array[self.ind] == subject4_picks[ind]{
                B_Label.textColor = UIColor.red
            }
            else{
                B_Label.textColor = UIColor.darkGray
            }
            
            if subject4_C_Array[self.ind] == subject4_picks[ind]{
                C_Label.textColor = UIColor.red
            }
            else{
                C_Label.textColor = UIColor.darkGray
            }
            
            if subject4_D_Array[self.ind] == subject4_picks[ind]{
                D_Label.textColor = UIColor.red
            }
            else{
                D_Label.textColor = UIColor.darkGray
            }
            
            if subject4_E_Array[self.ind] == subject4_picks[ind]{
                E_Label.textColor = UIColor.red
            }
            else{
                E_Label.textColor = UIColor.darkGray
            }
            
            IndicatorLabel.text = String(ind+1) + " in 30"
        }
        else if (sender.selectedSegmentIndex == 4)
        {
            F_Label.isHidden = true
            G_Label.isHidden = true
            H_Label.isHidden = true
            
            F_WebView.isHidden = true
            G_WebView.isHidden = true
            H_WebView.isHidden = true
            
            ind = 0
            
            SubjectNumber_by_Indicator = 4
            QuestionWebView.loadHTMLString(subject5_q[ind], baseURL: nil)
            
            A_WebView.loadHTMLString(subject5_A_Array[ind], baseURL: nil)
            B_WebView.loadHTMLString(subject5_B_Array[ind], baseURL: nil)
            C_WebView.loadHTMLString(subject5_C_Array[ind], baseURL: nil)
            D_WebView.loadHTMLString(subject5_D_Array[ind], baseURL: nil)
            E_WebView.loadHTMLString(subject5_E_Array[ind], baseURL: nil)
            
            if subject5_A_Array[self.ind] == subject5_picks[ind]{
                A_Label.textColor = UIColor.red
            }
            else{
                A_Label.textColor = UIColor.darkGray
            }
            
            if subject5_B_Array[self.ind] == subject5_picks[ind]{
                B_Label.textColor = UIColor.red
            }
            else{
                B_Label.textColor = UIColor.darkGray
            }
            
            if subject5_C_Array[self.ind] == subject5_picks[ind]{
                C_Label.textColor = UIColor.red
            }
            else{
                C_Label.textColor = UIColor.darkGray
            }
            
            if subject5_D_Array[self.ind] == subject5_picks[ind]{
                D_Label.textColor = UIColor.red
            }
            else{
                D_Label.textColor = UIColor.darkGray
            }
            
            if subject5_E_Array[self.ind] == subject5_picks[ind]{
                E_Label.textColor = UIColor.red
            }
            else{
                E_Label.textColor = UIColor.darkGray
            }
            
            IndicatorLabel.text = String(ind+1) + " in 30"
        }
    }
    
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
    
    
    var SubjectNumber_by_Indicator = 0
    
    var subject1_id = "0"
    var subject2_id = "0"
    
    //subject1
    var subject1_q = [String]()
    var subject1_rightans = [String]()
    var subject1_A_Array = [String]()
    var subject1_B_Array = [String]()
    var subject1_C_Array = [String]()
    var subject1_D_Array = [String]()
    var subject1_E_Array = [String]()
    var subject1_picks = [String]()
    var subject1_point = 0
    var subject1_points_array = [Int]()
    //subject2
    var subject2_q = [String]()
    var subject2_rightans = [String]()
    var subject2_A_Array = [String]()
    var subject2_B_Array = [String]()
    var subject2_C_Array = [String]()
    var subject2_D_Array = [String]()
    var subject2_E_Array = [String]()
    var subject2_picks = [String]()
    var subject2_point = 0
    var subject2_points_array = [Int]()
    var texts = [String]()
    var texts_qnum = [String]()
    //subject3
    var subject3_q = [String]()
    var subject3_rightans = [String]()
    var subject3_A_Array = [String]()
    var subject3_B_Array = [String]()
    var subject3_C_Array = [String]()
    var subject3_D_Array = [String]()
    var subject3_E_Array = [String]()
    var subject3_picks = [String]()
    var subject3_point = 0
    var subject3_points_array = [Int]()
    //subject4
    var subject4_A_Array = [String]()
    var subject4_B_Array = [String]()
    var subject4_C_Array = [String]()
    var subject4_D_Array = [String]()
    var subject4_E_Array = [String]()
    var subject4_q = [String]()
    var subject4_rightans = [String]()
    var subject4_picks = [String]()
    //subject4 - 21-30
    var subject4_rightans21_30 = [[String]]()
    var subject4_Answers21_30 = [[String]]()
    var subject4_questions21_30 = [String]()
    var subject4_picks21_30 = [[String]]()
    var subject4_Num_Of_Right_Ans = [String]()
    var subject4_right_ans_in_ques = [String]()
    var subject4_Num_of_Right = ""
    var subject4_loop_ind = 0
    
    var subject4_point = 0
    var subject4_points_array = [Int]()



    //subject5
    var subject5_A_Array = [String]()
    var subject5_B_Array = [String]()
    var subject5_C_Array = [String]()
    var subject5_D_Array = [String]()
    var subject5_E_Array = [String]()
    var subject5_q = [String]()
    var subject5_rightans = [String]()
    var subject5_picks = [String]()
    //subject5 - 21-30
    var subject5_rightans21_30 = [[String]]()
    var subject5_Answers21_30 = [[String]]()
    var subject5_questions21_30 = [String]()
    var subject5_picks21_30 = [[String]]()
    var subject5_Num_Of_Right_Ans = [String]()
    var subject5_right_ans_in_ques = [String]()
    var subject5_Num_of_Right = ""
    var subject5_loop_ind = 0
    
    var subject5_point = 0
    var subject5_points_array = [Int]()
    
    
    var end_json: NSMutableDictionary = NSMutableDictionary()
    var jsonSTR = ""

    
    var time = 13800
    var timer = Timer()
    
    var ind = 0
    var Points = 0
    var check_ind = 0
    var HowManyPicks = 0
    
    var spend_time = 0
    var start_time = ""
    
    @objc func counter() {
        self.spend_time += 1
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        if subject1_A_Array[self.ind] == subject1_picks[ind]{
            A_Label.textColor = UIColor.red
        }
        else{
            A_Label.textColor = UIColor.darkGray
        }
        
        if subject1_B_Array[self.ind] == subject1_picks[ind]{
            B_Label.textColor = UIColor.red
        }
        else{
            B_Label.textColor = UIColor.darkGray
        }
        
        if subject1_C_Array[self.ind] == subject1_picks[ind]{
            C_Label.textColor = UIColor.red
        }
        else{
            C_Label.textColor = UIColor.darkGray
        }
        
        if subject1_D_Array[self.ind] == subject1_picks[ind]{
            D_Label.textColor = UIColor.red
        }
        else{
            D_Label.textColor = UIColor.darkGray
        }
        
        if subject1_E_Array[self.ind] == subject1_picks[ind]{
            E_Label.textColor = UIColor.red
        }
        else{
            E_Label.textColor = UIColor.darkGray
        }
    }
    
    override func viewDidLoad() {
        let defaults = UserDefaults.standard
        defaults.set("UNT", forKey: "Terminate")
        super.viewDidLoad()
        
        for _ in 0 ... 9 {
            subject5_Answers21_30.append([])
            subject5_rightans21_30.append([])
            subject4_Answers21_30.append([])
            subject4_rightans21_30.append([])
            subject4_right_ans_in_ques.append("0")
            subject5_right_ans_in_ques.append("0")
        }
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        self.start_time = formatter.string(from: date)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(UNT_TestingController.counter), userInfo: nil, repeats: true)
        
        
        self.subject1_id = defaults.string(forKey: "Subject1_id")!
        self.subject2_id = defaults.string(forKey: "Subject2_id")!
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: #selector(UNT_TestingController.action), userInfo: nil, repeats: true)
        
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
            for _ in 0 ... 9{
                subject4_picks21_30.append([])
                subject5_picks21_30.append([])
            }
            for _ in 0 ... 19{
                subject1_picks.append("")
                subject2_picks.append("")
                subject3_picks.append("")
                subject4_picks.append("")
                subject5_picks.append("")
            }
            for i in 0 ... 9{
                subject4_picks21_30[i].append("")
                subject4_picks21_30[i].append("")
                subject4_picks21_30[i].append("")
                subject5_picks21_30[i].append("")
                subject5_picks21_30[i].append("")
                subject5_picks21_30[i].append("")
            }
            getFile()
        }
        
        IndicatorLabel.text = String(ind+1) + " in 20"
        
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
            if SubjectNumber_by_Indicator == 0{
                subject1_picks[ind] = subject1_A_Array[ind]
            }
            if SubjectNumber_by_Indicator == 1{
                subject2_picks[ind] = subject2_A_Array[ind]
            }
            if SubjectNumber_by_Indicator == 2{
                subject3_picks[ind] = subject3_A_Array[ind]
            }
            if SubjectNumber_by_Indicator == 3{
                subject4_picks[ind] = subject4_A_Array[ind]
            }
            if SubjectNumber_by_Indicator == 4{
                subject5_picks[ind] = subject5_A_Array[ind]
            }
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
            if SubjectNumber_by_Indicator == 3{
                if A_Label.textColor == UIColor.red{
                    A_Label.textColor = UIColor.darkGray
                    if let index = subject4_picks21_30[ind-20].index(of: subject4_Answers21_30[ind-20][0] ) {
                        subject4_picks21_30[ind-20][index] = ""
                    }
                    subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! - 1)
                }
                else if A_Label.textColor == UIColor.black{
                    if Int(subject4_right_ans_in_ques[ind-20])! < 3{
                        if subject4_picks21_30[ind-20][0] == ""{
                            subject4_picks21_30[ind-20][0] = subject4_Answers21_30[ind-20][0]
                        }
                        else if subject4_picks21_30[ind-20][1] == ""{
                            subject4_picks21_30[ind-20][1] = subject4_Answers21_30[ind-20][0]
                        }
                        else if subject4_picks21_30[ind-20][2] == ""{
                            subject4_picks21_30[ind-20][2] = subject4_Answers21_30[ind-20][0]
                        }
                        A_Label.textColor = UIColor.red
                        subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! + 1)
                    }
                }
                else if A_Label.textColor == UIColor.darkGray{
                    if Int(subject4_right_ans_in_ques[ind-20])! < 3{
                        if subject4_picks21_30[ind-20][0] == ""{
                            subject4_picks21_30[ind-20][0] = subject4_Answers21_30[ind-20][0]
                        }
                        else if subject4_picks21_30[ind-20][1] == ""{
                            subject4_picks21_30[ind-20][1] = subject4_Answers21_30[ind-20][0]
                        }
                        else if subject4_picks21_30[ind-20][2] == ""{
                            subject4_picks21_30[ind-20][2] = subject4_Answers21_30[ind-20][0]
                        }
                        A_Label.textColor = UIColor.red
                        subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! + 1)
                    }
                }
            }
            if SubjectNumber_by_Indicator == 4{
                if A_Label.textColor == UIColor.red{
                    A_Label.textColor = UIColor.darkGray
                    if let index = subject5_picks21_30[ind-20].index(of: subject5_Answers21_30[ind-20][0] ) {
                        subject5_picks21_30[ind-20][index] = ""
                    }
                    subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! - 1)
                }
                else if A_Label.textColor == UIColor.black{
                    if Int(subject5_right_ans_in_ques[ind-20])! < 3{
                        if subject5_picks21_30[ind-20][0] == ""{
                            subject5_picks21_30[ind-20][0] = subject5_Answers21_30[ind-20][0]
                        }
                        else if subject5_picks21_30[ind-20][1] == ""{
                            subject5_picks21_30[ind-20][1] = subject5_Answers21_30[ind-20][0]
                        }
                        else if subject5_picks21_30[ind-20][2] == ""{
                            subject5_picks21_30[ind-20][2] = subject5_Answers21_30[ind-20][0]
                        }
                        A_Label.textColor = UIColor.red
                        subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! + 1)
                    }
                }
                else if A_Label.textColor == UIColor.darkGray{
                    if Int(subject5_right_ans_in_ques[ind-20])! < 3{
                        if subject5_picks21_30[ind-20][0] == ""{
                            subject5_picks21_30[ind-20][0] = subject5_Answers21_30[ind-20][0]
                        }
                        else if subject5_picks21_30[ind-20][1] == ""{
                            subject5_picks21_30[ind-20][1] = subject5_Answers21_30[ind-20][0]
                        }
                        else if subject5_picks21_30[ind-20][2] == ""{
                            subject5_picks21_30[ind-20][2] = subject5_Answers21_30[ind-20][0]
                        }
                        A_Label.textColor = UIColor.red
                        subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! + 1)
                    }
                }
            }
        }
    }
    
    @objc func B_WebView_Tapped() {
        if ind <= 19{
            if SubjectNumber_by_Indicator == 0{
                subject1_picks[ind] = subject1_B_Array[ind]
            }
            if SubjectNumber_by_Indicator == 1{
                subject2_picks[ind] = subject2_B_Array[ind]
            }
            if SubjectNumber_by_Indicator == 2{
                subject3_picks[ind] = subject3_B_Array[ind]
            }
            if SubjectNumber_by_Indicator == 3{
                subject4_picks[ind] = subject4_B_Array[ind]
            }
            if SubjectNumber_by_Indicator == 4{
                subject5_picks[ind] = subject5_B_Array[ind]
            }
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
            if SubjectNumber_by_Indicator == 3{
                if B_Label.textColor == UIColor.red{
                    B_Label.textColor = UIColor.darkGray
                    if let index = subject4_picks21_30[ind-20].index(of: subject4_Answers21_30[ind-20][1] ) {
                        subject4_picks21_30[ind-20][index] = ""
                    }
                    subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! - 1)
                }
                else if B_Label.textColor == UIColor.black{
                    if Int(subject4_right_ans_in_ques[ind-20])! < 3{
                        if subject4_picks21_30[ind-20][0] == ""{
                            subject4_picks21_30[ind-20][0] = subject4_Answers21_30[ind-20][1]
                        }
                        else if subject4_picks21_30[ind-20][1] == ""{
                            subject4_picks21_30[ind-20][1] = subject4_Answers21_30[ind-20][1]
                        }
                        else if subject4_picks21_30[ind-20][2] == ""{
                            subject4_picks21_30[ind-20][2] = subject4_Answers21_30[ind-20][1]
                        }
                        B_Label.textColor = UIColor.red
                        subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! + 1)
                    }
                }
                else if B_Label.textColor == UIColor.darkGray{
                    if Int(subject4_right_ans_in_ques[ind-20])! < 3{
                        if subject4_picks21_30[ind-20][0] == ""{
                            subject4_picks21_30[ind-20][0] = subject4_Answers21_30[ind-20][1]
                        }
                        else if subject4_picks21_30[ind-20][1] == ""{
                            subject4_picks21_30[ind-20][1] = subject4_Answers21_30[ind-20][1]
                        }
                        else if subject4_picks21_30[ind-20][2] == ""{
                            subject4_picks21_30[ind-20][2] = subject4_Answers21_30[ind-20][1]
                        }
                        B_Label.textColor = UIColor.red
                        subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! + 1)
                    }
                }
            }
            if SubjectNumber_by_Indicator == 4{
                if B_Label.textColor == UIColor.red{
                    B_Label.textColor = UIColor.darkGray
                    if let index = subject5_picks21_30[ind-20].index(of: subject5_Answers21_30[ind-20][1] ) {
                        subject5_picks21_30[ind-20][index] = ""
                    }
                    subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! - 1)
                }
                else if B_Label.textColor == UIColor.black{
                    if Int(subject5_right_ans_in_ques[ind-20])! < 3{
                        if subject5_picks21_30[ind-20][0] == ""{
                            subject5_picks21_30[ind-20][0] = subject5_Answers21_30[ind-20][1]
                        }
                        else if subject5_picks21_30[ind-20][1] == ""{
                            subject5_picks21_30[ind-20][1] = subject5_Answers21_30[ind-20][1]
                        }
                        else if subject5_picks21_30[ind-20][2] == ""{
                            subject5_picks21_30[ind-20][2] = subject5_Answers21_30[ind-20][1]
                        }
                        B_Label.textColor = UIColor.red
                        subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! + 1)
                    }
                }
                else if B_Label.textColor == UIColor.darkGray{
                    if Int(subject5_right_ans_in_ques[ind-20])! < 3{
                        if subject5_picks21_30[ind-20][0] == ""{
                            subject5_picks21_30[ind-20][0] = subject5_Answers21_30[ind-20][1]
                        }
                        else if subject5_picks21_30[ind-20][1] == ""{
                            subject5_picks21_30[ind-20][1] = subject5_Answers21_30[ind-20][1]
                        }
                        else if subject5_picks21_30[ind-20][2] == ""{
                            subject5_picks21_30[ind-20][2] = subject5_Answers21_30[ind-20][1]
                        }
                        B_Label.textColor = UIColor.red
                        subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! + 1)
                    }
                }
            }
        }
    }
    
    @objc func C_WebView_Tapped() {
        if ind <= 19{
            if SubjectNumber_by_Indicator == 0{
                subject1_picks[ind] = subject1_C_Array[ind]
            }
            if SubjectNumber_by_Indicator == 1{
                subject2_picks[ind] = subject2_C_Array[ind]
            }
            if SubjectNumber_by_Indicator == 2{
                subject3_picks[ind] = subject3_C_Array[ind]
            }
            if SubjectNumber_by_Indicator == 3{
                subject4_picks[ind] = subject4_C_Array[ind]
            }
            if SubjectNumber_by_Indicator == 4{
                subject5_picks[ind] = subject5_C_Array[ind]
            }
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
            if SubjectNumber_by_Indicator == 3{
                if C_Label.textColor == UIColor.red{
                    C_Label.textColor = UIColor.darkGray
                    if let index = subject4_picks21_30[ind-20].index(of: subject4_Answers21_30[ind-20][2] ) {
                        subject4_picks21_30[ind-20][index] = ""
                    }
                    subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! - 1)
                }
                else if C_Label.textColor == UIColor.black{
                    if Int(subject4_right_ans_in_ques[ind-20])! < 3{
                        if subject4_picks21_30[ind-20][0] == ""{
                            subject4_picks21_30[ind-20][0] = subject4_Answers21_30[ind-20][2]
                        }
                        else if subject4_picks21_30[ind-20][1] == ""{
                            subject4_picks21_30[ind-20][1] = subject4_Answers21_30[ind-20][2]
                        }
                        else if subject4_picks21_30[ind-20][2] == ""{
                            subject4_picks21_30[ind-20][2] = subject4_Answers21_30[ind-20][2]
                        }
                        C_Label.textColor = UIColor.red
                        subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! + 1)
                    }
                }
                else if C_Label.textColor == UIColor.darkGray{
                    if Int(subject4_right_ans_in_ques[ind-20])! < 3{
                        if subject4_picks21_30[ind-20][0] == ""{
                            subject4_picks21_30[ind-20][0] = subject4_Answers21_30[ind-20][2]
                        }
                        else if subject4_picks21_30[ind-20][1] == ""{
                            subject4_picks21_30[ind-20][1] = subject4_Answers21_30[ind-20][2]
                        }
                        else if subject4_picks21_30[ind-20][2] == ""{
                            subject4_picks21_30[ind-20][2] = subject4_Answers21_30[ind-20][2]
                        }
                        C_Label.textColor = UIColor.red
                        subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! + 1)
                    }
                }
            }
            if SubjectNumber_by_Indicator == 4{
                if C_Label.textColor == UIColor.red{
                    C_Label.textColor = UIColor.darkGray
                    if let index = subject5_picks21_30[ind-20].index(of: subject5_Answers21_30[ind-20][2] ) {
                        subject5_picks21_30[ind-20][index] = ""
                    }
                    subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! - 1)
                }
                else if C_Label.textColor == UIColor.black{
                    if Int(subject5_right_ans_in_ques[ind-20])! < 3{
                        if subject5_picks21_30[ind-20][0] == ""{
                            subject5_picks21_30[ind-20][0] = subject5_Answers21_30[ind-20][2]
                        }
                        else if subject5_picks21_30[ind-20][1] == ""{
                            subject5_picks21_30[ind-20][1] = subject5_Answers21_30[ind-20][2]
                        }
                        else if subject5_picks21_30[ind-20][2] == ""{
                            subject5_picks21_30[ind-20][2] = subject5_Answers21_30[ind-20][2]
                        }
                        C_Label.textColor = UIColor.red
                        subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! + 1)
                    }
                }
                else if C_Label.textColor == UIColor.darkGray{
                    if Int(subject5_right_ans_in_ques[ind-20])! < 3{
                        if subject5_picks21_30[ind-20][0] == ""{
                            subject5_picks21_30[ind-20][0] = subject5_Answers21_30[ind-20][2]
                        }
                        else if subject5_picks21_30[ind-20][1] == ""{
                            subject5_picks21_30[ind-20][1] = subject5_Answers21_30[ind-20][2]
                        }
                        else if subject5_picks21_30[ind-20][2] == ""{
                            subject5_picks21_30[ind-20][2] = subject5_Answers21_30[ind-20][2]
                        }
                        C_Label.textColor = UIColor.red
                        subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! + 1)
                    }
                }
            }
        }
    }
    
    @objc func D_WebView_Tapped() {
        if ind <= 19{
            if SubjectNumber_by_Indicator == 0{
                subject1_picks[ind] = subject1_D_Array[ind]
            }
            if SubjectNumber_by_Indicator == 1{
                subject2_picks[ind] = subject2_D_Array[ind]
            }
            if SubjectNumber_by_Indicator == 2{
                subject3_picks[ind] = subject3_D_Array[ind]
            }
            if SubjectNumber_by_Indicator == 3{
                subject4_picks[ind] = subject4_D_Array[ind]
            }
            if SubjectNumber_by_Indicator == 4{
                subject5_picks[ind] = subject5_D_Array[ind]
            }
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
            if SubjectNumber_by_Indicator == 3{
                if D_Label.textColor == UIColor.red{
                    D_Label.textColor = UIColor.darkGray
                    if let index = subject4_picks21_30[ind-20].index(of: subject4_Answers21_30[ind-20][3] ) {
                        subject4_picks21_30[ind-20][index] = ""
                    }
                    subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! - 1)
                }
                else if D_Label.textColor == UIColor.black{
                    if Int(subject4_right_ans_in_ques[ind-20])! < 3{
                        if subject4_picks21_30[ind-20][0] == ""{
                            subject4_picks21_30[ind-20][0] = subject4_Answers21_30[ind-20][3]
                        }
                        else if subject4_picks21_30[ind-20][1] == ""{
                            subject4_picks21_30[ind-20][1] = subject4_Answers21_30[ind-20][3]
                        }
                        else if subject4_picks21_30[ind-20][2] == ""{
                            subject4_picks21_30[ind-20][2] = subject4_Answers21_30[ind-20][3]
                        }
                        D_Label.textColor = UIColor.red
                        subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! + 1)
                    }
                }
                else if D_Label.textColor == UIColor.darkGray{
                    if Int(subject4_right_ans_in_ques[ind-20])! < 3{
                        if subject4_picks21_30[ind-20][0] == ""{
                            subject4_picks21_30[ind-20][0] = subject4_Answers21_30[ind-20][3]
                        }
                        else if subject4_picks21_30[ind-20][1] == ""{
                            subject4_picks21_30[ind-20][1] = subject4_Answers21_30[ind-20][3]
                        }
                        else if subject4_picks21_30[ind-20][2] == ""{
                            subject4_picks21_30[ind-20][2] = subject4_Answers21_30[ind-20][3]
                        }
                        D_Label.textColor = UIColor.red
                        subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! + 1)
                    }
                }
            }
            if SubjectNumber_by_Indicator == 4{
                if D_Label.textColor == UIColor.red{
                    D_Label.textColor = UIColor.darkGray
                    if let index = subject5_picks21_30[ind-20].index(of: subject5_Answers21_30[ind-20][3] ) {
                        subject5_picks21_30[ind-20][index] = ""
                    }
                    subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! - 1)
                }
                else if D_Label.textColor == UIColor.black{
                    if Int(subject5_right_ans_in_ques[ind-20])! < 3{
                        if subject5_picks21_30[ind-20][0] == ""{
                            subject5_picks21_30[ind-20][0] = subject5_Answers21_30[ind-20][3]
                        }
                        else if subject5_picks21_30[ind-20][1] == ""{
                            subject5_picks21_30[ind-20][1] = subject5_Answers21_30[ind-20][3]
                        }
                        else if subject5_picks21_30[ind-20][2] == ""{
                            subject5_picks21_30[ind-20][2] = subject5_Answers21_30[ind-20][3]
                        }
                        D_Label.textColor = UIColor.red
                        subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! + 1)
                    }
                }
                else if D_Label.textColor == UIColor.darkGray{
                    if Int(subject5_right_ans_in_ques[ind-20])! < 3{
                        if subject5_picks21_30[ind-20][0] == ""{
                            subject5_picks21_30[ind-20][0] = subject5_Answers21_30[ind-20][3]
                        }
                        else if subject5_picks21_30[ind-20][1] == ""{
                            subject5_picks21_30[ind-20][1] = subject5_Answers21_30[ind-20][3]
                        }
                        else if subject5_picks21_30[ind-20][2] == ""{
                            subject5_picks21_30[ind-20][2] = subject5_Answers21_30[ind-20][3]
                        }
                        D_Label.textColor = UIColor.red
                        subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! + 1)
                    }
                }
            }
        }
    }
    
    @objc func E_WebView_Tapped() {
        if ind <= 19{
            if SubjectNumber_by_Indicator == 0{
                subject1_picks[ind] = subject1_E_Array[ind]
            }
            if SubjectNumber_by_Indicator == 1{
                subject2_picks[ind] = subject2_E_Array[ind]
            }
            if SubjectNumber_by_Indicator == 2{
                subject3_picks[ind] = subject3_E_Array[ind]
            }
            if SubjectNumber_by_Indicator == 3{
                subject4_picks[ind] = subject4_E_Array[ind]
            }
            if SubjectNumber_by_Indicator == 4{
                subject5_picks[ind] = subject5_E_Array[ind]
            }
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
            if SubjectNumber_by_Indicator == 3{
                if E_Label.textColor == UIColor.red{
                    E_Label.textColor = UIColor.darkGray
                    if let index = subject4_picks21_30[ind-20].index(of: subject4_Answers21_30[ind-20][4] ) {
                        subject4_picks21_30[ind-20][index] = ""
                    }
                    subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! - 1)
                }
                else if E_Label.textColor == UIColor.black{
                    if Int(subject4_right_ans_in_ques[ind-20])! < 3{
                        if subject4_picks21_30[ind-20][0] == ""{
                            subject4_picks21_30[ind-20][0] = subject4_Answers21_30[ind-20][4]
                        }
                        else if subject4_picks21_30[ind-20][1] == ""{
                            subject4_picks21_30[ind-20][1] = subject4_Answers21_30[ind-20][4]
                        }
                        else if subject4_picks21_30[ind-20][2] == ""{
                            subject4_picks21_30[ind-20][2] = subject4_Answers21_30[ind-20][4]
                        }
                        E_Label.textColor = UIColor.red
                        subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! + 1)
                    }
                }
                else if E_Label.textColor == UIColor.darkGray{
                    if Int(subject4_right_ans_in_ques[ind-20])! < 3{
                        if subject4_picks21_30[ind-20][0] == ""{
                            subject4_picks21_30[ind-20][0] = subject4_Answers21_30[ind-20][4]
                        }
                        else if subject4_picks21_30[ind-20][1] == ""{
                            subject4_picks21_30[ind-20][1] = subject4_Answers21_30[ind-20][4]
                        }
                        else if subject4_picks21_30[ind-20][2] == ""{
                            subject4_picks21_30[ind-20][2] = subject4_Answers21_30[ind-20][4]
                        }
                        E_Label.textColor = UIColor.red
                        subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! + 1)
                    }
                }
            }
            if SubjectNumber_by_Indicator == 4{
                if E_Label.textColor == UIColor.red{
                    E_Label.textColor = UIColor.darkGray
                    if let index = subject5_picks21_30[ind-20].index(of: subject5_Answers21_30[ind-20][4] ) {
                        subject5_picks21_30[ind-20][index] = ""
                    }
                    subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! - 1)
                }
                else if E_Label.textColor == UIColor.black{
                    if Int(subject5_right_ans_in_ques[ind-20])! < 3{
                        if subject5_picks21_30[ind-20][0] == ""{
                            subject5_picks21_30[ind-20][0] = subject5_Answers21_30[ind-20][4]
                        }
                        else if subject5_picks21_30[ind-20][1] == ""{
                            subject5_picks21_30[ind-20][1] = subject5_Answers21_30[ind-20][4]
                        }
                        else if subject5_picks21_30[ind-20][2] == ""{
                            subject5_picks21_30[ind-20][2] = subject5_Answers21_30[ind-20][4]
                        }
                        E_Label.textColor = UIColor.red
                        subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! + 1)
                    }
                }
                else if E_Label.textColor == UIColor.darkGray{
                    if Int(subject5_right_ans_in_ques[ind-20])! < 3{
                        if subject5_picks21_30[ind-20][0] == ""{
                            subject5_picks21_30[ind-20][0] = subject5_Answers21_30[ind-20][4]
                        }
                        else if subject5_picks21_30[ind-20][1] == ""{
                            subject5_picks21_30[ind-20][1] = subject5_Answers21_30[ind-20][4]
                        }
                        else if subject5_picks21_30[ind-20][2] == ""{
                            subject5_picks21_30[ind-20][2] = subject5_Answers21_30[ind-20][4]
                        }
                        E_Label.textColor = UIColor.red
                        subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! + 1)
                    }
                }
            }
        }
    }
    
    @objc func F_WebView_Tapped() {
        if ind > 19{
            if SubjectNumber_by_Indicator == 3{
                if F_Label.textColor == UIColor.red{
                    F_Label.textColor = UIColor.darkGray
                    if let index = subject4_picks21_30[ind-20].index(of: subject4_Answers21_30[ind-20][5] ) {
                        subject4_picks21_30[ind-20][index] = ""
                    }
                    subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! - 1)
                }
                else if F_Label.textColor == UIColor.black{
                    if Int(subject4_right_ans_in_ques[ind-20])! < 3{
                        if subject4_picks21_30[ind-20][0] == ""{
                            subject4_picks21_30[ind-20][0] = subject4_Answers21_30[ind-20][5]
                        }
                        else if subject4_picks21_30[ind-20][1] == ""{
                            subject4_picks21_30[ind-20][1] = subject4_Answers21_30[ind-20][5]
                        }
                        else if subject4_picks21_30[ind-20][2] == ""{
                            subject4_picks21_30[ind-20][2] = subject4_Answers21_30[ind-20][5]
                        }
                        F_Label.textColor = UIColor.red
                        subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! + 1)
                    }
                }
                else if F_Label.textColor == UIColor.darkGray{
                    if Int(subject4_right_ans_in_ques[ind-20])! < 3{
                        if subject4_picks21_30[ind-20][0] == ""{
                            subject4_picks21_30[ind-20][0] = subject4_Answers21_30[ind-20][5]
                        }
                        else if subject4_picks21_30[ind-20][1] == ""{
                            subject4_picks21_30[ind-20][1] = subject4_Answers21_30[ind-20][5]
                        }
                        else if subject4_picks21_30[ind-20][2] == ""{
                            subject4_picks21_30[ind-20][2] = subject4_Answers21_30[ind-20][5]
                        }
                        F_Label.textColor = UIColor.red
                        subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! + 1)
                    }
                }
            }
            if SubjectNumber_by_Indicator == 4{
                if F_Label.textColor == UIColor.red{
                    F_Label.textColor = UIColor.darkGray
                    if let index = subject5_picks21_30[ind-20].index(of: subject5_Answers21_30[ind-20][5] ) {
                        subject5_picks21_30[ind-20][index] = ""
                    }
                    subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! - 1)
                }
                else if F_Label.textColor == UIColor.black{
                    if Int(subject5_right_ans_in_ques[ind-20])! < 3{
                        if subject5_picks21_30[ind-20][0] == ""{
                            subject5_picks21_30[ind-20][0] = subject5_Answers21_30[ind-20][5]
                        }
                        else if subject5_picks21_30[ind-20][1] == ""{
                            subject5_picks21_30[ind-20][1] = subject5_Answers21_30[ind-20][5]
                        }
                        else if subject5_picks21_30[ind-20][2] == ""{
                            subject5_picks21_30[ind-20][2] = subject5_Answers21_30[ind-20][5]
                        }
                        F_Label.textColor = UIColor.red
                        subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! + 1)
                    }
                }
                else if F_Label.textColor == UIColor.darkGray{
                    if Int(subject5_right_ans_in_ques[ind-20])! < 3{
                        if subject5_picks21_30[ind-20][0] == ""{
                            subject5_picks21_30[ind-20][0] = subject5_Answers21_30[ind-20][5]
                        }
                        else if subject5_picks21_30[ind-20][1] == ""{
                            subject5_picks21_30[ind-20][1] = subject5_Answers21_30[ind-20][5]
                        }
                        else if subject5_picks21_30[ind-20][2] == ""{
                            subject5_picks21_30[ind-20][2] = subject5_Answers21_30[ind-20][5]
                        }
                        F_Label.textColor = UIColor.red
                        subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! + 1)
                    }
                }
            }
        }
    }
    
    @objc func G_WebView_Tapped() {
        if ind > 19{
            if SubjectNumber_by_Indicator == 3{
                if G_Label.textColor == UIColor.red{
                    G_Label.textColor = UIColor.darkGray
                    if let index = subject4_picks21_30[ind-20].index(of: subject4_Answers21_30[ind-20][6] ) {
                        subject4_picks21_30[ind-20][index] = ""
                    }
                    subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! - 1)
                }
                else if G_Label.textColor == UIColor.black{
                    if Int(subject4_right_ans_in_ques[ind-20])! < 3{
                        if subject4_picks21_30[ind-20][0] == ""{
                            subject4_picks21_30[ind-20][0] = subject4_Answers21_30[ind-20][6]
                        }
                        else if subject4_picks21_30[ind-20][1] == ""{
                            subject4_picks21_30[ind-20][1] = subject4_Answers21_30[ind-20][6]
                        }
                        else if subject4_picks21_30[ind-20][2] == ""{
                            subject4_picks21_30[ind-20][2] = subject4_Answers21_30[ind-20][6]
                        }
                        G_Label.textColor = UIColor.red
                        subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! + 1)
                    }
                }
                else if G_Label.textColor == UIColor.darkGray{
                    if Int(subject4_right_ans_in_ques[ind-20])! < 3{
                        if subject4_picks21_30[ind-20][0] == ""{
                            subject4_picks21_30[ind-20][0] = subject4_Answers21_30[ind-20][6]
                        }
                        else if subject4_picks21_30[ind-20][1] == ""{
                            subject4_picks21_30[ind-20][1] = subject4_Answers21_30[ind-20][6]
                        }
                        else if subject4_picks21_30[ind-20][2] == ""{
                            subject4_picks21_30[ind-20][2] = subject4_Answers21_30[ind-20][6]
                        }
                        G_Label.textColor = UIColor.red
                        subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! + 1)
                    }
                }
            }
            if SubjectNumber_by_Indicator == 4{
                if G_Label.textColor == UIColor.red{
                    G_Label.textColor = UIColor.darkGray
                    if let index = subject5_picks21_30[ind-20].index(of: subject5_Answers21_30[ind-20][6] ) {
                        subject5_picks21_30[ind-20][index] = ""
                    }
                    subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! - 1)
                }
                else if G_Label.textColor == UIColor.black{
                    if Int(subject5_right_ans_in_ques[ind-20])! < 3{
                        if subject5_picks21_30[ind-20][0] == ""{
                            subject5_picks21_30[ind-20][0] = subject5_Answers21_30[ind-20][6]
                        }
                        else if subject5_picks21_30[ind-20][1] == ""{
                            subject5_picks21_30[ind-20][1] = subject5_Answers21_30[ind-20][6]
                        }
                        else if subject5_picks21_30[ind-20][2] == ""{
                            subject5_picks21_30[ind-20][2] = subject5_Answers21_30[ind-20][6]
                        }
                        G_Label.textColor = UIColor.red
                        subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! + 1)
                    }
                }
                else if G_Label.textColor == UIColor.darkGray{
                    if Int(subject5_right_ans_in_ques[ind-20])! < 3{
                        if subject5_picks21_30[ind-20][0] == ""{
                            subject5_picks21_30[ind-20][0] = subject5_Answers21_30[ind-20][6]
                        }
                        else if subject5_picks21_30[ind-20][1] == ""{
                            subject5_picks21_30[ind-20][1] = subject5_Answers21_30[ind-20][6]
                        }
                        else if subject5_picks21_30[ind-20][2] == ""{
                            subject5_picks21_30[ind-20][2] = subject5_Answers21_30[ind-20][6]
                        }
                        G_Label.textColor = UIColor.red
                        subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! + 1)
                    }
                }
            }
        }
    }
    
    @objc func H_WebView_Tapped() {
        if ind > 19{
            if SubjectNumber_by_Indicator == 3{
                if H_Label.textColor == UIColor.red{
                    H_Label.textColor = UIColor.darkGray
                    if let index = subject4_picks21_30[ind-20].index(of: subject4_Answers21_30[ind-20][7] ) {
                        subject4_picks21_30[ind-20][index] = ""
                    }
                    subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! - 1)
                }
                else if H_Label.textColor == UIColor.black{
                    if Int(subject4_right_ans_in_ques[ind-20])! < 3{
                        if subject4_picks21_30[ind-20][0] == ""{
                            subject4_picks21_30[ind-20][0] = subject4_Answers21_30[ind-20][7]
                        }
                        else if subject4_picks21_30[ind-20][1] == ""{
                            subject4_picks21_30[ind-20][1] = subject4_Answers21_30[ind-20][7]
                        }
                        else if subject4_picks21_30[ind-20][2] == ""{
                            subject4_picks21_30[ind-20][2] = subject4_Answers21_30[ind-20][7]
                        }
                        H_Label.textColor = UIColor.red
                        subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! + 1)
                    }
                }
                else if H_Label.textColor == UIColor.darkGray{
                    if Int(subject4_right_ans_in_ques[ind-20])! < 3{
                        if subject4_picks21_30[ind-20][0] == ""{
                            subject4_picks21_30[ind-20][0] = subject4_Answers21_30[ind-20][7]
                        }
                        else if subject4_picks21_30[ind-20][1] == ""{
                            subject4_picks21_30[ind-20][1] = subject4_Answers21_30[ind-20][7]
                        }
                        else if subject4_picks21_30[ind-20][2] == ""{
                            subject4_picks21_30[ind-20][2] = subject4_Answers21_30[ind-20][7]
                        }
                        H_Label.textColor = UIColor.red
                        subject4_right_ans_in_ques[ind-20] = String(Int(subject4_right_ans_in_ques[ind-20])! + 1)
                    }
                }
            }
            if SubjectNumber_by_Indicator == 4{
                if H_Label.textColor == UIColor.red{
                    H_Label.textColor = UIColor.darkGray
                    if let index = subject5_picks21_30[ind-20].index(of: subject5_Answers21_30[ind-20][7] ) {
                        subject5_picks21_30[ind-20][index] = ""
                    }
                    subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! - 1)
                }
                else if H_Label.textColor == UIColor.black{
                    if Int(subject5_right_ans_in_ques[ind-20])! < 3{
                        if subject5_picks21_30[ind-20][0] == ""{
                            subject5_picks21_30[ind-20][0] = subject5_Answers21_30[ind-20][7]
                        }
                        else if subject5_picks21_30[ind-20][1] == ""{
                            subject5_picks21_30[ind-20][1] = subject5_Answers21_30[ind-20][7]
                        }
                        else if subject5_picks21_30[ind-20][2] == ""{
                            subject5_picks21_30[ind-20][2] = subject5_Answers21_30[ind-20][7]
                        }
                        H_Label.textColor = UIColor.red
                        subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! + 1)
                    }
                }
                else if H_Label.textColor == UIColor.darkGray{
                    if Int(subject5_right_ans_in_ques[ind-20])! < 3{
                        if subject5_picks21_30[ind-20][0] == ""{
                            subject5_picks21_30[ind-20][0] = subject5_Answers21_30[ind-20][7]
                        }
                        else if subject5_picks21_30[ind-20][1] == ""{
                            subject5_picks21_30[ind-20][1] = subject5_Answers21_30[ind-20][7]
                        }
                        else if subject5_picks21_30[ind-20][2] == ""{
                            subject5_picks21_30[ind-20][2] = subject5_Answers21_30[ind-20][7]
                        }
                        H_Label.textColor = UIColor.red
                        subject5_right_ans_in_ques[ind-20] = String(Int(subject5_right_ans_in_ques[ind-20])! + 1)
                    }
                }
            }
        }
    }
    
    
    
    func getFileFromTerminatedTest(){
        let defaults = UserDefaults.standard
        let json = defaults.value(forKey: "TerminatedTestBody") as! NSDictionary
        
        self.subject1_picks = defaults.array(forKey: "TerminatedUNTSubject1_picks") as! [String]
        self.subject2_picks = defaults.array(forKey: "TerminatedUNTSubject2_picks") as! [String]
        self.subject3_picks = defaults.array(forKey: "TerminatedUNTSubject3_picks") as! [String]
        self.subject4_picks = defaults.array(forKey: "TerminatedUNTSubject4_picks") as! [String]
        self.subject4_picks21_30 = defaults.array(forKey: "TerminatedUNTSubject4_picks21_30") as! [[String]]
        self.subject5_picks = defaults.array(forKey: "TerminatedUNTSubject5_picks") as! [String]
        self.subject5_picks21_30 = defaults.array(forKey: "TerminatedUNTSubject5_picks21_30") as! [[String]]


        
        let html_text = "<!DOCTYPE html> <html> <head> <style> div { width: 100%; word-wrap: break-word; font-size: 40px;} img{width: 15%; height: auto; max-height:170px;} </style> </head> <body> <div>"
        let html_bottom = "</div> </body> </html>"
        
        if let msgArray = json.value(forKey: "msg") as? NSDictionary {
            //first subject
            if let questionArray = msgArray.value(forKey: "subject_1") as? NSDictionary {
                
                if let subject_test = questionArray.value(forKey: "questions") as? NSArray{
                    
                    //looping through all the elements
                    for question in subject_test{
                        //converting the element to a dictionary
                        if let questionDict = question as? NSDictionary {
                            
                            //getting the name from the dictionary
                            if let object = questionDict.value(forKey: "q") {
                                //adding the name to the array
                                self.subject1_q.append(html_text + (object as? String)! + html_bottom)
                            }
                            
                            
                            // Right answers
                            if let a = questionDict.value(forKey: "a"){
                                self.subject1_rightans.append(html_text + (a as? String)! + html_bottom)
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
                            
                            self.subject1_A_Array.append(ThisAnswers[0])
                            self.subject1_B_Array.append(ThisAnswers[1])
                            self.subject1_C_Array.append(ThisAnswers[2])
                            self.subject1_D_Array.append(ThisAnswers[3])
                            self.subject1_E_Array.append(ThisAnswers[4])
                        }
                    }
                }
            }
            //second subject
            if let questionArray = msgArray.value(forKey: "subject_2") as? NSDictionary {
                //Texts
                if let texts = questionArray.value(forKey: "texts") as? NSArray{
                    for text_object in texts{
                        if let text = (text_object as? NSDictionary)!.value(forKey: "text"){
                            self.texts.append(html_text + (text as? String)! + html_bottom)
                        }
                        if let textqnum = (text_object as? NSDictionary)!.value(forKey: "question_number"){
                            self.texts_qnum.append(textqnum as! String)
                        }
                    }
                }
                
                if let subject_test = questionArray.value(forKey: "questions") as? NSArray{
                    
                    //looping through all the elements
                    for question in subject_test{
                        //converting the element to a dictionary
                        if let questionDict = question as? NSDictionary {
                            
                            //getting the name from the dictionary
                            if let object = questionDict.value(forKey: "q") {
                                //adding the name to the array
                                self.subject2_q.append(html_text + (object as? String)! + html_bottom)
                            }
                            
                            
                            // Right answers
                            if let a = questionDict.value(forKey: "a"){
                                self.subject2_rightans.append(html_text + (a as? String)! + html_bottom)
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
                            
                            self.subject2_A_Array.append(ThisAnswers[0])
                            self.subject2_B_Array.append(ThisAnswers[1])
                            self.subject2_C_Array.append(ThisAnswers[2])
                            self.subject2_D_Array.append(ThisAnswers[3])
                            self.subject2_E_Array.append(ThisAnswers[4])
                        }
                    }
                }
            }
            //third subject
            if let questionArray = msgArray.value(forKey: "subject_3") as? NSDictionary {
                
                if let subject_test = questionArray.value(forKey: "questions") as? NSArray{
                    
                    //looping through all the elements
                    for question in subject_test{
                        //converting the element to a dictionary
                        if let questionDict = question as? NSDictionary {
                            
                            //getting the name from the dictionary
                            if let object = questionDict.value(forKey: "q") {
                                //adding the name to the array
                                self.subject3_q.append(html_text + (object as? String)! + html_bottom)
                            }
                            
                            // Right answers
                            if let a = questionDict.value(forKey: "a"){
                                self.subject3_rightans.append(html_text + (a as? String)! + html_bottom)
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
                            
                            self.subject3_A_Array.append(ThisAnswers[0])
                            self.subject3_B_Array.append(ThisAnswers[1])
                            self.subject3_C_Array.append(ThisAnswers[2])
                            self.subject3_D_Array.append(ThisAnswers[3])
                            self.subject3_E_Array.append(ThisAnswers[4])
                        }
                    }
                }
            }
            if let questionArray = msgArray.value(forKey: "subject_" + defaults.string(forKey: "Subject1_id")!) as? NSDictionary {
                
                defaults.set(questionArray.value(forKey: "subject_name"), forKey: "subject1_name")
                
                if let subject_test = questionArray.value(forKey: "questions1_20") as? NSArray{
                    
                    //looping through all the elements
                    for question in subject_test{
                        //converting the element to a dictionary
                        if let questionDict = question as? NSDictionary {
                            
                            //getting the name from the dictionary
                            if let object = questionDict.value(forKey: "q") {
                                //adding the name to the array
                                self.subject4_q.append(html_text + (object as? String)! + html_bottom)
                            }
                            
                            // Right answers
                            if let a = questionDict.value(forKey: "a"){
                                self.subject4_rightans.append(html_text + (a as? String)! + html_bottom)
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
                            
                            self.subject4_A_Array.append(ThisAnswers[0])
                            self.subject4_B_Array.append(ThisAnswers[1])
                            self.subject4_C_Array.append(ThisAnswers[2])
                            self.subject4_D_Array.append(ThisAnswers[3])
                            self.subject4_E_Array.append(ThisAnswers[4])
                        }
                    }
                }
                if let subject_test = questionArray.value(forKey: "questions21_30") as? NSArray {
                    //looping through all the elements
                    for question in subject_test{
                        
                        //converting the element to a dictionary
                        if let questionDict = question as? NSDictionary {
                            
                            //getting the name from the dictionary
                            if let object = questionDict.value(forKey: "q") {
                                //adding the name to the array
                                self.subject4_questions21_30.append(html_text + (object as? String)! + html_bottom)
                                
                            }
                            
                            
                            // A variant
                            if let a = questionDict.value(forKey: "a"){
                                self.subject4_Answers21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // B variant
                            if let a = questionDict.value(forKey: "b"){
                                self.subject4_Answers21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // C variant
                            if let a = questionDict.value(forKey: "c"){
                                self.subject4_Answers21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // D variant
                            if let a = questionDict.value(forKey: "d"){
                                self.subject4_Answers21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // E variant
                            if let a = questionDict.value(forKey: "e"){
                                self.subject4_Answers21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // F variant
                            if let a = questionDict.value(forKey: "f"){
                                self.subject4_Answers21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // G variant
                            if let a = questionDict.value(forKey: "g"){
                                self.subject4_Answers21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // H variant
                            if let a = questionDict.value(forKey: "h"){
                                self.subject4_Answers21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            
                            
                            // Right Ans Nums
                            if let Right_ans_nums = questionDict.value(forKey: "right_ans_nums"){
                                self.subject4_Num_of_Right = (Right_ans_nums as! String)
                                self.subject4_Num_Of_Right_Ans.append(self.subject4_Num_of_Right)
                            }
                            
                            if Int(self.subject4_Num_of_Right) == 1{
                                if let a = questionDict.value(forKey: "a"){
                                    self.subject4_rightans21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                            }
                            
                            if Int(self.subject4_Num_of_Right) == 2{
                                if let a = questionDict.value(forKey: "a"){
                                    self.subject4_rightans21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                                if let a = questionDict.value(forKey: "b"){
                                    self.subject4_rightans21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                            }
                            
                            if Int(self.subject4_Num_of_Right) == 3{
                                if let a = questionDict.value(forKey: "a"){
                                    self.subject4_rightans21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                                if let a = questionDict.value(forKey: "b"){
                                    self.subject4_rightans21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                                if let a = questionDict.value(forKey: "c"){
                                    self.subject4_rightans21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                            }
                            
                            self.subject4_Answers21_30[self.subject4_loop_ind].shuffle()
                            
                            self.subject4_loop_ind = self.subject4_loop_ind + 1
                            
                        }
                    }
                }
            }
            if let questionArray = msgArray.value(forKey: "subject_" + defaults.string(forKey: "Subject2_id")!) as? NSDictionary {
                
                defaults.set(questionArray.value(forKey: "subject_name"), forKey: "subject2_name")
                
                if let subject_test = questionArray.value(forKey: "questions1_20") as? NSArray{
                    
                    //looping through all the elements
                    for question in subject_test{
                        //converting the element to a dictionary
                        if let questionDict = question as? NSDictionary {
                            
                            //getting the name from the dictionary
                            if let object = questionDict.value(forKey: "q") {
                                //adding the name to the array
                                self.subject5_q.append(html_text + (object as? String)! + html_bottom)
                            }
                            
                            // Right answers
                            if let a = questionDict.value(forKey: "a"){
                                self.subject5_rightans.append(html_text + (a as? String)! + html_bottom)
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
                            
                            self.subject5_A_Array.append(ThisAnswers[0])
                            self.subject5_B_Array.append(ThisAnswers[1])
                            self.subject5_C_Array.append(ThisAnswers[2])
                            self.subject5_D_Array.append(ThisAnswers[3])
                            self.subject5_E_Array.append(ThisAnswers[4])
                        }
                    }
                }
                
                if let subject_test = questionArray.value(forKey: "questions21_30") as? NSArray {
                    //looping through all the elements
                    for question in subject_test{
                        
                        //converting the element to a dictionary
                        if let questionDict = question as? NSDictionary {
                            
                            //getting the name from the dictionary
                            if let object = questionDict.value(forKey: "q") {
                                //adding the name to the array
                                self.subject5_questions21_30.append(html_text + (object as? String)! + html_bottom)
                                
                            }
                            
                            
                            // A variant
                            if let a = questionDict.value(forKey: "a"){
                                self.subject5_Answers21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // B variant
                            if let a = questionDict.value(forKey: "b"){
                                self.subject5_Answers21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // C variant
                            if let a = questionDict.value(forKey: "c"){
                                self.subject5_Answers21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // D variant
                            if let a = questionDict.value(forKey: "d"){
                                self.subject5_Answers21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // E variant
                            if let a = questionDict.value(forKey: "e"){
                                self.subject5_Answers21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // F variant
                            if let a = questionDict.value(forKey: "f"){
                                self.subject5_Answers21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // G variant
                            if let a = questionDict.value(forKey: "g"){
                                self.subject5_Answers21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            // H variant
                            if let a = questionDict.value(forKey: "h"){
                                self.subject5_Answers21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                            }
                            
                            
                            // Right Ans Nums
                            if let Right_ans_nums = questionDict.value(forKey: "right_ans_nums"){
                                self.subject5_Num_of_Right = (Right_ans_nums as! String)
                                self.subject5_Num_Of_Right_Ans.append(self.subject5_Num_of_Right)
                            }
                            
                            if Int(self.subject5_Num_of_Right) == 1{
                                if let a = questionDict.value(forKey: "a"){
                                    self.subject5_rightans21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                            }
                            
                            if Int(self.subject5_Num_of_Right) == 2{
                                if let a = questionDict.value(forKey: "a"){
                                    self.subject5_rightans21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                                if let a = questionDict.value(forKey: "b"){
                                    self.subject5_rightans21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                            }
                            
                            if Int(self.subject5_Num_of_Right) == 3{
                                if let a = questionDict.value(forKey: "a"){
                                    self.subject5_rightans21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                                if let a = questionDict.value(forKey: "b"){
                                    self.subject5_rightans21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                                if let a = questionDict.value(forKey: "c"){
                                    self.subject5_rightans21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                }
                            }
                            
                            self.subject5_Answers21_30[self.subject5_loop_ind].shuffle()
                            
                            self.subject5_loop_ind = self.subject5_loop_ind + 1
                            
                        }
                    }
                }
            }
            
            self.QuestionWebView.loadHTMLString(self.subject1_q[self.ind], baseURL: nil)
            
            self.A_WebView.loadHTMLString(self.subject1_A_Array[self.ind], baseURL: nil)
            self.B_WebView.loadHTMLString(self.subject1_B_Array[self.ind], baseURL: nil)
            self.C_WebView.loadHTMLString(self.subject1_C_Array[self.ind], baseURL: nil)
            self.D_WebView.loadHTMLString(self.subject1_D_Array[self.ind], baseURL: nil)
            self.E_WebView.loadHTMLString(self.subject1_E_Array[self.ind], baseURL: nil)
            
            self.SubjectSegmentControll.setTitle(defaults.string(forKey: "subject1_name"), forSegmentAt: 3)
            self.SubjectSegmentControll.setTitle(defaults.string(forKey: "subject2_name"), forSegmentAt: 4)
        }
        
    }
    
    //Post Method
    func getFile(){
        let url = URL(string: "http://185.111.107.111/api/order.php")!
        var request = URLRequest(url: url)
        let defaults = UserDefaults.standard
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        let postString = "user_id=" + defaults.string(forKey: "ID")! + "&lang_id=" + defaults.string(forKey: "Language")! + "&test_type=2" + "&subject1_id=" + defaults.string(forKey: "Subject1_id")! + "&subject2_id=" + defaults.string(forKey: "Subject2_id")!
        request.httpBody = postString.data(using: .utf8)
        
        //            Get response
        let task = URLSession.shared.dataTask(with: request, completionHandler:{(data, response, error) in
            do{
                let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! NSDictionary
                let status = json["status"]!
                let defaults = UserDefaults.standard
                
                defaults.setValue(json, forKey: "Temporary")
                
//                print(json) // printing JSON File
                
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
                            //first subject
                            if let questionArray = msgArray.value(forKey: "subject_1") as? NSDictionary {
                                
                                if let subject_test = questionArray.value(forKey: "questions") as? NSArray{
                                    
                                    //looping through all the elements
                                    for question in subject_test{
                                        //converting the element to a dictionary
                                        if let questionDict = question as? NSDictionary {
                                            
                                            //getting the name from the dictionary
                                            if let object = questionDict.value(forKey: "q") {
                                                //adding the name to the array
                                                self.subject1_q.append(html_text + (object as? String)! + html_bottom)
                                            }
                                            
                                            
                                            // Right answers
                                            if let a = questionDict.value(forKey: "a"){
                                                self.subject1_rightans.append(html_text + (a as? String)! + html_bottom)
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
                                            
                                            self.subject1_A_Array.append(ThisAnswers[0])
                                            self.subject1_B_Array.append(ThisAnswers[1])
                                            self.subject1_C_Array.append(ThisAnswers[2])
                                            self.subject1_D_Array.append(ThisAnswers[3])
                                            self.subject1_E_Array.append(ThisAnswers[4])
                                        }
                                    }
                                }
                            }
                            //second subject
                            if let questionArray = msgArray.value(forKey: "subject_2") as? NSDictionary {
                                //Texts
                                if let texts = questionArray.value(forKey: "texts") as? NSArray{
                                    for text_object in texts{
                                        if let text = (text_object as? NSDictionary)!.value(forKey: "text"){
                                            self.texts.append(html_text + (text as? String)! + html_bottom)
                                        }
                                        if let textqnum = (text_object as? NSDictionary)!.value(forKey: "question_number"){
                                            self.texts_qnum.append(textqnum as! String)
                                        }
                                    }
                                }
                                
                                if let subject_test = questionArray.value(forKey: "questions") as? NSArray{
                                    
                                    //looping through all the elements
                                    for question in subject_test{
                                        //converting the element to a dictionary
                                        if let questionDict = question as? NSDictionary {
                                            
                                            //getting the name from the dictionary
                                            if let object = questionDict.value(forKey: "q") {
                                                //adding the name to the array
                                                self.subject2_q.append(html_text + (object as? String)! + html_bottom)
                                            }
                                            
                                            
                                            // Right answers
                                            if let a = questionDict.value(forKey: "a"){
                                                self.subject2_rightans.append(html_text + (a as? String)! + html_bottom)
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
                                            
                                            self.subject2_A_Array.append(ThisAnswers[0])
                                            self.subject2_B_Array.append(ThisAnswers[1])
                                            self.subject2_C_Array.append(ThisAnswers[2])
                                            self.subject2_D_Array.append(ThisAnswers[3])
                                            self.subject2_E_Array.append(ThisAnswers[4])
                                        }
                                    }
                                }
                            }
                            //third subject
                            if let questionArray = msgArray.value(forKey: "subject_3") as? NSDictionary {
                                
                                if let subject_test = questionArray.value(forKey: "questions") as? NSArray{
                                    
                                    //looping through all the elements
                                    for question in subject_test{
                                        //converting the element to a dictionary
                                        if let questionDict = question as? NSDictionary {
                                            
                                            //getting the name from the dictionary
                                            if let object = questionDict.value(forKey: "q") {
                                                //adding the name to the array
                                                self.subject3_q.append(html_text + (object as? String)! + html_bottom)
                                            }
                                            
                                            // Right answers
                                            if let a = questionDict.value(forKey: "a"){
                                                self.subject3_rightans.append(html_text + (a as? String)! + html_bottom)
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
                                            
                                            self.subject3_A_Array.append(ThisAnswers[0])
                                            self.subject3_B_Array.append(ThisAnswers[1])
                                            self.subject3_C_Array.append(ThisAnswers[2])
                                            self.subject3_D_Array.append(ThisAnswers[3])
                                            self.subject3_E_Array.append(ThisAnswers[4])
                                        }
                                    }
                                }
                            }
                            if let questionArray = msgArray.value(forKey: "subject_" + defaults.string(forKey: "Subject1_id")!) as? NSDictionary {
                                
                                defaults.set(questionArray.value(forKey: "subject_name"), forKey: "subject1_name")
                                
                                if let subject_test = questionArray.value(forKey: "questions1_20") as? NSArray{
                                    
                                    //looping through all the elements
                                    for question in subject_test{
                                        //converting the element to a dictionary
                                        if let questionDict = question as? NSDictionary {
                                            
                                            //getting the name from the dictionary
                                            if let object = questionDict.value(forKey: "q") {
                                                //adding the name to the array
                                                self.subject4_q.append(html_text + (object as? String)! + html_bottom)
                                            }
                                            
                                            // Right answers
                                            if let a = questionDict.value(forKey: "a"){
                                                self.subject4_rightans.append(html_text + (a as? String)! + html_bottom)
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
                                            
                                            self.subject4_A_Array.append(ThisAnswers[0])
                                            self.subject4_B_Array.append(ThisAnswers[1])
                                            self.subject4_C_Array.append(ThisAnswers[2])
                                            self.subject4_D_Array.append(ThisAnswers[3])
                                            self.subject4_E_Array.append(ThisAnswers[4])
                                        }
                                    }
                                }
                                if let subject_test = questionArray.value(forKey: "questions21_30") as? NSArray {
                                    //looping through all the elements
                                    for question in subject_test{
                                        
                                        //converting the element to a dictionary
                                        if let questionDict = question as? NSDictionary {
                                            
                                            //getting the name from the dictionary
                                            if let object = questionDict.value(forKey: "q") {
                                                //adding the name to the array
                                                self.subject4_questions21_30.append(html_text + (object as? String)! + html_bottom)
                                                
                                            }
                                            
                                            
                                            // A variant
                                            if let a = questionDict.value(forKey: "a"){
                                                self.subject4_Answers21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                            }
                                            // B variant
                                            if let a = questionDict.value(forKey: "b"){
                                                self.subject4_Answers21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                            }
                                            // C variant
                                            if let a = questionDict.value(forKey: "c"){
                                                self.subject4_Answers21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                            }
                                            // D variant
                                            if let a = questionDict.value(forKey: "d"){
                                                self.subject4_Answers21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                            }
                                            // E variant
                                            if let a = questionDict.value(forKey: "e"){
                                                self.subject4_Answers21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                            }
                                            // F variant
                                            if let a = questionDict.value(forKey: "f"){
                                                self.subject4_Answers21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                            }
                                            // G variant
                                            if let a = questionDict.value(forKey: "g"){
                                                self.subject4_Answers21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                            }
                                            // H variant
                                            if let a = questionDict.value(forKey: "h"){
                                                self.subject4_Answers21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                            }
                                            
                                            
                                            // Right Ans Nums
                                            if let Right_ans_nums = questionDict.value(forKey: "right_ans_nums"){
                                                self.subject4_Num_of_Right = (Right_ans_nums as! String)
                                                self.subject4_Num_Of_Right_Ans.append(self.subject4_Num_of_Right)
                                            }
                                            
                                            if Int(self.subject4_Num_of_Right) == 1{
                                                if let a = questionDict.value(forKey: "a"){
                                                    self.subject4_rightans21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                                }
                                            }
                                            
                                            if Int(self.subject4_Num_of_Right) == 2{
                                                if let a = questionDict.value(forKey: "a"){
                                                    self.subject4_rightans21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                                }
                                                if let a = questionDict.value(forKey: "b"){
                                                    self.subject4_rightans21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                                }
                                            }
                                            
                                            if Int(self.subject4_Num_of_Right) == 3{
                                                if let a = questionDict.value(forKey: "a"){
                                                    self.subject4_rightans21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                                }
                                                if let a = questionDict.value(forKey: "b"){
                                                    self.subject4_rightans21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                                }
                                                if let a = questionDict.value(forKey: "c"){
                                                    self.subject4_rightans21_30[self.subject4_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                                }
                                            }
                                            
                                            self.subject4_Answers21_30[self.subject4_loop_ind].shuffle()
                                            
                                            self.subject4_loop_ind = self.subject4_loop_ind + 1
                                            
                                        }
                                    }
                                }
                            }
                            if let questionArray = msgArray.value(forKey: "subject_" + defaults.string(forKey: "Subject2_id")!) as? NSDictionary {
                                
                                defaults.set(questionArray.value(forKey: "subject_name"), forKey: "subject2_name")
                                
                                if let subject_test = questionArray.value(forKey: "questions1_20") as? NSArray{
                                    
                                    //looping through all the elements
                                    for question in subject_test{
                                        //converting the element to a dictionary
                                        if let questionDict = question as? NSDictionary {
                                            
                                            //getting the name from the dictionary
                                            if let object = questionDict.value(forKey: "q") {
                                                //adding the name to the array
                                                self.subject5_q.append(html_text + (object as? String)! + html_bottom)
                                            }
                                            
                                            // Right answers
                                            if let a = questionDict.value(forKey: "a"){
                                                self.subject5_rightans.append(html_text + (a as? String)! + html_bottom)
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
                                            
                                            self.subject5_A_Array.append(ThisAnswers[0])
                                            self.subject5_B_Array.append(ThisAnswers[1])
                                            self.subject5_C_Array.append(ThisAnswers[2])
                                            self.subject5_D_Array.append(ThisAnswers[3])
                                            self.subject5_E_Array.append(ThisAnswers[4])
                                        }
                                    }
                                }
                                
                                if let subject_test = questionArray.value(forKey: "questions21_30") as? NSArray {
                                    //looping through all the elements
                                    for question in subject_test{
                                        
                                        //converting the element to a dictionary
                                        if let questionDict = question as? NSDictionary {
                                            
                                            //getting the name from the dictionary
                                            if let object = questionDict.value(forKey: "q") {
                                                //adding the name to the array
                                                self.subject5_questions21_30.append(html_text + (object as? String)! + html_bottom)
                                                
                                            }
                                            
                                            
                                            // A variant
                                            if let a = questionDict.value(forKey: "a"){
                                                self.subject5_Answers21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                            }
                                            // B variant
                                            if let a = questionDict.value(forKey: "b"){
                                                self.subject5_Answers21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                            }
                                            // C variant
                                            if let a = questionDict.value(forKey: "c"){
                                                self.subject5_Answers21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                            }
                                            // D variant
                                            if let a = questionDict.value(forKey: "d"){
                                                self.subject5_Answers21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                            }
                                            // E variant
                                            if let a = questionDict.value(forKey: "e"){
                                                self.subject5_Answers21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                            }
                                            // F variant
                                            if let a = questionDict.value(forKey: "f"){
                                                self.subject5_Answers21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                            }
                                            // G variant
                                            if let a = questionDict.value(forKey: "g"){
                                                self.subject5_Answers21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                            }
                                            // H variant
                                            if let a = questionDict.value(forKey: "h"){
                                                self.subject5_Answers21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                            }
                                            
                                            
                                            // Right Ans Nums
                                            if let Right_ans_nums = questionDict.value(forKey: "right_ans_nums"){
                                                self.subject5_Num_of_Right = (Right_ans_nums as! String)
                                                self.subject5_Num_Of_Right_Ans.append(self.subject5_Num_of_Right)
                                            }
                                            
                                            if Int(self.subject5_Num_of_Right) == 1{
                                                if let a = questionDict.value(forKey: "a"){
                                                    self.subject5_rightans21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                                }
                                            }
                                            
                                            if Int(self.subject5_Num_of_Right) == 2{
                                                if let a = questionDict.value(forKey: "a"){
                                                    self.subject5_rightans21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                                }
                                                if let a = questionDict.value(forKey: "b"){
                                                    self.subject5_rightans21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                                }
                                            }
                                            
                                            if Int(self.subject5_Num_of_Right) == 3{
                                                if let a = questionDict.value(forKey: "a"){
                                                    self.subject5_rightans21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                                }
                                                if let a = questionDict.value(forKey: "b"){
                                                    self.subject5_rightans21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                                }
                                                if let a = questionDict.value(forKey: "c"){
                                                    self.subject5_rightans21_30[self.subject5_loop_ind].append(html_text + (a as? String)! + html_bottom)
                                                }
                                            }
                                            
                                            self.subject5_Answers21_30[self.subject5_loop_ind].shuffle()
                                            
                                            self.subject5_loop_ind = self.subject5_loop_ind + 1
                                            
                                        }
                                    }
                                }
                            }
                            
                            self.QuestionWebView.loadHTMLString(self.subject1_q[self.ind], baseURL: nil)
                            
                            self.A_WebView.loadHTMLString(self.subject1_A_Array[self.ind], baseURL: nil)
                            self.B_WebView.loadHTMLString(self.subject1_B_Array[self.ind], baseURL: nil)
                            self.C_WebView.loadHTMLString(self.subject1_C_Array[self.ind], baseURL: nil)
                            self.D_WebView.loadHTMLString(self.subject1_D_Array[self.ind], baseURL: nil)
                            self.E_WebView.loadHTMLString(self.subject1_E_Array[self.ind], baseURL: nil)
                            
                            self.SubjectSegmentControll.setTitle(defaults.string(forKey: "subject1_name"), forSegmentAt: 3)
                            self.SubjectSegmentControll.setTitle(defaults.string(forKey: "subject2_name"), forSegmentAt: 4)
                        }
                    }
                    else{
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
    
    @IBAction func NextButton_Tapped(_ sender: UIButton) {
        if SubjectNumber_by_Indicator == 0{
            if (ind < 19)
            {
                ind = ind + 1

                self.A_WebView.loadHTMLString(self.subject1_A_Array[self.ind], baseURL: nil)
                self.B_WebView.loadHTMLString(self.subject1_B_Array[self.ind], baseURL: nil)
                self.C_WebView.loadHTMLString(self.subject1_C_Array[self.ind], baseURL: nil)
                self.D_WebView.loadHTMLString(self.subject1_D_Array[self.ind], baseURL: nil)
                self.E_WebView.loadHTMLString(self.subject1_E_Array[self.ind], baseURL: nil)
                
                
                if subject1_A_Array[self.ind] == subject1_picks[ind]{
                    A_Label.textColor = UIColor.red
                }
                else{
                    A_Label.textColor = UIColor.darkGray
                }
                
                if subject1_B_Array[self.ind] == subject1_picks[ind]{
                    B_Label.textColor = UIColor.red
                }
                else{
                    B_Label.textColor = UIColor.darkGray
                }
                
                if subject1_C_Array[self.ind] == subject1_picks[ind]{
                    C_Label.textColor = UIColor.red
                }
                else{
                    C_Label.textColor = UIColor.darkGray
                }
                
                if subject1_D_Array[self.ind] == subject1_picks[ind]{
                    D_Label.textColor = UIColor.red
                }
                else{
                    D_Label.textColor = UIColor.darkGray
                }
                
                if subject1_E_Array[self.ind] == subject1_picks[ind]{
                    E_Label.textColor = UIColor.red
                }
                else{
                    E_Label.textColor = UIColor.darkGray
                }
                
                F_Label.isHidden = true
                G_Label.isHidden = true
                H_Label.isHidden = true
                F_WebView.isHidden = true
                G_WebView.isHidden = true
                H_WebView.isHidden = true
                
                IndicatorLabel.text = String(ind+1) + " in 20"
                QuestionWebView.loadHTMLString(subject1_q[ind], baseURL: nil)
            }
        }
        if SubjectNumber_by_Indicator == 1{
            if (ind < 19)
            {
                ind = ind + 1
                
                self.A_WebView.loadHTMLString(self.subject2_A_Array[self.ind], baseURL: nil)
                self.B_WebView.loadHTMLString(self.subject2_B_Array[self.ind], baseURL: nil)
                self.C_WebView.loadHTMLString(self.subject2_C_Array[self.ind], baseURL: nil)
                self.D_WebView.loadHTMLString(self.subject2_D_Array[self.ind], baseURL: nil)
                self.E_WebView.loadHTMLString(self.subject2_E_Array[self.ind], baseURL: nil)
                
                
                if subject2_A_Array[self.ind] == subject2_picks[ind]{
                    A_Label.textColor = UIColor.red
                }
                else{
                    A_Label.textColor = UIColor.darkGray
                }
                
                if subject2_B_Array[self.ind] == subject2_picks[ind]{
                    B_Label.textColor = UIColor.red
                }
                else{
                    B_Label.textColor = UIColor.darkGray
                }
                
                if subject2_C_Array[self.ind] == subject2_picks[ind]{
                    C_Label.textColor = UIColor.red
                }
                else{
                    C_Label.textColor = UIColor.darkGray
                }
                
                if subject2_D_Array[self.ind] == subject2_picks[ind]{
                    D_Label.textColor = UIColor.red
                }
                else{
                    D_Label.textColor = UIColor.darkGray
                }
                
                if subject2_E_Array[self.ind] == subject2_picks[ind]{
                    E_Label.textColor = UIColor.red
                }
                else{
                    E_Label.textColor = UIColor.darkGray
                }
                
                
                F_Label.isHidden = true
                G_Label.isHidden = true
                H_Label.isHidden = true
                F_WebView.isHidden = true
                G_WebView.isHidden = true
                H_WebView.isHidden = true
                
                IndicatorLabel.text = String(ind+1) + " in 20"
                
                if ind+1 <= Int(texts_qnum[0])!{
                    QuestionWebView.loadHTMLString(self.texts[0] + "\n" + subject2_q[ind], baseURL: nil)
                }
                else if ind+1 <= (Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                    QuestionWebView.loadHTMLString(self.texts[1] + "\n" + subject2_q[ind], baseURL: nil)
                }
                else if ind+1 <= (Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                    QuestionWebView.loadHTMLString(self.texts[2] + "\n" + subject2_q[ind], baseURL: nil)
                }
                else if ind+1 <= (Int(texts_qnum[3])! + Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                    QuestionWebView.loadHTMLString(self.texts[3] + "\n" + subject2_q[ind], baseURL: nil)
                }
                else if ind+1 <= (Int(texts_qnum[4])! + Int(texts_qnum[3])! + Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                    QuestionWebView.loadHTMLString(self.texts[4] + "\n" + subject2_q[ind], baseURL: nil)
                }
            }
        }
        if SubjectNumber_by_Indicator == 2{
            if (ind < 19)
            {
                ind = ind + 1
                
                self.A_WebView.loadHTMLString(self.subject3_A_Array[self.ind], baseURL: nil)
                self.B_WebView.loadHTMLString(self.subject3_B_Array[self.ind], baseURL: nil)
                self.C_WebView.loadHTMLString(self.subject3_C_Array[self.ind], baseURL: nil)
                self.D_WebView.loadHTMLString(self.subject3_D_Array[self.ind], baseURL: nil)
                self.E_WebView.loadHTMLString(self.subject3_E_Array[self.ind], baseURL: nil)
                
                if subject3_A_Array[self.ind] == subject3_picks[ind]{
                    A_Label.textColor = UIColor.red
                }
                else{
                    A_Label.textColor = UIColor.darkGray
                }
                
                if subject3_B_Array[self.ind] == subject3_picks[ind]{
                    B_Label.textColor = UIColor.red
                }
                else{
                    B_Label.textColor = UIColor.darkGray
                }
                
                if subject3_C_Array[self.ind] == subject3_picks[ind]{
                    C_Label.textColor = UIColor.red
                }
                else{
                    C_Label.textColor = UIColor.darkGray
                }
                
                if subject3_D_Array[self.ind] == subject3_picks[ind]{
                    D_Label.textColor = UIColor.red
                }
                else{
                    D_Label.textColor = UIColor.darkGray
                }
                
                if subject3_E_Array[self.ind] == subject3_picks[ind]{
                    E_Label.textColor = UIColor.red
                }
                else{
                    E_Label.textColor = UIColor.darkGray
                }
                
                F_Label.isHidden = true
                G_Label.isHidden = true
                H_Label.isHidden = true
                F_WebView.isHidden = true
                G_WebView.isHidden = true
                H_WebView.isHidden = true
                
                IndicatorLabel.text = String(ind+1) + " in 20"
                QuestionWebView.loadHTMLString(subject3_q[ind], baseURL: nil)
            }
        }
        if SubjectNumber_by_Indicator == 3{
            if (ind != 29){
                ind = ind + 1
                if (ind <= 19)
                {
                    self.A_WebView.loadHTMLString(self.subject4_A_Array[self.ind], baseURL: nil)
                    self.B_WebView.loadHTMLString(self.subject4_B_Array[self.ind], baseURL: nil)
                    self.C_WebView.loadHTMLString(self.subject4_C_Array[self.ind], baseURL: nil)
                    self.D_WebView.loadHTMLString(self.subject4_D_Array[self.ind], baseURL: nil)
                    self.E_WebView.loadHTMLString(self.subject4_E_Array[self.ind], baseURL: nil)
                    
                    if subject4_A_Array[self.ind] == subject4_picks[ind]{
                        A_Label.textColor = UIColor.red
                    }
                    else{
                        A_Label.textColor = UIColor.darkGray
                    }
                    
                    if subject4_B_Array[self.ind] == subject4_picks[ind]{
                        B_Label.textColor = UIColor.red
                    }
                    else{
                        B_Label.textColor = UIColor.darkGray
                    }
                    
                    if subject4_C_Array[self.ind] == subject4_picks[ind]{
                        C_Label.textColor = UIColor.red
                    }
                    else{
                        C_Label.textColor = UIColor.darkGray
                    }
                    
                    if subject4_D_Array[self.ind] == subject4_picks[ind]{
                        D_Label.textColor = UIColor.red
                    }
                    else{
                        D_Label.textColor = UIColor.darkGray
                    }
                    
                    if subject4_E_Array[self.ind] == subject4_picks[ind]{
                        E_Label.textColor = UIColor.red
                    }
                    else{
                        E_Label.textColor = UIColor.darkGray
                    }
                    
                    F_Label.isHidden = true
                    G_Label.isHidden = true
                    H_Label.isHidden = true
                    F_WebView.isHidden = true
                    G_WebView.isHidden = true
                    H_WebView.isHidden = true
                    
                    IndicatorLabel.text = String(ind+1) + " in 30"
                    QuestionWebView.loadHTMLString(subject4_q[ind], baseURL: nil)
                }
                else{
                    IndicatorLabel.text = String(ind+1) + " in 30"
                    QuestionWebView.loadHTMLString(subject4_questions21_30[ind-20], baseURL: nil)
                    
                    if self.subject4_Answers21_30[self.ind - 20][0] == subject4_picks21_30[ind - 20][0] || self.subject4_Answers21_30[self.ind - 20][0] == subject4_picks21_30[ind - 20][1] || self.subject4_Answers21_30[self.ind - 20][0] == subject4_picks21_30[ind - 20][2]{
                        A_Label.textColor = UIColor.red
                    }
                    else{
                        A_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject4_Answers21_30[self.ind - 20][1] == subject4_picks21_30[ind - 20][0] || self.subject4_Answers21_30[self.ind - 20][1] == subject4_picks21_30[ind - 20][1] || self.subject4_Answers21_30[self.ind - 20][1] == subject4_picks21_30[ind - 20][2]{
                        B_Label.textColor = UIColor.red
                    }
                    else{
                        B_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject4_Answers21_30[self.ind - 20][2] == subject4_picks21_30[ind - 20][0] || self.subject4_Answers21_30[self.ind - 20][2] == subject4_picks21_30[ind - 20][1] || self.subject4_Answers21_30[self.ind - 20][2] == subject4_picks21_30[ind - 20][2]{
                        C_Label.textColor = UIColor.red
                    }
                    else{
                        C_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject4_Answers21_30[self.ind - 20][3] == subject4_picks21_30[ind - 20][0] || self.subject4_Answers21_30[self.ind - 20][3] == subject4_picks21_30[ind - 20][1] || self.subject4_Answers21_30[self.ind - 20][3] == subject4_picks21_30[ind - 20][2]{
                        D_Label.textColor = UIColor.red
                    }
                    else{
                        D_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject4_Answers21_30[self.ind - 20][4] == subject4_picks21_30[ind - 20][0] || self.subject4_Answers21_30[self.ind - 20][4] == subject4_picks21_30[ind - 20][1] || self.subject4_Answers21_30[self.ind - 20][4] == subject4_picks21_30[ind - 20][2]{
                        E_Label.textColor = UIColor.red
                    }
                    else{
                        E_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject4_Answers21_30[self.ind - 20][5] == subject4_picks21_30[ind - 20][0] || self.subject4_Answers21_30[self.ind - 20][5] == subject4_picks21_30[ind - 20][1] || self.subject4_Answers21_30[self.ind - 20][5] == subject4_picks21_30[ind - 20][2]{
                        F_Label.textColor = UIColor.red
                    }
                    else{
                        F_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject4_Answers21_30[self.ind - 20][6] == subject4_picks21_30[ind - 20][0] || self.subject4_Answers21_30[self.ind - 20][6] == subject4_picks21_30[ind - 20][1] || self.subject4_Answers21_30[self.ind - 20][6] == subject4_picks21_30[ind - 20][2]{
                        G_Label.textColor = UIColor.red
                    }
                    else{
                        G_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject4_Answers21_30[self.ind - 20][7] == subject4_picks21_30[ind - 20][0] || self.subject4_Answers21_30[self.ind - 20][7] == subject4_picks21_30[ind - 20][1] || self.subject4_Answers21_30[self.ind - 20][7] == subject4_picks21_30[ind - 20][2]{
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
                    
                    self.A_WebView.loadHTMLString(self.subject4_Answers21_30[self.ind - 20][0], baseURL: nil)
                    self.B_WebView.loadHTMLString(self.subject4_Answers21_30[self.ind - 20][1], baseURL: nil)
                    self.C_WebView.loadHTMLString(self.subject4_Answers21_30[self.ind - 20][2], baseURL: nil)
                    self.D_WebView.loadHTMLString(self.subject4_Answers21_30[self.ind - 20][3], baseURL: nil)
                    self.E_WebView.loadHTMLString(self.subject4_Answers21_30[self.ind - 20][4], baseURL: nil)
                    self.F_WebView.loadHTMLString(self.subject4_Answers21_30[self.ind - 20][5], baseURL: nil)
                    self.G_WebView.loadHTMLString(self.subject4_Answers21_30[self.ind - 20][6], baseURL: nil)
                    self.H_WebView.loadHTMLString(self.subject4_Answers21_30[self.ind - 20][7], baseURL: nil)
                }
            }
        }
        if SubjectNumber_by_Indicator == 4{
            if (ind != 29){
                ind = ind + 1
                if (ind <= 19)
                {
                    self.A_WebView.loadHTMLString(self.subject5_A_Array[self.ind], baseURL: nil)
                    self.B_WebView.loadHTMLString(self.subject5_B_Array[self.ind], baseURL: nil)
                    self.C_WebView.loadHTMLString(self.subject5_C_Array[self.ind], baseURL: nil)
                    self.D_WebView.loadHTMLString(self.subject5_D_Array[self.ind], baseURL: nil)
                    self.E_WebView.loadHTMLString(self.subject5_E_Array[self.ind], baseURL: nil)
                    
                    if subject5_A_Array[self.ind] == subject5_picks[ind]{
                        A_Label.textColor = UIColor.red
                    }
                    else{
                        A_Label.textColor = UIColor.darkGray
                    }
                    
                    if subject5_B_Array[self.ind] == subject5_picks[ind]{
                        B_Label.textColor = UIColor.red
                    }
                    else{
                        B_Label.textColor = UIColor.darkGray
                    }
                    
                    if subject5_C_Array[self.ind] == subject5_picks[ind]{
                        C_Label.textColor = UIColor.red
                    }
                    else{
                        C_Label.textColor = UIColor.darkGray
                    }
                    
                    if subject5_D_Array[self.ind] == subject5_picks[ind]{
                        D_Label.textColor = UIColor.red
                    }
                    else{
                        D_Label.textColor = UIColor.darkGray
                    }
                    
                    if subject5_E_Array[self.ind] == subject5_picks[ind]{
                        E_Label.textColor = UIColor.red
                    }
                    else{
                        E_Label.textColor = UIColor.darkGray
                    }
                    
                    F_Label.isHidden = true
                    G_Label.isHidden = true
                    H_Label.isHidden = true
                    F_WebView.isHidden = true
                    G_WebView.isHidden = true
                    H_WebView.isHidden = true
                    
                    IndicatorLabel.text = String(ind+1) + " in 30"
                    QuestionWebView.loadHTMLString(subject5_q[ind], baseURL: nil)
                }
                else{
                    IndicatorLabel.text = String(ind+1) + " in 30"
                    QuestionWebView.loadHTMLString(subject5_questions21_30[ind-20], baseURL: nil)
                    
                    if self.subject5_Answers21_30[self.ind - 20][0] == subject5_picks21_30[ind - 20][0] || self.subject5_Answers21_30[self.ind - 20][0] == subject5_picks21_30[ind - 20][1] || self.subject5_Answers21_30[self.ind - 20][0] == subject5_picks21_30[ind - 20][2]{
                        A_Label.textColor = UIColor.red
                    }
                    else{
                        A_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject5_Answers21_30[self.ind - 20][1] == subject5_picks21_30[ind - 20][0] || self.subject5_Answers21_30[self.ind - 20][1] == subject5_picks21_30[ind - 20][1] || self.subject5_Answers21_30[self.ind - 20][1] == subject5_picks21_30[ind - 20][2]{
                        B_Label.textColor = UIColor.red
                    }
                    else{
                        B_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject5_Answers21_30[self.ind - 20][2] == subject5_picks21_30[ind - 20][0] || self.subject5_Answers21_30[self.ind - 20][2] == subject5_picks21_30[ind - 20][1] || self.subject5_Answers21_30[self.ind - 20][2] == subject5_picks21_30[ind - 20][2]{
                        C_Label.textColor = UIColor.red
                    }
                    else{
                        C_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject5_Answers21_30[self.ind - 20][3] == subject5_picks21_30[ind - 20][0] || self.subject5_Answers21_30[self.ind - 20][3] == subject5_picks21_30[ind - 20][1] || self.subject5_Answers21_30[self.ind - 20][3] == subject5_picks21_30[ind - 20][2]{
                        D_Label.textColor = UIColor.red
                    }
                    else{
                        D_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject5_Answers21_30[self.ind - 20][4] == subject5_picks21_30[ind - 20][0] || self.subject5_Answers21_30[self.ind - 20][4] == subject5_picks21_30[ind - 20][1] || self.subject5_Answers21_30[self.ind - 20][4] == subject5_picks21_30[ind - 20][2]{
                        E_Label.textColor = UIColor.red
                    }
                    else{
                        E_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject5_Answers21_30[self.ind - 20][5] == subject5_picks21_30[ind - 20][0] || self.subject5_Answers21_30[self.ind - 20][5] == subject5_picks21_30[ind - 20][1] || self.subject5_Answers21_30[self.ind - 20][5] == subject5_picks21_30[ind - 20][2]{
                        F_Label.textColor = UIColor.red
                    }
                    else{
                        F_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject5_Answers21_30[self.ind - 20][6] == subject5_picks21_30[ind - 20][0] || self.subject5_Answers21_30[self.ind - 20][6] == subject5_picks21_30[ind - 20][1] || self.subject5_Answers21_30[self.ind - 20][6] == subject5_picks21_30[ind - 20][2]{
                        G_Label.textColor = UIColor.red
                    }
                    else{
                        G_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject5_Answers21_30[self.ind - 20][7] == subject5_picks21_30[ind - 20][0] || self.subject5_Answers21_30[self.ind - 20][7] == subject5_picks21_30[ind - 20][1] || self.subject5_Answers21_30[self.ind - 20][7] == subject5_picks21_30[ind - 20][2]{
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
                    
                    self.A_WebView.loadHTMLString(self.subject5_Answers21_30[self.ind - 20][0], baseURL: nil)
                    self.B_WebView.loadHTMLString(self.subject5_Answers21_30[self.ind - 20][1], baseURL: nil)
                    self.C_WebView.loadHTMLString(self.subject5_Answers21_30[self.ind - 20][2], baseURL: nil)
                    self.D_WebView.loadHTMLString(self.subject5_Answers21_30[self.ind - 20][3], baseURL: nil)
                    self.E_WebView.loadHTMLString(self.subject5_Answers21_30[self.ind - 20][4], baseURL: nil)
                    self.F_WebView.loadHTMLString(self.subject5_Answers21_30[self.ind - 20][5], baseURL: nil)
                    self.G_WebView.loadHTMLString(self.subject5_Answers21_30[self.ind - 20][6], baseURL: nil)
                    self.H_WebView.loadHTMLString(self.subject5_Answers21_30[self.ind - 20][7], baseURL: nil)
                }
            }
        }
        let defaults = UserDefaults.standard
        defaults.set(self.subject1_picks, forKey: "TerminatedUNTSubject1_picks")
        defaults.set(self.subject2_picks, forKey: "TerminatedUNTSubject2_picks")
        defaults.set(self.subject3_picks, forKey: "TerminatedUNTSubject3_picks")
        defaults.set(self.subject4_picks, forKey: "TerminatedUNTSubject4_picks")
        defaults.set(self.subject4_picks21_30, forKey: "TerminatedUNTSubject4_picks21_30")
        defaults.set(self.subject5_picks, forKey: "TerminatedUNTSubject5_picks")
        defaults.set(self.subject5_picks21_30, forKey: "TerminatedUNTSubject5_picks21_30")
    }
    
    
    
    @IBAction func BackButton_Tapped(_ sender: UIButton) {
        if SubjectNumber_by_Indicator == 0{
            if (ind > 0)
            {
                ind = ind - 1
                
                self.A_WebView.loadHTMLString(self.subject1_A_Array[self.ind], baseURL: nil)
                self.B_WebView.loadHTMLString(self.subject1_B_Array[self.ind], baseURL: nil)
                self.C_WebView.loadHTMLString(self.subject1_C_Array[self.ind], baseURL: nil)
                self.D_WebView.loadHTMLString(self.subject1_D_Array[self.ind], baseURL: nil)
                self.E_WebView.loadHTMLString(self.subject1_E_Array[self.ind], baseURL: nil)
                
                if subject1_A_Array[self.ind] == subject1_picks[ind]{
                    A_Label.textColor = UIColor.red
                }
                else{
                    A_Label.textColor = UIColor.darkGray
                }
                
                if subject1_B_Array[self.ind] == subject1_picks[ind]{
                    B_Label.textColor = UIColor.red
                }
                else{
                    B_Label.textColor = UIColor.darkGray
                }
                
                if subject1_C_Array[self.ind] == subject1_picks[ind]{
                    C_Label.textColor = UIColor.red
                }
                else{
                    C_Label.textColor = UIColor.darkGray
                }
                
                if subject1_D_Array[self.ind] == subject1_picks[ind]{
                    D_Label.textColor = UIColor.red
                }
                else{
                    D_Label.textColor = UIColor.darkGray
                }
                
                if subject1_E_Array[self.ind] == subject1_picks[ind]{
                    E_Label.textColor = UIColor.red
                }
                else{
                    E_Label.textColor = UIColor.darkGray
                }
                
                IndicatorLabel.text = String(ind+1) + " in 20"
                QuestionWebView.loadHTMLString(subject1_q[ind], baseURL: nil)
                
                F_Label.isHidden = true
                G_Label.isHidden = true
                H_Label.isHidden = true
                F_WebView.isHidden = true
                G_WebView.isHidden = true
                H_WebView.isHidden = true
            }
        }
        if SubjectNumber_by_Indicator == 1{
            if (ind > 0)
            {
                ind = ind - 1
                
                self.A_WebView.loadHTMLString(self.subject2_A_Array[self.ind], baseURL: nil)
                self.B_WebView.loadHTMLString(self.subject2_B_Array[self.ind], baseURL: nil)
                self.C_WebView.loadHTMLString(self.subject2_C_Array[self.ind], baseURL: nil)
                self.D_WebView.loadHTMLString(self.subject2_D_Array[self.ind], baseURL: nil)
                self.E_WebView.loadHTMLString(self.subject2_E_Array[self.ind], baseURL: nil)
                
                if subject2_A_Array[self.ind] == subject2_picks[ind]{
                    A_Label.textColor = UIColor.red
                }
                else{
                    A_Label.textColor = UIColor.darkGray
                }
                
                if subject2_B_Array[self.ind] == subject2_picks[ind]{
                    B_Label.textColor = UIColor.red
                }
                else{
                    B_Label.textColor = UIColor.darkGray
                }
                
                if subject2_C_Array[self.ind] == subject2_picks[ind]{
                    C_Label.textColor = UIColor.red
                }
                else{
                    C_Label.textColor = UIColor.darkGray
                }
                
                if subject2_D_Array[self.ind] == subject2_picks[ind]{
                    D_Label.textColor = UIColor.red
                }
                else{
                    D_Label.textColor = UIColor.darkGray
                }
                
                if subject2_E_Array[self.ind] == subject2_picks[ind]{
                    E_Label.textColor = UIColor.red
                }
                else{
                    E_Label.textColor = UIColor.darkGray
                }
                
                IndicatorLabel.text = String(ind+1) + " in 20"
                if ind+1 <= Int(texts_qnum[0])!{
                    QuestionWebView.loadHTMLString(self.texts[0] + "\n" + subject2_q[ind], baseURL: nil)
                }
                else if ind+1 <= (Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                    QuestionWebView.loadHTMLString(self.texts[1] + "\n" + subject2_q[ind], baseURL: nil)
                }
                else if ind+1 <= (Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                    QuestionWebView.loadHTMLString(self.texts[2] + "\n" + subject2_q[ind], baseURL: nil)
                }
                else if ind+1 <= (Int(texts_qnum[3])! + Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                    QuestionWebView.loadHTMLString(self.texts[3] + "\n" + subject2_q[ind], baseURL: nil)
                }
                else if ind+1 <= (Int(texts_qnum[4])! + Int(texts_qnum[3])! + Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                    QuestionWebView.loadHTMLString(self.texts[4] + "\n" + subject2_q[ind], baseURL: nil)
                }
                
                F_Label.isHidden = true
                G_Label.isHidden = true
                H_Label.isHidden = true
                F_WebView.isHidden = true
                G_WebView.isHidden = true
                H_WebView.isHidden = true
            }
        }
        if SubjectNumber_by_Indicator == 2{
            if (ind > 0)
            {
                ind = ind - 1
                
                self.A_WebView.loadHTMLString(self.subject3_A_Array[self.ind], baseURL: nil)
                self.B_WebView.loadHTMLString(self.subject3_B_Array[self.ind], baseURL: nil)
                self.C_WebView.loadHTMLString(self.subject3_C_Array[self.ind], baseURL: nil)
                self.D_WebView.loadHTMLString(self.subject3_D_Array[self.ind], baseURL: nil)
                self.E_WebView.loadHTMLString(self.subject3_E_Array[self.ind], baseURL: nil)
                
                if subject3_A_Array[self.ind] == subject3_picks[ind]{
                    A_Label.textColor = UIColor.red
                }
                else{
                    A_Label.textColor = UIColor.darkGray
                }
                
                if subject3_B_Array[self.ind] == subject3_picks[ind]{
                    B_Label.textColor = UIColor.red
                }
                else{
                    B_Label.textColor = UIColor.darkGray
                }
                
                if subject3_C_Array[self.ind] == subject3_picks[ind]{
                    C_Label.textColor = UIColor.red
                }
                else{
                    C_Label.textColor = UIColor.darkGray
                }
                
                if subject3_D_Array[self.ind] == subject3_picks[ind]{
                    D_Label.textColor = UIColor.red
                }
                else{
                    D_Label.textColor = UIColor.darkGray
                }
                
                if subject3_E_Array[self.ind] == subject3_picks[ind]{
                    E_Label.textColor = UIColor.red
                }
                else{
                    E_Label.textColor = UIColor.darkGray
                }
                
                IndicatorLabel.text = String(ind+1) + " in 20"
                QuestionWebView.loadHTMLString(subject3_q[ind], baseURL: nil)
                
                F_Label.isHidden = true
                G_Label.isHidden = true
                H_Label.isHidden = true
                F_WebView.isHidden = true
                G_WebView.isHidden = true
                H_WebView.isHidden = true
            }
        }
        if SubjectNumber_by_Indicator == 3{
            if (ind > 0)
            {
                ind = ind - 1
                if (ind > 19){
                    IndicatorLabel.text = String(ind+1) + " in 30"
                    QuestionWebView.loadHTMLString(subject4_questions21_30[ind-20], baseURL: nil)
                    
                    if self.subject4_Answers21_30[self.ind - 20][0] == subject4_picks21_30[ind - 20][0] || self.subject4_Answers21_30[self.ind - 20][0] == subject4_picks21_30[ind - 20][1] || self.subject4_Answers21_30[self.ind - 20][0] == subject4_picks21_30[ind - 20][2]{
                        A_Label.textColor = UIColor.red
                    }
                    else{
                        A_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject4_Answers21_30[self.ind - 20][1] == subject4_picks21_30[ind - 20][0] || self.subject4_Answers21_30[self.ind - 20][1] == subject4_picks21_30[ind - 20][1] || self.subject4_Answers21_30[self.ind - 20][1] == subject4_picks21_30[ind - 20][2]{
                        B_Label.textColor = UIColor.red
                    }
                    else{
                        B_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject4_Answers21_30[self.ind - 20][2] == subject4_picks21_30[ind - 20][0] || self.subject4_Answers21_30[self.ind - 20][2] == subject4_picks21_30[ind - 20][1] || self.subject4_Answers21_30[self.ind - 20][2] == subject4_picks21_30[ind - 20][2]{
                        C_Label.textColor = UIColor.red
                    }
                    else{
                        C_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject4_Answers21_30[self.ind - 20][3] == subject4_picks21_30[ind - 20][0] || self.subject4_Answers21_30[self.ind - 20][3] == subject4_picks21_30[ind - 20][1] || self.subject4_Answers21_30[self.ind - 20][3] == subject4_picks21_30[ind - 20][2]{
                        D_Label.textColor = UIColor.red
                    }
                    else{
                        D_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject4_Answers21_30[self.ind - 20][4] == subject4_picks21_30[ind - 20][0] || self.subject4_Answers21_30[self.ind - 20][4] == subject4_picks21_30[ind - 20][1] || self.subject4_Answers21_30[self.ind - 20][4] == subject4_picks21_30[ind - 20][2]{
                        E_Label.textColor = UIColor.red
                    }
                    else{
                        E_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject4_Answers21_30[self.ind - 20][5] == subject4_picks21_30[ind - 20][0] || self.subject4_Answers21_30[self.ind - 20][5] == subject4_picks21_30[ind - 20][1] || self.subject4_Answers21_30[self.ind - 20][5] == subject4_picks21_30[ind - 20][2]{
                        F_Label.textColor = UIColor.red
                    }
                    else{
                        F_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject4_Answers21_30[self.ind - 20][6] == subject4_picks21_30[ind - 20][0] || self.subject4_Answers21_30[self.ind - 20][6] == subject4_picks21_30[ind - 20][1] || self.subject4_Answers21_30[self.ind - 20][6] == subject4_picks21_30[ind - 20][2]{
                        G_Label.textColor = UIColor.red
                    }
                    else{
                        G_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject4_Answers21_30[self.ind - 20][7] == subject4_picks21_30[ind - 20][0] || self.subject4_Answers21_30[self.ind - 20][7] == subject4_picks21_30[ind - 20][1] || self.subject4_Answers21_30[self.ind - 20][7] == subject4_picks21_30[ind - 20][2]{
                        H_Label.textColor = UIColor.red
                    }
                    else{
                        H_Label.textColor = UIColor.darkGray
                    }
                    
                    
                    self.A_WebView.loadHTMLString(self.subject4_Answers21_30[self.ind - 20][0], baseURL: nil)
                    self.B_WebView.loadHTMLString(self.subject4_Answers21_30[self.ind - 20][1], baseURL: nil)
                    self.C_WebView.loadHTMLString(self.subject4_Answers21_30[self.ind - 20][2], baseURL: nil)
                    self.D_WebView.loadHTMLString(self.subject4_Answers21_30[self.ind - 20][3], baseURL: nil)
                    self.E_WebView.loadHTMLString(self.subject4_Answers21_30[self.ind - 20][4], baseURL: nil)
                    self.F_WebView.loadHTMLString(self.subject4_Answers21_30[self.ind - 20][5], baseURL: nil)
                    self.G_WebView.loadHTMLString(self.subject4_Answers21_30[self.ind - 20][6], baseURL: nil)
                    self.H_WebView.loadHTMLString(self.subject4_Answers21_30[self.ind - 20][7], baseURL: nil)
                }
                else{
                    
                    self.A_WebView.loadHTMLString(self.subject4_A_Array[self.ind], baseURL: nil)
                    self.B_WebView.loadHTMLString(self.subject4_B_Array[self.ind], baseURL: nil)
                    self.C_WebView.loadHTMLString(self.subject4_C_Array[self.ind], baseURL: nil)
                    self.D_WebView.loadHTMLString(self.subject4_D_Array[self.ind], baseURL: nil)
                    self.E_WebView.loadHTMLString(self.subject4_E_Array[self.ind], baseURL: nil)
                    
                    if subject4_A_Array[self.ind] == subject4_picks[ind]{
                        A_Label.textColor = UIColor.red
                    }
                    else{
                        A_Label.textColor = UIColor.darkGray
                    }
                    
                    if subject4_B_Array[self.ind] == subject4_picks[ind]{
                        B_Label.textColor = UIColor.red
                    }
                    else{
                        B_Label.textColor = UIColor.darkGray
                    }
                    
                    if subject4_C_Array[self.ind] == subject4_picks[ind]{
                        C_Label.textColor = UIColor.red
                    }
                    else{
                        C_Label.textColor = UIColor.darkGray
                    }
                    
                    if subject4_D_Array[self.ind] == subject4_picks[ind]{
                        D_Label.textColor = UIColor.red
                    }
                    else{
                        D_Label.textColor = UIColor.darkGray
                    }
                    
                    if subject4_E_Array[self.ind] == subject4_picks[ind]{
                        E_Label.textColor = UIColor.red
                    }
                    else{
                        E_Label.textColor = UIColor.darkGray
                    }
                    
                    IndicatorLabel.text = String(ind+1) + " in 30"
                    QuestionWebView.loadHTMLString(subject4_q[ind], baseURL: nil)
                    
                    F_Label.isHidden = true
                    G_Label.isHidden = true
                    H_Label.isHidden = true
                    F_WebView.isHidden = true
                    G_WebView.isHidden = true
                    H_WebView.isHidden = true
                }
            }
        }
        if SubjectNumber_by_Indicator == 4{
            if (ind > 0)
            {
                ind = ind - 1
                
                if (ind>19){
                    IndicatorLabel.text = String(ind+1) + " in 30"
                    QuestionWebView.loadHTMLString(subject5_questions21_30[ind-20], baseURL: nil)
                    
                    if self.subject5_Answers21_30[self.ind - 20][0] == subject5_picks21_30[ind - 20][0] || self.subject5_Answers21_30[self.ind - 20][0] == subject5_picks21_30[ind - 20][1] || self.subject5_Answers21_30[self.ind - 20][0] == subject5_picks21_30[ind - 20][2]{
                        A_Label.textColor = UIColor.red
                    }
                    else{
                        A_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject5_Answers21_30[self.ind - 20][1] == subject5_picks21_30[ind - 20][0] || self.subject5_Answers21_30[self.ind - 20][1] == subject5_picks21_30[ind - 20][1] || self.subject5_Answers21_30[self.ind - 20][1] == subject5_picks21_30[ind - 20][2]{
                        B_Label.textColor = UIColor.red
                    }
                    else{
                        B_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject5_Answers21_30[self.ind - 20][2] == subject5_picks21_30[ind - 20][0] || self.subject5_Answers21_30[self.ind - 20][2] == subject5_picks21_30[ind - 20][1] || self.subject5_Answers21_30[self.ind - 20][2] == subject5_picks21_30[ind - 20][2]{
                        C_Label.textColor = UIColor.red
                    }
                    else{
                        C_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject5_Answers21_30[self.ind - 20][3] == subject5_picks21_30[ind - 20][0] || self.subject5_Answers21_30[self.ind - 20][3] == subject5_picks21_30[ind - 20][1] || self.subject5_Answers21_30[self.ind - 20][3] == subject5_picks21_30[ind - 20][2]{
                        D_Label.textColor = UIColor.red
                    }
                    else{
                        D_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject5_Answers21_30[self.ind - 20][4] == subject5_picks21_30[ind - 20][0] || self.subject5_Answers21_30[self.ind - 20][4] == subject5_picks21_30[ind - 20][1] || self.subject5_Answers21_30[self.ind - 20][4] == subject5_picks21_30[ind - 20][2]{
                        E_Label.textColor = UIColor.red
                    }
                    else{
                        E_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject5_Answers21_30[self.ind - 20][5] == subject5_picks21_30[ind - 20][0] || self.subject5_Answers21_30[self.ind - 20][5] == subject5_picks21_30[ind - 20][1] || self.subject5_Answers21_30[self.ind - 20][5] == subject5_picks21_30[ind - 20][2]{
                        F_Label.textColor = UIColor.red
                    }
                    else{
                        F_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject5_Answers21_30[self.ind - 20][6] == subject5_picks21_30[ind - 20][0] || self.subject5_Answers21_30[self.ind - 20][6] == subject5_picks21_30[ind - 20][1] || self.subject5_Answers21_30[self.ind - 20][6] == subject5_picks21_30[ind - 20][2]{
                        G_Label.textColor = UIColor.red
                    }
                    else{
                        G_Label.textColor = UIColor.darkGray
                    }
                    
                    if self.subject5_Answers21_30[self.ind - 20][7] == subject5_picks21_30[ind - 20][0] || self.subject5_Answers21_30[self.ind - 20][7] == subject5_picks21_30[ind - 20][1] || self.subject5_Answers21_30[self.ind - 20][7] == subject5_picks21_30[ind - 20][2]{
                        H_Label.textColor = UIColor.red
                    }
                    else{
                        H_Label.textColor = UIColor.darkGray
                    }

                    
                    self.A_WebView.loadHTMLString(self.subject5_Answers21_30[self.ind - 20][0], baseURL: nil)
                    self.B_WebView.loadHTMLString(self.subject5_Answers21_30[self.ind - 20][1], baseURL: nil)
                    self.C_WebView.loadHTMLString(self.subject5_Answers21_30[self.ind - 20][2], baseURL: nil)
                    self.D_WebView.loadHTMLString(self.subject5_Answers21_30[self.ind - 20][3], baseURL: nil)
                    self.E_WebView.loadHTMLString(self.subject5_Answers21_30[self.ind - 20][4], baseURL: nil)
                    self.F_WebView.loadHTMLString(self.subject5_Answers21_30[self.ind - 20][5], baseURL: nil)
                    self.G_WebView.loadHTMLString(self.subject5_Answers21_30[self.ind - 20][6], baseURL: nil)
                    self.H_WebView.loadHTMLString(self.subject5_Answers21_30[self.ind - 20][7], baseURL: nil)
                    
                }
                else{
                    self.A_WebView.loadHTMLString(self.subject5_A_Array[self.ind], baseURL: nil)
                    self.B_WebView.loadHTMLString(self.subject5_B_Array[self.ind], baseURL: nil)
                    self.C_WebView.loadHTMLString(self.subject5_C_Array[self.ind], baseURL: nil)
                    self.D_WebView.loadHTMLString(self.subject5_D_Array[self.ind], baseURL: nil)
                    self.E_WebView.loadHTMLString(self.subject5_E_Array[self.ind], baseURL: nil)
                    
                    if subject5_A_Array[self.ind] == subject5_picks[ind]{
                        A_Label.textColor = UIColor.red
                    }
                    else{
                        A_Label.textColor = UIColor.darkGray
                    }
                    
                    if subject5_B_Array[self.ind] == subject5_picks[ind]{
                        B_Label.textColor = UIColor.red
                    }
                    else{
                        B_Label.textColor = UIColor.darkGray
                    }
                    
                    if subject5_C_Array[self.ind] == subject5_picks[ind]{
                        C_Label.textColor = UIColor.red
                    }
                    else{
                        C_Label.textColor = UIColor.darkGray
                    }
                    
                    if subject5_D_Array[self.ind] == subject5_picks[ind]{
                        D_Label.textColor = UIColor.red
                    }
                    else{
                        D_Label.textColor = UIColor.darkGray
                    }
                    
                    if subject5_E_Array[self.ind] == subject5_picks[ind]{
                        E_Label.textColor = UIColor.red
                    }
                    else{
                        E_Label.textColor = UIColor.darkGray
                    }
                    
                    IndicatorLabel.text = String(ind+1) + " in 30"
                    QuestionWebView.loadHTMLString(subject5_q[ind], baseURL: nil)
                    
                    F_Label.isHidden = true
                    G_Label.isHidden = true
                    H_Label.isHidden = true
                    F_WebView.isHidden = true
                    G_WebView.isHidden = true
                    H_WebView.isHidden = true
                }
            }
        }
        let defaults = UserDefaults.standard
        defaults.set(self.subject1_picks, forKey: "TerminatedUNTSubject1_picks")
        defaults.set(self.subject2_picks, forKey: "TerminatedUNTSubject2_picks")
        defaults.set(self.subject3_picks, forKey: "TerminatedUNTSubject3_picks")
        defaults.set(self.subject4_picks, forKey: "TerminatedUNTSubject4_picks")
        defaults.set(self.subject4_picks21_30, forKey: "TerminatedUNTSubject4_picks21_30")
        defaults.set(self.subject5_picks, forKey: "TerminatedUNTSubject5_picks")
        defaults.set(self.subject5_picks21_30, forKey: "TerminatedUNTSubject5_picks21_30")
    }
    
    
    @IBAction func ExitButton_Tapped(_ sender: UIButton) {
        for i in 0 ... 19{
            if subject1_picks[i] == ""{
                self.HowManyPicks += 1
            }
            if subject2_picks[i] == ""{
                self.HowManyPicks += 1
            }
            if subject3_picks[i] == ""{
                self.HowManyPicks += 1
            }
            if subject4_picks[i] == ""{
                self.HowManyPicks += 1
            }
            if subject5_picks[i] == ""{
                self.HowManyPicks += 1
            }
        }
        for i in 0 ... 9{
            if subject4_picks21_30[i][0] == "" && subject4_picks21_30[i][1] == "" && subject4_picks21_30[i][2] == ""{
                self.HowManyPicks += 1
            }
            if subject5_picks21_30[i][0] == "" && subject5_picks21_30[i][1] == "" && subject5_picks21_30[i][2] == ""{
                self.HowManyPicks += 1
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
                if self.subject1_picks[i] == self.subject1_rightans[i]{
                    self.subject1_point = self.subject1_point + 1
                    self.subject1_points_array.append(1)
                }
                else{
                    self.subject1_points_array.append(0)
                }
                if self.subject2_picks[i] == self.subject2_rightans[i]{
                    self.subject2_point = self.subject2_point + 1
                    self.subject2_points_array.append(1)
                }
                else{
                    self.subject2_points_array.append(0)
                }
                if self.subject3_picks[i] == self.subject3_rightans[i]{
                    self.subject3_point = self.subject3_point + 1
                    self.subject3_points_array.append(1)
                }
                else{
                    self.subject3_points_array.append(0)
                }
                if self.subject4_picks[i] == self.subject4_rightans[i]{
                    self.subject4_point = self.subject4_point + 1
                    self.subject4_points_array.append(1)
                }
                else{
                    self.subject4_points_array.append(0)
                }
                if self.subject5_picks[i] == self.subject5_rightans[i]{
                    self.subject5_point = self.subject5_point + 1
                    self.subject5_points_array.append(1)
                }
                else{
                    self.subject5_points_array.append(0)
                }
            }
            
            for index in self.subject4_Num_Of_Right_Ans{
                if Int(index) == 1{
                    if self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][0]) && self.subject4_picks21_30[self.check_ind][1] == "" && self.subject4_picks21_30[self.check_ind][2] == ""{
                        self.subject4_point += 2
                        self.subject4_points_array.append(2)
                    }
                    else if self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][0]) || self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][1]) || self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][2]){
                        self.subject4_point += 1
                        self.subject4_points_array.append(1)
                    }
                    else{
                        self.subject4_points_array.append(0)
                    }
                }
                if Int(index) == 2{
                    if (self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][0]) && self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][1])) && self.subject4_picks21_30[self.check_ind][2] == ""{
                        self.subject4_point += 2
                        self.subject4_points_array.append(2)
                    }
                    else if (self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][0]) || self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][1]) || self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][2])){
                        self.subject4_point += 1
                        self.subject4_points_array.append(1)
                    }
                    else{
                        self.subject4_points_array.append(0)
                    }
                }
                if Int(index) == 3{
                    if (self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][0]) && self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][1]) && self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][2])){
                        self.subject4_point += 2
                        self.subject4_points_array.append(2)
                    }
                    else if (self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][0]) && self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][1])) || (self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][0]) && self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][2])) || (self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][1]) && self.subject4_rightans21_30[self.check_ind].contains(self.subject4_picks21_30[self.check_ind][2])){
                        self.subject4_point += 1
                        self.subject4_points_array.append(1)
                    }
                    else{
                        self.subject4_points_array.append(0)
                    }
                }
                self.check_ind = self.check_ind + 1
            }
            
            self.check_ind = 0
            
            
            
            for index in self.subject5_Num_Of_Right_Ans{
                if Int(index) == 1{
                    if self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][0]) && self.subject5_picks21_30[self.check_ind][1] == "" && self.subject5_picks21_30[self.check_ind][2] == ""{
                        self.subject5_point += 2
                        self.subject5_points_array.append(2)
                    }
                    else if self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][0]) || self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][1]) || self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][2]){
                        self.subject5_point += 1
                        self.subject5_points_array.append(1)
                    }
                    else{
                        self.subject5_points_array.append(0)
                    }
                }
                if Int(index) == 2{
                    if (self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][0]) && self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][1])) && self.subject5_picks21_30[self.check_ind][2] == ""{
                        self.subject5_point += 2
                        self.subject5_points_array.append(2)
                    }
                    else if (self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][0]) || self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][1]) || self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][2])){
                        self.subject5_point += 1
                        self.subject5_points_array.append(1)
                    }
                    else{
                        self.subject5_points_array.append(0)
                    }
                }
                if Int(index) == 3{
                    if (self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][0]) && self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][1]) && self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][2])){
                        self.subject5_point += 2
                        self.subject5_points_array.append(2)
                    }
                    else if (self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][0]) && self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][1])) || (self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][0]) && self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][2])) || (self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][1]) && self.subject5_rightans21_30[self.check_ind].contains(self.subject5_picks21_30[self.check_ind][2])){
                        self.subject5_point += 1
                        self.subject5_points_array.append(1)
                    }
                    else{
                        self.subject5_points_array.append(0)
                    }
                }
                self.check_ind = self.check_ind + 1
            }
            
            self.Points = self.subject1_point + self.subject2_point + self.subject3_point + self.subject4_point + self.subject5_point
            
            defaults.set(String(self.Points), forKey: "UNT_Points")
            
            defaults.set(String(self.subject1_point), forKey: "subject1_point")
            defaults.set(String(self.subject2_point), forKey: "subject2_point")
            defaults.set(String(self.subject3_point), forKey: "subject3_point")
            defaults.set(String(self.subject4_point), forKey: "subject4_point")
            defaults.set(String(self.subject5_point), forKey: "subject5_point")
            
            
            DispatchQueue.main.async{
                if (defaults.value(forKey: "LastTest_1") == nil) {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_1")
                    defaults.set(defaults.string(forKey: "Subject1_id")!, forKey: "LastTest_1_1")
                    defaults.set(defaults.string(forKey: "Subject2_id")!, forKey: "LastTest_1_2")
                    defaults.setValue(self.subject1_picks, forKey: "LastTest_1_subject1_picks")
                    defaults.setValue(self.subject2_picks, forKey: "LastTest_1_subject2_picks")
                    defaults.setValue(self.subject3_picks, forKey: "LastTest_1_subject3_picks")
                    defaults.setValue(self.subject4_picks, forKey: "LastTest_1_subject4_picks")
                    defaults.setValue(self.subject4_picks21_30, forKey: "LastTest_1_subject4_picks21_30")
                    defaults.setValue(self.subject5_picks, forKey: "LastTest_1_subject5_picks")
                    defaults.setValue(self.subject5_picks21_30, forKey: "LastTest_1_subject5_picks21_30")
                }
                else if defaults.value(forKey: "LastTest_2") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_2")
                    defaults.set(defaults.string(forKey: "Subject1_id")!, forKey: "LastTest_2_1")
                    defaults.set(defaults.string(forKey: "Subject2_id")!, forKey: "LastTest_2_2")
                    defaults.setValue(self.subject1_picks, forKey: "LastTest_2_subject1_picks")
                    defaults.setValue(self.subject2_picks, forKey: "LastTest_2_subject2_picks")
                    defaults.setValue(self.subject3_picks, forKey: "LastTest_2_subject3_picks")
                    defaults.setValue(self.subject4_picks, forKey: "LastTest_2_subject4_picks")
                    defaults.setValue(self.subject4_picks21_30, forKey: "LastTest_2_subject4_picks21_30")
                    defaults.setValue(self.subject5_picks, forKey: "LastTest_2_subject5_picks")
                    defaults.setValue(self.subject5_picks21_30, forKey: "LastTest_2_subject5_picks21_30")
                }
                else if defaults.value(forKey: "LastTest_3") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_3")
                    defaults.set(defaults.string(forKey: "Subject1_id")!, forKey: "LastTest_3_1")
                    defaults.set(defaults.string(forKey: "Subject2_id")!, forKey: "LastTest_3_2")
                    defaults.setValue(self.subject1_picks, forKey: "LastTest_3_subject1_picks")
                    defaults.setValue(self.subject2_picks, forKey: "LastTest_3_subject2_picks")
                    defaults.setValue(self.subject3_picks, forKey: "LastTest_3_subject3_picks")
                    defaults.setValue(self.subject4_picks, forKey: "LastTest_3_subject4_picks")
                    defaults.setValue(self.subject4_picks21_30, forKey: "LastTest_3_subject4_picks21_30")
                    defaults.setValue(self.subject5_picks, forKey: "LastTest_3_subject5_picks")
                    defaults.setValue(self.subject5_picks21_30, forKey: "LastTest_3_subject5_picks21_30")
                }
                else if defaults.value(forKey: "LastTest_4") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_4")
                    defaults.set(defaults.string(forKey: "Subject1_id")!, forKey: "LastTest_4_1")
                    defaults.set(defaults.string(forKey: "Subject2_id")!, forKey: "LastTest_4_2")
                    defaults.setValue(self.subject1_picks, forKey: "LastTest_4_subject1_picks")
                    defaults.setValue(self.subject2_picks, forKey: "LastTest_4_subject2_picks")
                    defaults.setValue(self.subject3_picks, forKey: "LastTest_4_subject3_picks")
                    defaults.setValue(self.subject4_picks, forKey: "LastTest_4_subject4_picks")
                    defaults.setValue(self.subject4_picks21_30, forKey: "LastTest_4_subject4_picks21_30")
                    defaults.setValue(self.subject5_picks, forKey: "LastTest_4_subject5_picks")
                    defaults.setValue(self.subject5_picks21_30, forKey: "LastTest_4_subject5_picks21_30")
                }
                else if defaults.value(forKey: "LastTest_5") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_5")
                    defaults.set(defaults.string(forKey: "Subject1_id")!, forKey: "LastTest_5_1")
                    defaults.set(defaults.string(forKey: "Subject2_id")!, forKey: "LastTest_5_2")
                    defaults.setValue(self.subject1_picks, forKey: "LastTest_5_subject1_picks")
                    defaults.setValue(self.subject2_picks, forKey: "LastTest_5_subject2_picks")
                    defaults.setValue(self.subject3_picks, forKey: "LastTest_5_subject3_picks")
                    defaults.setValue(self.subject4_picks, forKey: "LastTest_5_subject4_picks")
                    defaults.setValue(self.subject4_picks21_30, forKey: "LastTest_5_subject4_picks21_30")
                    defaults.setValue(self.subject5_picks, forKey: "LastTest_5_subject5_picks")
                    defaults.setValue(self.subject5_picks21_30, forKey: "LastTest_5_subject5_picks21_30")
                }
                else if defaults.value(forKey: "LastTest_6") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_6")
                    defaults.set(defaults.string(forKey: "Subject1_id")!, forKey: "LastTest_6_1")
                    defaults.set(defaults.string(forKey: "Subject2_id")!, forKey: "LastTest_6_2")
                    defaults.setValue(self.subject1_picks, forKey: "LastTest_6_subject1_picks")
                    defaults.setValue(self.subject2_picks, forKey: "LastTest_6_subject2_picks")
                    defaults.setValue(self.subject3_picks, forKey: "LastTest_6_subject3_picks")
                    defaults.setValue(self.subject4_picks, forKey: "LastTest_6_subject4_picks")
                    defaults.setValue(self.subject4_picks21_30, forKey: "LastTest_6_subject4_picks21_30")
                    defaults.setValue(self.subject5_picks, forKey: "LastTest_6_subject5_picks")
                    defaults.setValue(self.subject5_picks21_30, forKey: "LastTest_6_subject5_picks21_30")
                }
                else if defaults.value(forKey: "LastTest_7") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_7")
                    defaults.set(defaults.string(forKey: "Subject1_id")!, forKey: "LastTest_7_1")
                    defaults.set(defaults.string(forKey: "Subject2_id")!, forKey: "LastTest_7_2")
                    defaults.setValue(self.subject1_picks, forKey: "LastTest_7_subject1_picks")
                    defaults.setValue(self.subject2_picks, forKey: "LastTest_7_subject2_picks")
                    defaults.setValue(self.subject3_picks, forKey: "LastTest_7_subject3_picks")
                    defaults.setValue(self.subject4_picks, forKey: "LastTest_7_subject4_picks")
                    defaults.setValue(self.subject4_picks21_30, forKey: "LastTest_7_subject4_picks21_30")
                    defaults.setValue(self.subject5_picks, forKey: "LastTest_7_subject5_picks")
                    defaults.setValue(self.subject5_picks21_30, forKey: "LastTest_7_subject5_picks21_30")
                }
                else if defaults.value(forKey: "LastTest_8") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_8")
                    defaults.set(defaults.string(forKey: "Subject1_id")!, forKey: "LastTest_8_1")
                    defaults.set(defaults.string(forKey: "Subject2_id")!, forKey: "LastTest_8_2")
                    defaults.setValue(self.subject1_picks, forKey: "LastTest_8_subject1_picks")
                    defaults.setValue(self.subject2_picks, forKey: "LastTest_8_subject2_picks")
                    defaults.setValue(self.subject3_picks, forKey: "LastTest_8_subject3_picks")
                    defaults.setValue(self.subject4_picks, forKey: "LastTest_8_subject4_picks")
                    defaults.setValue(self.subject4_picks21_30, forKey: "LastTest_8_subject4_picks21_30")
                    defaults.setValue(self.subject5_picks, forKey: "LastTest_8_subject5_picks")
                    defaults.setValue(self.subject5_picks21_30, forKey: "LastTest_8_subject5_picks21_30")
                }
                else if defaults.value(forKey: "LastTest_9") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_9")
                    defaults.set(defaults.string(forKey: "Subject1_id")!, forKey: "LastTest_9_1")
                    defaults.set(defaults.string(forKey: "Subject2_id")!, forKey: "LastTest_9_2")
                    defaults.setValue(self.subject1_picks, forKey: "LastTest_9_subject1_picks")
                    defaults.setValue(self.subject2_picks, forKey: "LastTest_9_subject2_picks")
                    defaults.setValue(self.subject3_picks, forKey: "LastTest_9_subject3_picks")
                    defaults.setValue(self.subject4_picks, forKey: "LastTest_9_subject4_picks")
                    defaults.setValue(self.subject4_picks21_30, forKey: "LastTest_9_subject4_picks21_30")
                    defaults.setValue(self.subject5_picks, forKey: "LastTest_9_subject5_picks")
                    defaults.setValue(self.subject5_picks21_30, forKey: "LastTest_9_subject5_picks21_30")
                }
                else if defaults.value(forKey: "LastTest_10") == nil {
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_10")
                    defaults.set(defaults.string(forKey: "Subject1_id")!, forKey: "LastTest_10_1")
                    defaults.set(defaults.string(forKey: "Subject2_id")!, forKey: "LastTest_10_2")
                    defaults.setValue(self.subject1_picks, forKey: "LastTest_10_subject1_picks")
                    defaults.setValue(self.subject2_picks, forKey: "LastTest_10_subject2_picks")
                    defaults.setValue(self.subject3_picks, forKey: "LastTest_10_subject3_picks")
                    defaults.setValue(self.subject4_picks, forKey: "LastTest_10_subject4_picks")
                    defaults.setValue(self.subject4_picks21_30, forKey: "LastTest_10_subject4_picks21_30")
                    defaults.setValue(self.subject5_picks, forKey: "LastTest_10_subject5_picks")
                    defaults.setValue(self.subject5_picks21_30, forKey: "LastTest_10_subject5_picks21_30")
                }
                else if defaults.value(forKey: "LastTest_10") != nil {
                    for i in 1 ... 9{
                        defaults.setValue(defaults.value(forKey: "LastTest_" + String(i+1)), forKey: "LastTest_" + String(i))
                        defaults.set(defaults.string(forKey: "LastTest_" + String(i+1) + "_1"), forKey: "LastTest_" + String(i) + "_1")
                        defaults.set(defaults.string(forKey: "LastTest_" + String(i+1) + "_2"), forKey: "LastTest_" + String(i) + "_2")
                        
                        defaults.setValue(defaults.value(forKey: "LastTest_" + String(i+1) + "_subject1_picks"), forKey: "LastTest_" + String(i) + "_subject1_picks")
                        defaults.setValue(defaults.value(forKey: "LastTest_" + String(i+1) + "_subject2_picks"), forKey: "LastTest_" + String(i) + "_subject2_picks")
                        defaults.setValue(defaults.value(forKey: "LastTest_" + String(i+1) + "_subject3_picks"), forKey: "LastTest_" + String(i) + "_subject3_picks")
                        defaults.setValue(defaults.value(forKey: "LastTest_" + String(i+1) + "_subject4_picks"), forKey: "LastTest_" + String(i) + "_subject4_picks")
                        defaults.setValue(defaults.value(forKey: "LastTest_" + String(i+1) + "_subject1_picks21_30"), forKey: "LastTest_" + String(i) + "_subject4_picks21_30")
                        defaults.setValue(defaults.value(forKey: "LastTest_" + String(i+1) + "_subject5_picks"), forKey: "LastTest_" + String(i) + "_subject5_picks")
                        defaults.setValue(defaults.value(forKey: "LastTest_" + String(i+1) + "_subject1_picks21_30"), forKey: "LastTest_" + String(i) + "_subject5_picks21_30")
                        
                        
                        defaults.setValue(self.subject4_picks21_30, forKey: "LastTest_10_subject4_picks21_30")
                        defaults.setValue(self.subject5_picks, forKey: "LastTest_10_subject5_picks")
                        defaults.setValue(self.subject5_picks21_30, forKey: "LastTest_10_subject5_picks21_30")
                    }
                    
                    defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "LastTest_10")
                    defaults.set(defaults.string(forKey: "Subject1_id")!, forKey: "LastTest_10_1")
                    defaults.set(defaults.string(forKey: "Subject2_id")!, forKey: "LastTest_10_2")
                    defaults.setValue(self.subject1_picks, forKey: "LastTest_10_subject1_picks")
                    defaults.setValue(self.subject2_picks, forKey: "LastTest_10_subject2_picks")
                    defaults.setValue(self.subject3_picks, forKey: "LastTest_10_subject3_picks")
                    defaults.setValue(self.subject4_picks, forKey: "LastTest_10_subject4_picks")
                    defaults.setValue(self.subject4_picks21_30, forKey: "LastTest_10_subject4_picks21_30")
                    defaults.setValue(self.subject5_picks, forKey: "LastTest_10_subject5_picks")
                    defaults.setValue(self.subject5_picks21_30, forKey: "LastTest_10_subject5_picks21_30")
                    
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
                        defaults.set("140", forKey: count_ques)
                        defaults.set("Ұ", forKey: letter_key)
                        defaults.set("ҰБТ", forKey: subject_key)
                    }
                    else{
                        defaults.set(0, forKey: "Order_count")
                        
                        defaults.set(result, forKey: "0_time")
                        defaults.set(self.Points, forKey: "0_point")
                        defaults.set("140", forKey: "0_count")
                        defaults.set("Ұ", forKey: "0_letter")
                        defaults.set("ҰБТ", forKey: "0_history")
                    }
                }
                else{
                    for i in 1 ... 9{
                        defaults.set(defaults.string(forKey: String(i) + "_time"), forKey: String(i-1) + "_time")
                        defaults.set(defaults.string(forKey: String(i) + "_point"), forKey: String(i-1) + "_point")
                        defaults.set(defaults.string(forKey: String(i) + "_count"), forKey: String(i-1) + "_count")
                        defaults.set(defaults.string(forKey: String(i) + "_letter"), forKey: String(i-1) + "_letter")
                        defaults.set(defaults.string(forKey: String(i) + "_history"), forKey: String(i-1) + "_history")
                    }
                    defaults.set(result, forKey: "9_time")
                    defaults.set(self.Points, forKey: "9_point")
                    defaults.set("140", forKey: "9_count")
                    defaults.set("Ұ", forKey: "9_letter")
                    defaults.set("ҰБТ", forKey: "9_history")
                }
                
                self.sendSavingJson() // Sending pass test to server!
                
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier :"Check_UNT_PonitsController")
                self.present(viewController, animated: true)
            }
        }
        actionSheetController.addAction(takePictureAction)
        
        self.present(actionSheetController, animated: true, completion: nil)
    }
    
    func sendSavingJson(){
        let defaults = UserDefaults.standard
        let this_json = defaults.value(forKey: "Temporary") as! NSDictionary
        let msg_this_json = this_json.value(forKey: "msg") as! NSDictionary
        let subject1_this = msg_this_json.value(forKey: "subject_1") as! NSDictionary
        let subject2_this = msg_this_json.value(forKey: "subject_2") as! NSDictionary
        let texts_subject2_this = subject2_this.value(forKey: "texts") as! NSArray
        let subject3_this = msg_this_json.value(forKey: "subject_3") as! NSDictionary
        let subject4_this = msg_this_json.value(forKey: "subject_" + defaults.string(forKey: "Subject1_id")!) as! NSDictionary
        let subject5_this = msg_this_json.value(forKey: "subject_" + defaults.string(forKey: "Subject2_id")!) as! NSDictionary
        self.timer.invalidate()
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        let result = formatter.string(from: date)
        
        var subject1_end_questions = [NSObject]()
        var subject2_end_questions = [NSObject]()
        var subject3_end_questions = [NSObject]()
        var subject4_end_questions = [NSObject]()
        var subject4_end_questions21_30 = [NSObject]()
        var subject5_end_questions = [NSObject]()
        var subject5_end_questions21_30 = [NSObject]()
        
        
        if let subject1_questions = subject1_this.value(forKey: "questions") as? NSArray{
            var json_index = 0
            let html_text = "<!DOCTYPE html> <html> <head> <style> div { width: 100%; word-wrap: break-word; font-size: 40px;} img{width: 15%; height: auto; max-height:170px;} </style> </head> <body> <div>"
            let html_bottom = "</div> </body> </html>"
            for question in subject1_questions{
                let questionDict = question as? NSDictionary
                let this_question: NSMutableDictionary = NSMutableDictionary()
                
                this_question.setValue(self.subject1_points_array[json_index], forKey: "point")
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
                
                
                if self.subject1_picks[json_index] == html_text + (questionDict!.value(forKey: "a") as! String) + html_bottom{
                    this_question.setValue("a", forKey: "given_ans")
                }
                else if self.subject1_picks[json_index] == html_text + (questionDict!.value(forKey: "b") as! String) + html_bottom{
                    this_question.setValue("b", forKey: "given_ans")
                }
                else if self.subject1_picks[json_index] == html_text + (questionDict!.value(forKey: "c") as! String) + html_bottom{
                    this_question.setValue("c", forKey: "given_ans")
                }
                else if self.subject1_picks[json_index] == html_text + (questionDict!.value(forKey: "d") as! String) + html_bottom{
                    this_question.setValue("d", forKey: "given_ans")
                }
                else if self.subject1_picks[json_index] == html_text + (questionDict!.value(forKey: "e") as! String) + html_bottom{
                    this_question.setValue("e", forKey: "given_ans")
                }
                else{
                    this_question.setValue("", forKey: "given_ans")
                }
                
                subject1_end_questions.append(this_question)
                json_index += 1
            }
        }
        if let subject2_questions = subject2_this.value(forKey: "questions") as? NSArray{
            var json_index = 0
            let html_text = "<!DOCTYPE html> <html> <head> <style> div { width: 100%; word-wrap: break-word; font-size: 40px;} img{width: 15%; height: auto; max-height:170px;} </style> </head> <body> <div>"
            let html_bottom = "</div> </body> </html>"
            for question in subject2_questions{
                let questionDict = question as? NSDictionary
                let this_question: NSMutableDictionary = NSMutableDictionary()
                
                this_question.setValue(self.subject2_points_array[json_index], forKey: "point")
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
                
                
                if self.subject2_picks[json_index] == html_text + (questionDict!.value(forKey: "a") as! String) + html_bottom{
                    this_question.setValue("a", forKey: "given_ans")
                }
                else if self.subject2_picks[json_index] == html_text + (questionDict!.value(forKey: "b") as! String) + html_bottom{
                    this_question.setValue("b", forKey: "given_ans")
                }
                else if self.subject2_picks[json_index] == html_text + (questionDict!.value(forKey: "c") as! String) + html_bottom{
                    this_question.setValue("c", forKey: "given_ans")
                }
                else if self.subject2_picks[json_index] == html_text + (questionDict!.value(forKey: "d") as! String) + html_bottom{
                    this_question.setValue("d", forKey: "given_ans")
                }
                else if self.subject2_picks[json_index] == html_text + (questionDict!.value(forKey: "e") as! String) + html_bottom{
                    this_question.setValue("e", forKey: "given_ans")
                }
                else{
                    this_question.setValue("", forKey: "given_ans")
                }
                
                subject2_end_questions.append(this_question)
                json_index += 1
            }
        }
        if let subject3_questions = subject3_this.value(forKey: "questions") as? NSArray{
            var json_index = 0
            let html_text = "<!DOCTYPE html> <html> <head> <style> div { width: 100%; word-wrap: break-word; font-size: 40px;} img{width: 15%; height: auto; max-height:170px;} </style> </head> <body> <div>"
            let html_bottom = "</div> </body> </html>"
            for question in subject3_questions{
                let questionDict = question as? NSDictionary
                let this_question: NSMutableDictionary = NSMutableDictionary()
                
                this_question.setValue(self.subject3_points_array[json_index], forKey: "point")
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
                
                
                if self.subject3_picks[json_index] == html_text + (questionDict!.value(forKey: "a") as! String) + html_bottom{
                    this_question.setValue("a", forKey: "given_ans")
                }
                else if self.subject3_picks[json_index] == html_text + (questionDict!.value(forKey: "b") as! String) + html_bottom{
                    this_question.setValue("b", forKey: "given_ans")
                }
                else if self.subject3_picks[json_index] == html_text + (questionDict!.value(forKey: "c") as! String) + html_bottom{
                    this_question.setValue("c", forKey: "given_ans")
                }
                else if self.subject3_picks[json_index] == html_text + (questionDict!.value(forKey: "d") as! String) + html_bottom{
                    this_question.setValue("d", forKey: "given_ans")
                }
                else if self.subject3_picks[json_index] == html_text + (questionDict!.value(forKey: "e") as! String) + html_bottom{
                    this_question.setValue("e", forKey: "given_ans")
                }
                else{
                    this_question.setValue("", forKey: "given_ans")
                }
                
                subject3_end_questions.append(this_question)
                json_index += 1
            }
        }
        if let subject4_questions = subject4_this.value(forKey: "questions1_20") as? NSArray{
            var json_index = 0
            let html_text = "<!DOCTYPE html> <html> <head> <style> div { width: 100%; word-wrap: break-word; font-size: 40px;} img{width: 15%; height: auto; max-height:170px;} </style> </head> <body> <div>"
            let html_bottom = "</div> </body> </html>"
            for question in subject4_questions{
                let questionDict = question as? NSDictionary
                let this_question: NSMutableDictionary = NSMutableDictionary()
                
                this_question.setValue(self.subject4_points_array[json_index], forKey: "point")
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
                
                
                if self.subject4_picks[json_index] == html_text + (questionDict!.value(forKey: "a") as! String) + html_bottom{
                    this_question.setValue("a", forKey: "given_ans")
                }
                else if self.subject4_picks[json_index] == html_text + (questionDict!.value(forKey: "b") as! String) + html_bottom{
                    this_question.setValue("b", forKey: "given_ans")
                }
                else if self.subject4_picks[json_index] == html_text + (questionDict!.value(forKey: "c") as! String) + html_bottom{
                    this_question.setValue("c", forKey: "given_ans")
                }
                else if self.subject4_picks[json_index] == html_text + (questionDict!.value(forKey: "d") as! String) + html_bottom{
                    this_question.setValue("d", forKey: "given_ans")
                }
                else if self.subject4_picks[json_index] == html_text + (questionDict!.value(forKey: "e") as! String) + html_bottom{
                    this_question.setValue("e", forKey: "given_ans")
                }
                else{
                    this_question.setValue("", forKey: "given_ans")
                }
                
                subject4_end_questions.append(this_question)
                json_index += 1
            }
        }
        if let subject4_questions = subject4_this.value(forKey: "questions21_30") as? NSArray{
            var json_index = 0
            let html_text = "<!DOCTYPE html> <html> <head> <style> div { width: 100%; word-wrap: break-word; font-size: 40px;} img{width: 15%; height: auto; max-height:170px;} </style> </head> <body> <div>"
            let html_bottom = "</div> </body> </html>"
            for question in subject4_questions{
                let questionDict = question as? NSDictionary
                let this_question: NSMutableDictionary = NSMutableDictionary()
                
                this_question.setValue(self.subject4_points_array[json_index+20], forKey: "point")
                this_question.setValue(questionDict!.value(forKey: "a"), forKey: "a")
                this_question.setValue(questionDict!.value(forKey: "b"), forKey: "b")
                this_question.setValue(questionDict!.value(forKey: "c"), forKey: "c")
                this_question.setValue(questionDict!.value(forKey: "d"), forKey: "d")
                this_question.setValue(questionDict!.value(forKey: "e"), forKey: "e")
                this_question.setValue(questionDict!.value(forKey: "f"), forKey: "f")
                this_question.setValue(questionDict!.value(forKey: "g"), forKey: "g")
                this_question.setValue(questionDict!.value(forKey: "h"), forKey: "h")
                this_question.setValue(questionDict!.value(forKey: "q"), forKey: "q")
                this_question.setValue(questionDict!.value(forKey: "right_ans_nums"), forKey: "right_ans_nums")
                this_question.setValue(questionDict!.value(forKey: "q_id"), forKey: "q_id")
                this_question.setValue(questionDict!.value(forKey: "topic_id"), forKey: "topic_id")
                this_question.setValue(questionDict!.value(forKey: "topic_name"), forKey: "topic_name")
                this_question.setValue(questionDict!.value(forKey: "topic_video_link"), forKey: "topic_video_link")
                this_question.setValue(questionDict!.value(forKey: "weight"), forKey: "weight")
                this_question.setValue(questionDict!.value(forKey: "year"), forKey: "year")
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
                
                
                if self.subject4_picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "a") as! String) + html_bottom{
                    this_question.setValue("a", forKey: "given1_ans")
                }
                if self.subject4_picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "a") as! String) + html_bottom{
                    this_question.setValue("a", forKey: "given2_ans")
                }
                if self.subject4_picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "a") as! String) + html_bottom{
                    this_question.setValue("a", forKey: "given3_ans")
                }
                
                if self.subject4_picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "b") as! String) + html_bottom{
                    this_question.setValue("b", forKey: "given1_ans")
                }
                if self.subject4_picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "b") as! String) + html_bottom{
                    this_question.setValue("b", forKey: "given2_ans")
                }
                if self.subject4_picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "b") as! String) + html_bottom{
                    this_question.setValue("b", forKey: "given3_ans")
                }
                
                if self.subject4_picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "c") as! String) + html_bottom{
                    this_question.setValue("c", forKey: "given1_ans")
                }
                if self.subject4_picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "c") as! String) + html_bottom{
                    this_question.setValue("c", forKey: "given2_ans")
                }
                if self.subject4_picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "c") as! String) + html_bottom{
                    this_question.setValue("c", forKey: "given3_ans")
                }
                
                if self.subject4_picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "d") as! String) + html_bottom{
                    this_question.setValue("d", forKey: "given1_ans")
                }
                if self.subject4_picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "d") as! String) + html_bottom{
                    this_question.setValue("d", forKey: "given2_ans")
                }
                if self.subject4_picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "d") as! String) + html_bottom{
                    this_question.setValue("d", forKey: "given3_ans")
                }
                
                if self.subject4_picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "e") as! String) + html_bottom{
                    this_question.setValue("e", forKey: "given1_ans")
                }
                if self.subject4_picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "e") as! String) + html_bottom{
                    this_question.setValue("e", forKey: "given2_ans")
                }
                if self.subject4_picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "e") as! String) + html_bottom{
                    this_question.setValue("e", forKey: "given3_ans")
                }
                
                if self.subject4_picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "f") as! String) + html_bottom{
                    this_question.setValue("f", forKey: "given1_ans")
                }
                if self.subject4_picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "f") as! String) + html_bottom{
                    this_question.setValue("f", forKey: "given2_ans")
                }
                if self.subject4_picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "f") as! String) + html_bottom{
                    this_question.setValue("f", forKey: "given3_ans")
                }
                
                if self.subject4_picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "g") as! String) + html_bottom{
                    this_question.setValue("g", forKey: "given1_ans")
                }
                if self.subject4_picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "g") as! String) + html_bottom{
                    this_question.setValue("g", forKey: "given2_ans")
                }
                if self.subject4_picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "g") as! String) + html_bottom{
                    this_question.setValue("g", forKey: "given3_ans")
                }
                
                if self.subject4_picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "h") as! String) + html_bottom{
                    this_question.setValue("h", forKey: "given1_ans")
                }
                if self.subject4_picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "h") as! String) + html_bottom{
                    this_question.setValue("h", forKey: "given2_ans")
                }
                if self.subject4_picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "h") as! String) + html_bottom{
                    this_question.setValue("h", forKey: "given3_ans")
                }
                
                if self.subject4_picks21_30[json_index][0] == ""{
                    this_question.setValue("", forKey: "given1_ans")
                }
                if self.subject4_picks21_30[json_index][1] == ""{
                    this_question.setValue("", forKey: "given2_ans")
                }
                if self.subject4_picks21_30[json_index][2] == ""{
                    this_question.setValue("", forKey: "given3_ans")
                }
                
                subject4_end_questions21_30.append(this_question)
                json_index += 1
            }
        }
        if let subject5_questions = subject5_this.value(forKey: "questions1_20") as? NSArray{
            var json_index = 0
            let html_text = "<!DOCTYPE html> <html> <head> <style> div { width: 100%; word-wrap: break-word; font-size: 40px;} img{width: 15%; height: auto; max-height:170px;} </style> </head> <body> <div>"
            let html_bottom = "</div> </body> </html>"
            for question in subject5_questions{
                let questionDict = question as? NSDictionary
                let this_question: NSMutableDictionary = NSMutableDictionary()
                
                this_question.setValue(self.subject5_points_array[json_index], forKey: "point")
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
                
                
                if self.subject5_picks[json_index] == html_text + (questionDict!.value(forKey: "a") as! String) + html_bottom{
                    this_question.setValue("a", forKey: "given_ans")
                }
                else if self.subject5_picks[json_index] == html_text + (questionDict!.value(forKey: "b") as! String) + html_bottom{
                    this_question.setValue("b", forKey: "given_ans")
                }
                else if self.subject5_picks[json_index] == html_text + (questionDict!.value(forKey: "c") as! String) + html_bottom{
                    this_question.setValue("c", forKey: "given_ans")
                }
                else if self.subject5_picks[json_index] == html_text + (questionDict!.value(forKey: "d") as! String) + html_bottom{
                    this_question.setValue("d", forKey: "given_ans")
                }
                else if self.subject5_picks[json_index] == html_text + (questionDict!.value(forKey: "e") as! String) + html_bottom{
                    this_question.setValue("e", forKey: "given_ans")
                }
                else{
                    this_question.setValue("", forKey: "given_ans")
                }
                
                subject5_end_questions.append(this_question)
                json_index += 1
            }
        }
        if let subject5_questions = subject5_this.value(forKey: "questions21_30") as? NSArray{
            var json_index = 0
            let html_text = "<!DOCTYPE html> <html> <head> <style> div { width: 100%; word-wrap: break-word; font-size: 40px;} img{width: 15%; height: auto; max-height:170px;} </style> </head> <body> <div>"
            let html_bottom = "</div> </body> </html>"
            for question in subject5_questions{
                let questionDict = question as? NSDictionary
                let this_question: NSMutableDictionary = NSMutableDictionary()
                
                this_question.setValue(self.subject5_points_array[json_index+20], forKey: "point")
                this_question.setValue(questionDict!.value(forKey: "a"), forKey: "a")
                this_question.setValue(questionDict!.value(forKey: "b"), forKey: "b")
                this_question.setValue(questionDict!.value(forKey: "c"), forKey: "c")
                this_question.setValue(questionDict!.value(forKey: "d"), forKey: "d")
                this_question.setValue(questionDict!.value(forKey: "e"), forKey: "e")
                this_question.setValue(questionDict!.value(forKey: "f"), forKey: "f")
                this_question.setValue(questionDict!.value(forKey: "g"), forKey: "g")
                this_question.setValue(questionDict!.value(forKey: "h"), forKey: "h")
                this_question.setValue(questionDict!.value(forKey: "q"), forKey: "q")
                this_question.setValue(questionDict!.value(forKey: "right_ans_nums"), forKey: "right_ans_nums")
                this_question.setValue(questionDict!.value(forKey: "q_id"), forKey: "q_id")
                this_question.setValue(questionDict!.value(forKey: "topic_id"), forKey: "topic_id")
                this_question.setValue(questionDict!.value(forKey: "topic_name"), forKey: "topic_name")
                this_question.setValue(questionDict!.value(forKey: "topic_video_link"), forKey: "topic_video_link")
                this_question.setValue(questionDict!.value(forKey: "weight"), forKey: "weight")
                this_question.setValue(questionDict!.value(forKey: "year"), forKey: "year")
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
                
                
                if self.subject5_picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "a") as! String) + html_bottom{
                    this_question.setValue("a", forKey: "given1_ans")
                }
                if self.subject5_picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "a") as! String) + html_bottom{
                    this_question.setValue("a", forKey: "given2_ans")
                }
                if self.subject5_picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "a") as! String) + html_bottom{
                    this_question.setValue("a", forKey: "given3_ans")
                }
                
                if self.subject5_picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "b") as! String) + html_bottom{
                    this_question.setValue("b", forKey: "given1_ans")
                }
                if self.subject5_picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "b") as! String) + html_bottom{
                    this_question.setValue("b", forKey: "given2_ans")
                }
                if self.subject5_picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "b") as! String) + html_bottom{
                    this_question.setValue("b", forKey: "given3_ans")
                }
                
                if self.subject5_picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "c") as! String) + html_bottom{
                    this_question.setValue("c", forKey: "given1_ans")
                }
                if self.subject5_picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "c") as! String) + html_bottom{
                    this_question.setValue("c", forKey: "given2_ans")
                }
                if self.subject5_picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "c") as! String) + html_bottom{
                    this_question.setValue("c", forKey: "given3_ans")
                }
                
                if self.subject5_picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "d") as! String) + html_bottom{
                    this_question.setValue("d", forKey: "given1_ans")
                }
                if self.subject5_picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "d") as! String) + html_bottom{
                    this_question.setValue("d", forKey: "given2_ans")
                }
                if self.subject5_picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "d") as! String) + html_bottom{
                    this_question.setValue("d", forKey: "given3_ans")
                }
                
                if self.subject5_picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "e") as! String) + html_bottom{
                    this_question.setValue("e", forKey: "given1_ans")
                }
                if self.subject5_picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "e") as! String) + html_bottom{
                    this_question.setValue("e", forKey: "given2_ans")
                }
                if self.subject5_picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "e") as! String) + html_bottom{
                    this_question.setValue("e", forKey: "given3_ans")
                }
                
                if self.subject5_picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "f") as! String) + html_bottom{
                    this_question.setValue("f", forKey: "given1_ans")
                }
                if self.subject5_picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "f") as! String) + html_bottom{
                    this_question.setValue("f", forKey: "given2_ans")
                }
                if self.subject5_picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "f") as! String) + html_bottom{
                    this_question.setValue("f", forKey: "given3_ans")
                }
                
                if self.subject5_picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "g") as! String) + html_bottom{
                    this_question.setValue("g", forKey: "given1_ans")
                }
                if self.subject5_picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "g") as! String) + html_bottom{
                    this_question.setValue("g", forKey: "given2_ans")
                }
                if self.subject5_picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "g") as! String) + html_bottom{
                    this_question.setValue("g", forKey: "given3_ans")
                }
                
                if self.subject5_picks21_30[json_index][0] == html_text + (questionDict!.value(forKey: "h") as! String) + html_bottom{
                    this_question.setValue("h", forKey: "given1_ans")
                }
                if self.subject5_picks21_30[json_index][1] == html_text + (questionDict!.value(forKey: "h") as! String) + html_bottom{
                    this_question.setValue("h", forKey: "given2_ans")
                }
                if self.subject5_picks21_30[json_index][2] == html_text + (questionDict!.value(forKey: "h") as! String) + html_bottom{
                    this_question.setValue("h", forKey: "given3_ans")
                }
                
                if self.subject5_picks21_30[json_index][0] == ""{
                    this_question.setValue("", forKey: "given1_ans")
                }
                if self.subject5_picks21_30[json_index][1] == ""{
                    this_question.setValue("", forKey: "given2_ans")
                }
                if self.subject5_picks21_30[json_index][2] == ""{
                    this_question.setValue("", forKey: "given3_ans")
                }
                
                subject5_end_questions21_30.append(this_question)
                json_index += 1
            }
        }

        
        
        let subject_1:NSMutableDictionary = NSMutableDictionary()
        subject_1.setValue(subject1_this.value(forKey: "subject_name"), forKey: "subject_name")
        subject_1.setValue(subject1_point, forKey: "points")
        subject_1.setValue(subject1_end_questions, forKey: "questions")
        
        let subject_2:NSMutableDictionary = NSMutableDictionary()
        subject_2.setValue(subject2_this.value(forKey: "subject_name"), forKey: "subject_name")
        subject_2.setValue(subject2_point, forKey: "points")
        subject_2.setValue(texts_subject2_this, forKey: "texts")
        subject_2.setValue(subject2_end_questions, forKey: "questions")
        
        let subject_3:NSMutableDictionary = NSMutableDictionary()
        subject_3.setValue(subject3_this.value(forKey: "subject_name"), forKey: "subject_name")
        subject_3.setValue(subject3_point, forKey: "points")
        subject_3.setValue(subject3_end_questions, forKey: "questions")
        
        let subject_4:NSMutableDictionary = NSMutableDictionary()
        subject_4.setValue(subject4_this.value(forKey: "subject_name"), forKey: "subject_name")
        subject_4.setValue(subject4_point, forKey: "points")
        subject_4.setValue(subject4_end_questions, forKey: "questions1_20")
        subject_4.setValue(subject4_end_questions21_30, forKey: "questions21_30")
        
        let subject_5:NSMutableDictionary = NSMutableDictionary()
        subject_5.setValue(subject5_this.value(forKey: "subject_name"), forKey: "subject_name")
        subject_5.setValue(subject5_point, forKey: "points")
        subject_5.setValue(subject5_end_questions, forKey: "questions1_20")
        subject_5.setValue(subject5_end_questions21_30, forKey: "questions21_30")
        
        
        self.end_json.setValue(msg_this_json.value(forKey: "num_id"), forKey: "num_id")
        self.end_json.setValue(msg_this_json.value(forKey: "lang_id"), forKey: "lang_id")
        self.end_json.setValue(msg_this_json.value(forKey: "lang_name"), forKey: "lang_name")
        self.end_json.setValue(defaults.string(forKey: "ID")!, forKey: "user_id")
        self.end_json.setValue(1, forKey: "on_ubt")
        self.end_json.setValue(self.Points, forKey: "points")
        self.end_json.setValue(result, forKey: "passdate")
        self.end_json.setValue(self.start_time, forKey: "start_time")
        self.end_json.setValue(self.spend_time, forKey: "time_spend")
        self.end_json.setValue(msg_this_json.value(forKey: "subject1_id"), forKey: "subject1_id")
        self.end_json.setValue(msg_this_json.value(forKey: "subject2_id"), forKey: "subject2_id")
        self.end_json.setValue(defaults.string(forKey: "Subject1_id")!, forKey: "subject1_id")
        self.end_json.setValue(defaults.string(forKey: "Subject2_id")!, forKey: "subject2_id")
        
        self.end_json.setValue(subject_1, forKey: "subject_1")
        self.end_json.setValue(subject_2, forKey: "subject_2")
        self.end_json.setValue(subject_3, forKey: "subject_3")
        self.end_json.setValue(subject_4, forKey: "subject_" + defaults.string(forKey: "Subject1_id")!)
        self.end_json.setValue(subject_5, forKey: "subject_" + defaults.string(forKey: "Subject2_id")!)

        
        do{
            let jsonData = try! JSONSerialization.data(withJSONObject: self.end_json)
            let jsonString = String(data: jsonData, encoding: .utf8)
            self.jsonSTR = jsonString!
//            print(jsonSTR)
        }
        
        
        let save_url = URL(string: "http://185.111.107.111/api/ubt/save1.php")!
        var save_request = URLRequest(url: save_url)
        save_request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        save_request.httpMethod = "POST"
        save_request.httpBody = self.jsonSTR.data(using: .utf8)
        //Get response
        let save_task = URLSession.shared.dataTask(with: save_request, completionHandler:{(data, response, error) in
            do{
                let _ = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: AnyObject]
            }
            catch{
                print(error)
            }
        })
        save_task.resume()
        
        defaults.removeObject(forKey: "TerminatedTest")
        defaults.setValue("0", forKey: "IfTerminated")
        defaults.removeObject(forKey: "TerminatedUNTSubject1_picks")
        defaults.removeObject(forKey: "TerminatedUNTSubject2_picks")
        defaults.removeObject(forKey: "TerminatedUNTSubject3_picks")
        defaults.removeObject(forKey: "TerminatedUNTSubject4_picks")
        defaults.removeObject(forKey: "TerminatedUNTSubject4_picks21_30")
        defaults.removeObject(forKey: "TerminatedUNTSubject5_picks")
        defaults.removeObject(forKey: "TerminatedUNTSubject5_picks21_30")

    }
    
    func AppWillTerminate(){
        let defaults = UserDefaults.standard

        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        let result = formatter.string(from: date)
        
        var list = [[String]]()
        var this_list = [String]()
        this_list.append("ҰБТ")
        this_list.append("Бітіру")
        this_list.append(result)
        this_list.append("Ұ")
        
        list.append(this_list)
        
        defaults.set(list, forKey: "TerminatedTest")
        defaults.setValue(defaults.value(forKey: "Temporary"), forKey: "TerminatedTestBody")
        
    }
}
