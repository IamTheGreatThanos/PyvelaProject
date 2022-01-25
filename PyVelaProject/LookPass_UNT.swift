import Foundation
import UIKit
import WebKit


class LookPass_UNT : UIViewController{
    
    @IBOutlet weak var SegmentOutlet: UISegmentedControl!
    @IBOutlet weak var Q_WebView: WKWebView!
    @IBOutlet weak var Q_NumLabel: UILabel!
    
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
    
    var ThisTest: NSDictionary = [:]
    var Subject1_id = ""
    var Subject1_Name = ""
    var Subject2_id = ""
    var Subject2_Name = ""
    var ind = 0
    var SubjectNumber_by_Indicator = 0
    
    //subject1
    var subject1_q = [String]()
    var subject1_rightans = [String]()
    var subject1_A_Array = [String]()
    var subject1_B_Array = [String]()
    var subject1_C_Array = [String]()
    var subject1_D_Array = [String]()
    var subject1_E_Array = [String]()
    var subject1_picks = [String]()
    //subject2
    var subject2_q = [String]()
    var subject2_rightans = [String]()
    var subject2_A_Array = [String]()
    var subject2_B_Array = [String]()
    var subject2_C_Array = [String]()
    var subject2_D_Array = [String]()
    var subject2_E_Array = [String]()
    var subject2_picks = [String]()
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
    
    
    
    @IBAction func SegmentAction(_ sender: UISegmentedControl) {
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
            Q_WebView.loadHTMLString(subject1_q[ind], baseURL: nil)
            
            A_WebView.loadHTMLString(subject1_A_Array[ind], baseURL: nil)
            B_WebView.loadHTMLString(subject1_B_Array[ind], baseURL: nil)
            C_WebView.loadHTMLString(subject1_C_Array[ind], baseURL: nil)
            D_WebView.loadHTMLString(subject1_D_Array[ind], baseURL: nil)
            E_WebView.loadHTMLString(subject1_E_Array[ind], baseURL: nil)
            
            A_Label.textColor = UIColor.black
            B_Label.textColor = UIColor.black
            C_Label.textColor = UIColor.black
            D_Label.textColor = UIColor.black
            E_Label.textColor = UIColor.black
            
            if subject1_rightans[self.ind] == subject1_A_Array[self.ind] && subject1_picks[self.ind] == subject1_A_Array[self.ind]{
                A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject1_rightans[self.ind] == subject1_A_Array[self.ind] && subject1_picks[self.ind] != subject1_A_Array[self.ind]{
                A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject1_rightans[self.ind] != subject1_A_Array[self.ind] && subject1_picks[self.ind] == subject1_A_Array[self.ind]{
                A_Label.textColor = UIColor.red
            }
            
            if subject1_rightans[self.ind] == subject1_B_Array[self.ind] && subject1_picks[self.ind] == subject1_B_Array[self.ind]{
                B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject1_rightans[self.ind] == subject1_B_Array[self.ind] && subject1_picks[self.ind] != subject1_B_Array[self.ind]{
                B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject1_rightans[self.ind] != subject1_B_Array[self.ind] && subject1_picks[self.ind] == subject1_B_Array[self.ind]{
                B_Label.textColor = UIColor.red
            }
            
            if subject1_rightans[self.ind] == subject1_C_Array[self.ind] && subject1_picks[self.ind] == subject1_C_Array[self.ind]{
                C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject1_rightans[self.ind] == subject1_C_Array[self.ind] && subject1_picks[self.ind] != subject1_C_Array[self.ind]{
                C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject1_rightans[self.ind] != subject1_C_Array[self.ind] && subject1_picks[self.ind] == subject1_C_Array[self.ind]{
                C_Label.textColor = UIColor.red
            }
            
            if subject1_rightans[self.ind] == subject1_D_Array[self.ind] && subject1_picks[self.ind] == subject1_D_Array[self.ind]{
                D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject1_rightans[self.ind] == subject1_D_Array[self.ind] && subject1_picks[self.ind] != subject1_D_Array[self.ind]{
                D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject1_rightans[self.ind] != subject1_D_Array[self.ind] && subject1_picks[self.ind] == subject1_D_Array[self.ind]{
                D_Label.textColor = UIColor.red
            }
            
            if subject1_rightans[self.ind] == subject1_E_Array[self.ind] && subject1_picks[self.ind] == subject1_E_Array[self.ind]{
                E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject1_rightans[self.ind] == subject1_E_Array[self.ind] && subject1_picks[self.ind] != subject1_E_Array[self.ind]{
                E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject1_rightans[self.ind] != subject1_E_Array[self.ind] && subject1_picks[self.ind] == subject1_E_Array[self.ind]{
                E_Label.textColor = UIColor.red
            }
            
            Q_NumLabel.text = String(ind+1) + " in 20"
            
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
            Q_WebView.loadHTMLString(texts[0] + "\n" + subject2_q[ind], baseURL: nil)
            
            A_WebView.loadHTMLString(subject2_A_Array[ind], baseURL: nil)
            B_WebView.loadHTMLString(subject2_B_Array[ind], baseURL: nil)
            C_WebView.loadHTMLString(subject2_C_Array[ind], baseURL: nil)
            D_WebView.loadHTMLString(subject2_D_Array[ind], baseURL: nil)
            E_WebView.loadHTMLString(subject2_E_Array[ind], baseURL: nil)
            
            A_Label.textColor = UIColor.black
            B_Label.textColor = UIColor.black
            C_Label.textColor = UIColor.black
            D_Label.textColor = UIColor.black
            E_Label.textColor = UIColor.black
            
            if subject2_rightans[self.ind] == subject2_A_Array[self.ind] && subject2_picks[self.ind] == subject2_A_Array[self.ind]{
                A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject2_rightans[self.ind] == subject2_A_Array[self.ind] && subject2_picks[self.ind] != subject2_A_Array[self.ind]{
                A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject2_rightans[self.ind] != subject2_A_Array[self.ind] && subject2_picks[self.ind] == subject2_A_Array[self.ind]{
                A_Label.textColor = UIColor.red
            }
            
            if subject2_rightans[self.ind] == subject2_B_Array[self.ind] && subject2_picks[self.ind] == subject2_B_Array[self.ind]{
                B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject2_rightans[self.ind] == subject2_B_Array[self.ind] && subject2_picks[self.ind] != subject2_B_Array[self.ind]{
                B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject2_rightans[self.ind] != subject2_B_Array[self.ind] && subject2_picks[self.ind] == subject2_B_Array[self.ind]{
                B_Label.textColor = UIColor.red
            }
            
            if subject2_rightans[self.ind] == subject2_C_Array[self.ind] && subject2_picks[self.ind] == subject2_C_Array[self.ind]{
                C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject2_rightans[self.ind] == subject2_C_Array[self.ind] && subject2_picks[self.ind] != subject2_C_Array[self.ind]{
                C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject2_rightans[self.ind] != subject2_C_Array[self.ind] && subject2_picks[self.ind] == subject2_C_Array[self.ind]{
                C_Label.textColor = UIColor.red
            }
            
            if subject2_rightans[self.ind] == subject2_D_Array[self.ind] && subject2_picks[self.ind] == subject2_D_Array[self.ind]{
                D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject2_rightans[self.ind] == subject2_D_Array[self.ind] && subject2_picks[self.ind] != subject2_D_Array[self.ind]{
                D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject2_rightans[self.ind] != subject2_D_Array[self.ind] && subject2_picks[self.ind] == subject2_D_Array[self.ind]{
                D_Label.textColor = UIColor.red
            }
            
            if subject2_rightans[self.ind] == subject2_E_Array[self.ind] && subject2_picks[self.ind] == subject2_E_Array[self.ind]{
                E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject2_rightans[self.ind] == subject2_E_Array[self.ind] && subject2_picks[self.ind] != subject2_E_Array[self.ind]{
                E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject2_rightans[self.ind] != subject2_E_Array[self.ind] && subject2_picks[self.ind] == subject2_E_Array[self.ind]{
                E_Label.textColor = UIColor.red
            }
            
            Q_NumLabel.text = String(ind+1) + " in 20"
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
            Q_WebView.loadHTMLString(subject3_q[ind], baseURL: nil)
            
            A_WebView.loadHTMLString(subject3_A_Array[ind], baseURL: nil)
            B_WebView.loadHTMLString(subject3_B_Array[ind], baseURL: nil)
            C_WebView.loadHTMLString(subject3_C_Array[ind], baseURL: nil)
            D_WebView.loadHTMLString(subject3_D_Array[ind], baseURL: nil)
            E_WebView.loadHTMLString(subject3_E_Array[ind], baseURL: nil)
            
            A_Label.textColor = UIColor.black
            B_Label.textColor = UIColor.black
            C_Label.textColor = UIColor.black
            D_Label.textColor = UIColor.black
            E_Label.textColor = UIColor.black
            
            if subject3_rightans[self.ind] == subject3_A_Array[self.ind] && subject3_picks[self.ind] == subject3_A_Array[self.ind]{
                A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject3_rightans[self.ind] == subject3_A_Array[self.ind] && subject3_picks[self.ind] != subject3_A_Array[self.ind]{
                A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject3_rightans[self.ind] != subject3_A_Array[self.ind] && subject3_picks[self.ind] == subject3_A_Array[self.ind]{
                A_Label.textColor = UIColor.red
            }
            
            if subject3_rightans[self.ind] == subject3_B_Array[self.ind] && subject3_picks[self.ind] == subject3_B_Array[self.ind]{
                B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject3_rightans[self.ind] == subject3_B_Array[self.ind] && subject3_picks[self.ind] != subject3_B_Array[self.ind]{
                B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject3_rightans[self.ind] != subject3_B_Array[self.ind] && subject3_picks[self.ind] == subject3_B_Array[self.ind]{
                B_Label.textColor = UIColor.red
            }
            
            if subject3_rightans[self.ind] == subject3_C_Array[self.ind] && subject3_picks[self.ind] == subject3_C_Array[self.ind]{
                C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject3_rightans[self.ind] == subject3_C_Array[self.ind] && subject3_picks[self.ind] != subject3_C_Array[self.ind]{
                C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject3_rightans[self.ind] != subject3_C_Array[self.ind] && subject3_picks[self.ind] == subject3_C_Array[self.ind]{
                C_Label.textColor = UIColor.red
            }
            
            if subject3_rightans[self.ind] == subject3_D_Array[self.ind] && subject3_picks[self.ind] == subject3_D_Array[self.ind]{
                D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject3_rightans[self.ind] == subject3_D_Array[self.ind] && subject3_picks[self.ind] != subject3_D_Array[self.ind]{
                D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject3_rightans[self.ind] != subject3_D_Array[self.ind] && subject3_picks[self.ind] == subject3_D_Array[self.ind]{
                D_Label.textColor = UIColor.red
            }
            
            if subject3_rightans[self.ind] == subject3_E_Array[self.ind] && subject3_picks[self.ind] == subject3_E_Array[self.ind]{
                E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject3_rightans[self.ind] == subject3_E_Array[self.ind] && subject3_picks[self.ind] != subject3_E_Array[self.ind]{
                E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject3_rightans[self.ind] != subject3_E_Array[self.ind] && subject3_picks[self.ind] == subject3_E_Array[self.ind]{
                E_Label.textColor = UIColor.red
            }
            
            Q_NumLabel.text = String(ind+1) + " in 20"
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
            Q_WebView.loadHTMLString(subject4_q[ind], baseURL: nil)
            
            A_WebView.loadHTMLString(subject4_A_Array[ind], baseURL: nil)
            B_WebView.loadHTMLString(subject4_B_Array[ind], baseURL: nil)
            C_WebView.loadHTMLString(subject4_C_Array[ind], baseURL: nil)
            D_WebView.loadHTMLString(subject4_D_Array[ind], baseURL: nil)
            E_WebView.loadHTMLString(subject4_E_Array[ind], baseURL: nil)
            
            A_Label.textColor = UIColor.black
            B_Label.textColor = UIColor.black
            C_Label.textColor = UIColor.black
            D_Label.textColor = UIColor.black
            E_Label.textColor = UIColor.black
            
            if subject4_rightans[self.ind] == subject4_A_Array[self.ind] && subject4_picks[self.ind] == subject4_A_Array[self.ind]{
                A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject4_rightans[self.ind] == subject4_A_Array[self.ind] && subject4_picks[self.ind] != subject4_A_Array[self.ind]{
                A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject4_rightans[self.ind] != subject4_A_Array[self.ind] && subject4_picks[self.ind] == subject4_A_Array[self.ind]{
                A_Label.textColor = UIColor.red
            }
            
            if subject4_rightans[self.ind] == subject4_B_Array[self.ind] && subject4_picks[self.ind] == subject4_B_Array[self.ind]{
                B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject4_rightans[self.ind] == subject4_B_Array[self.ind] && subject4_picks[self.ind] != subject4_B_Array[self.ind]{
                B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject4_rightans[self.ind] != subject4_B_Array[self.ind] && subject4_picks[self.ind] == subject4_B_Array[self.ind]{
                B_Label.textColor = UIColor.red
            }
            
            if subject4_rightans[self.ind] == subject4_C_Array[self.ind] && subject4_picks[self.ind] == subject4_C_Array[self.ind]{
                C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject4_rightans[self.ind] == subject4_C_Array[self.ind] && subject4_picks[self.ind] != subject4_C_Array[self.ind]{
                C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject4_rightans[self.ind] != subject4_C_Array[self.ind] && subject4_picks[self.ind] == subject4_C_Array[self.ind]{
                C_Label.textColor = UIColor.red
            }
            
            if subject4_rightans[self.ind] == subject4_D_Array[self.ind] && subject4_picks[self.ind] == subject4_D_Array[self.ind]{
                D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject4_rightans[self.ind] == subject4_D_Array[self.ind] && subject4_picks[self.ind] != subject4_D_Array[self.ind]{
                D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject4_rightans[self.ind] != subject4_D_Array[self.ind] && subject4_picks[self.ind] == subject4_D_Array[self.ind]{
                D_Label.textColor = UIColor.red
            }
            
            if subject4_rightans[self.ind] == subject4_E_Array[self.ind] && subject4_picks[self.ind] == subject4_E_Array[self.ind]{
                E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject4_rightans[self.ind] == subject4_E_Array[self.ind] && subject4_picks[self.ind] != subject4_E_Array[self.ind]{
                E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject4_rightans[self.ind] != subject4_E_Array[self.ind] && subject4_picks[self.ind] == subject4_E_Array[self.ind]{
                E_Label.textColor = UIColor.red
            }
            
            Q_NumLabel.text = String(ind+1) + " in 30"
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
            Q_WebView.loadHTMLString(subject5_q[ind], baseURL: nil)
            
            A_WebView.loadHTMLString(subject5_A_Array[ind], baseURL: nil)
            B_WebView.loadHTMLString(subject5_B_Array[ind], baseURL: nil)
            C_WebView.loadHTMLString(subject5_C_Array[ind], baseURL: nil)
            D_WebView.loadHTMLString(subject5_D_Array[ind], baseURL: nil)
            E_WebView.loadHTMLString(subject5_E_Array[ind], baseURL: nil)
            
            A_Label.textColor = UIColor.black
            B_Label.textColor = UIColor.black
            C_Label.textColor = UIColor.black
            D_Label.textColor = UIColor.black
            E_Label.textColor = UIColor.black
            
            if subject5_rightans[self.ind] == subject5_A_Array[self.ind] && subject5_picks[self.ind] == subject5_A_Array[self.ind]{
                A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject5_rightans[self.ind] == subject5_A_Array[self.ind] && subject5_picks[self.ind] != subject5_A_Array[self.ind]{
                A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject5_rightans[self.ind] != subject5_A_Array[self.ind] && subject5_picks[self.ind] == subject5_A_Array[self.ind]{
                A_Label.textColor = UIColor.red
            }
            
            if subject5_rightans[self.ind] == subject5_B_Array[self.ind] && subject5_picks[self.ind] == subject5_B_Array[self.ind]{
                B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject5_rightans[self.ind] == subject5_B_Array[self.ind] && subject5_picks[self.ind] != subject5_B_Array[self.ind]{
                B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject5_rightans[self.ind] != subject5_B_Array[self.ind] && subject5_picks[self.ind] == subject5_B_Array[self.ind]{
                B_Label.textColor = UIColor.red
            }
            
            if subject5_rightans[self.ind] == subject5_C_Array[self.ind] && subject5_picks[self.ind] == subject5_C_Array[self.ind]{
                C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject5_rightans[self.ind] == subject5_C_Array[self.ind] && subject5_picks[self.ind] != subject5_C_Array[self.ind]{
                C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject5_rightans[self.ind] != subject5_C_Array[self.ind] && subject5_picks[self.ind] == subject5_C_Array[self.ind]{
                C_Label.textColor = UIColor.red
            }
            
            if subject5_rightans[self.ind] == subject5_D_Array[self.ind] && subject5_picks[self.ind] == subject5_D_Array[self.ind]{
                D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject5_rightans[self.ind] == subject5_D_Array[self.ind] && subject5_picks[self.ind] != subject5_D_Array[self.ind]{
                D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject5_rightans[self.ind] != subject5_D_Array[self.ind] && subject5_picks[self.ind] == subject5_D_Array[self.ind]{
                D_Label.textColor = UIColor.red
            }
            
            if subject5_rightans[self.ind] == subject5_E_Array[self.ind] && subject5_picks[self.ind] == subject5_E_Array[self.ind]{
                E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject5_rightans[self.ind] == subject5_E_Array[self.ind] && subject5_picks[self.ind] != subject5_E_Array[self.ind]{
                E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject5_rightans[self.ind] != subject5_E_Array[self.ind] && subject5_picks[self.ind] == subject5_E_Array[self.ind]{
                E_Label.textColor = UIColor.red
            }
            
            Q_NumLabel.text = String(ind+1) + " in 30"
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
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
        
        let alert = UIAlertController(title: "Назар аударыңыз!", message: "*Көк - сіз белгілеген дұрыс жауап. \n*Қызыл - сіз белгілеген бұрыс жауап. \n*Жасыл - дұрыс жауабы.", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        let num = Int(defaults.string(forKey: "IndexOfTest")!)!
        let countOfLines = Int(defaults.string(forKey: "CountOfLine")!)!
        self.ThisTest = defaults.value(forKey: "LastTest_" + String(countOfLines - num)) as! NSDictionary
        self.Subject1_id = defaults.string(forKey: "LastTest_" + String(countOfLines - num) + "_1")!
        self.Subject2_id = defaults.string(forKey: "LastTest_" + String(countOfLines - num) + "_2")!
        self.subject1_picks = defaults.value(forKey: "LastTest_" + String(countOfLines - num) + "_subject1_picks")! as! [String]
        self.subject2_picks = defaults.value(forKey: "LastTest_" + String(countOfLines - num) + "_subject2_picks")! as! [String]
        self.subject3_picks = defaults.value(forKey: "LastTest_" + String(countOfLines - num) + "_subject3_picks")! as! [String]
        self.subject4_picks = defaults.value(forKey: "LastTest_" + String(countOfLines - num) + "_subject4_picks")! as! [String]
        self.subject4_picks21_30 = defaults.value(forKey: "LastTest_" + String(countOfLines - num) + "_subject4_picks21_30")! as! [[String]]
        self.subject5_picks = defaults.value(forKey: "LastTest_" + String(countOfLines - num) + "_subject5_picks")! as! [String]
        self.subject5_picks21_30 = defaults.value(forKey: "LastTest_" + String(countOfLines - num) + "_subject5_picks21_30")! as! [[String]]
        
        for _ in 0 ... 9 {
            subject5_Answers21_30.append([])
            subject5_rightans21_30.append([])
            subject4_Answers21_30.append([])
            subject4_rightans21_30.append([])
            subject4_right_ans_in_ques.append("0")
            subject5_right_ans_in_ques.append("0")
        }
        F_Label.isHidden = true
        G_Label.isHidden = true
        H_Label.isHidden = true
        
        F_WebView.isHidden = true
        G_WebView.isHidden = true
        H_WebView.isHidden = true
        
        parseThisTest()
        SegmentOutlet.setTitle(Subject1_Name, forSegmentAt: 3)
        SegmentOutlet.setTitle(Subject2_Name, forSegmentAt: 4)
    }
    
    func parseThisTest(){
        if let msg =  self.ThisTest.value(forKey: "msg") as? NSDictionary{
            let html_text = "<!DOCTYPE html> <html> <head> <style> div { width: 100%; word-wrap: break-word; font-size: 40px;} img{width: 15%; height: auto; max-height:170px;} </style> </head> <body> <div>"
            let html_bottom = "</div> </body> </html>"
            
            if let questionArray = msg.value(forKey: "subject_1") as? NSDictionary {
                if let subject_test = questionArray.value(forKey: "questions") as? NSArray{
                    for question in subject_test{
                        //converting the element to a dictionary
                        if let questionDict = question as? NSDictionary {
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
            if let questionArray = msg.value(forKey: "subject_2") as? NSDictionary {
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
            if let questionArray = msg.value(forKey: "subject_3") as? NSDictionary {
                
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
            if let questionArray = msg.value(forKey: "subject_" + Subject1_id) as? NSDictionary {
                
                self.Subject1_Name = questionArray.value(forKey: "subject_name") as! String
                
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
            if let questionArray = msg.value(forKey: "subject_" + Subject2_id) as? NSDictionary {
                
                self.Subject2_Name = questionArray.value(forKey: "subject_name") as! String

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
            
            self.Q_WebView.loadHTMLString(self.subject1_q[self.ind], baseURL: nil)
            
            self.A_WebView.loadHTMLString(self.subject1_A_Array[self.ind], baseURL: nil)
            self.B_WebView.loadHTMLString(self.subject1_B_Array[self.ind], baseURL: nil)
            self.C_WebView.loadHTMLString(self.subject1_C_Array[self.ind], baseURL: nil)
            self.D_WebView.loadHTMLString(self.subject1_D_Array[self.ind], baseURL: nil)
            self.E_WebView.loadHTMLString(self.subject1_E_Array[self.ind], baseURL: nil)
            
            self.Q_NumLabel.text = String(ind+1) + " in 20"
            
            if subject1_rightans[self.ind] == subject1_A_Array[self.ind] && subject1_picks[self.ind] == subject1_A_Array[self.ind]{
                A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject1_rightans[self.ind] == subject1_A_Array[self.ind] && subject1_picks[self.ind] != subject1_A_Array[self.ind]{
                A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject1_rightans[self.ind] != subject1_A_Array[self.ind] && subject1_picks[self.ind] == subject1_A_Array[self.ind]{
                A_Label.textColor = UIColor.red
            }
            
            if subject1_rightans[self.ind] == subject1_B_Array[self.ind] && subject1_picks[self.ind] == subject1_B_Array[self.ind]{
                B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject1_rightans[self.ind] == subject1_B_Array[self.ind] && subject1_picks[self.ind] != subject1_B_Array[self.ind]{
                B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject1_rightans[self.ind] != subject1_B_Array[self.ind] && subject1_picks[self.ind] == subject1_B_Array[self.ind]{
                B_Label.textColor = UIColor.red
            }
            
            if subject1_rightans[self.ind] == subject1_C_Array[self.ind] && subject1_picks[self.ind] == subject1_C_Array[self.ind]{
                C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject1_rightans[self.ind] == subject1_C_Array[self.ind] && subject1_picks[self.ind] != subject1_C_Array[self.ind]{
                C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject1_rightans[self.ind] != subject1_C_Array[self.ind] && subject1_picks[self.ind] == subject1_C_Array[self.ind]{
                C_Label.textColor = UIColor.red
            }
            
            if subject1_rightans[self.ind] == subject1_D_Array[self.ind] && subject1_picks[self.ind] == subject1_D_Array[self.ind]{
                D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject1_rightans[self.ind] == subject1_D_Array[self.ind] && subject1_picks[self.ind] != subject1_D_Array[self.ind]{
                D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject1_rightans[self.ind] != subject1_D_Array[self.ind] && subject1_picks[self.ind] == subject1_D_Array[self.ind]{
                D_Label.textColor = UIColor.red
            }
            
            if subject1_rightans[self.ind] == subject1_E_Array[self.ind] && subject1_picks[self.ind] == subject1_E_Array[self.ind]{
                E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
            }
            else if subject1_rightans[self.ind] == subject1_E_Array[self.ind] && subject1_picks[self.ind] != subject1_E_Array[self.ind]{
                E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
            }
            else if subject1_rightans[self.ind] != subject1_E_Array[self.ind] && subject1_picks[self.ind] == subject1_E_Array[self.ind]{
                E_Label.textColor = UIColor.red
            }
        }
    }
    
    @IBAction func Next_Button(_ sender: UIButton) {
        if SubjectNumber_by_Indicator == 0{
            if (ind < 19)
            {
                ind = ind + 1
                
                self.A_WebView.loadHTMLString(self.subject1_A_Array[self.ind], baseURL: nil)
                self.B_WebView.loadHTMLString(self.subject1_B_Array[self.ind], baseURL: nil)
                self.C_WebView.loadHTMLString(self.subject1_C_Array[self.ind], baseURL: nil)
                self.D_WebView.loadHTMLString(self.subject1_D_Array[self.ind], baseURL: nil)
                self.E_WebView.loadHTMLString(self.subject1_E_Array[self.ind], baseURL: nil)
                
                A_Label.textColor = UIColor.black
                B_Label.textColor = UIColor.black
                C_Label.textColor = UIColor.black
                D_Label.textColor = UIColor.black
                E_Label.textColor = UIColor.black
                
                if subject1_rightans[self.ind] == subject1_A_Array[self.ind] && subject1_picks[self.ind] == subject1_A_Array[self.ind]{
                    A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject1_rightans[self.ind] == subject1_A_Array[self.ind] && subject1_picks[self.ind] != subject1_A_Array[self.ind]{
                    A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject1_rightans[self.ind] != subject1_A_Array[self.ind] && subject1_picks[self.ind] == subject1_A_Array[self.ind]{
                    A_Label.textColor = UIColor.red
                }
                
                if subject1_rightans[self.ind] == subject1_B_Array[self.ind] && subject1_picks[self.ind] == subject1_B_Array[self.ind]{
                    B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject1_rightans[self.ind] == subject1_B_Array[self.ind] && subject1_picks[self.ind] != subject1_B_Array[self.ind]{
                    B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject1_rightans[self.ind] != subject1_B_Array[self.ind] && subject1_picks[self.ind] == subject1_B_Array[self.ind]{
                    B_Label.textColor = UIColor.red
                }
                
                if subject1_rightans[self.ind] == subject1_C_Array[self.ind] && subject1_picks[self.ind] == subject1_C_Array[self.ind]{
                    C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject1_rightans[self.ind] == subject1_C_Array[self.ind] && subject1_picks[self.ind] != subject1_C_Array[self.ind]{
                    C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject1_rightans[self.ind] != subject1_C_Array[self.ind] && subject1_picks[self.ind] == subject1_C_Array[self.ind]{
                    C_Label.textColor = UIColor.red
                }
                
                if subject1_rightans[self.ind] == subject1_D_Array[self.ind] && subject1_picks[self.ind] == subject1_D_Array[self.ind]{
                    D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject1_rightans[self.ind] == subject1_D_Array[self.ind] && subject1_picks[self.ind] != subject1_D_Array[self.ind]{
                    D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject1_rightans[self.ind] != subject1_D_Array[self.ind] && subject1_picks[self.ind] == subject1_D_Array[self.ind]{
                    D_Label.textColor = UIColor.red
                }
                
                if subject1_rightans[self.ind] == subject1_E_Array[self.ind] && subject1_picks[self.ind] == subject1_E_Array[self.ind]{
                    E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject1_rightans[self.ind] == subject1_E_Array[self.ind] && subject1_picks[self.ind] != subject1_E_Array[self.ind]{
                    E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject1_rightans[self.ind] != subject1_E_Array[self.ind] && subject1_picks[self.ind] == subject1_E_Array[self.ind]{
                    E_Label.textColor = UIColor.red
                }
                
                F_Label.isHidden = true
                G_Label.isHidden = true
                H_Label.isHidden = true
                F_WebView.isHidden = true
                G_WebView.isHidden = true
                H_WebView.isHidden = true
                
                Q_NumLabel.text = String(ind+1) + " in 20"
                Q_WebView.loadHTMLString(subject1_q[ind], baseURL: nil)
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
                
                
                A_Label.textColor = UIColor.black
                B_Label.textColor = UIColor.black
                C_Label.textColor = UIColor.black
                D_Label.textColor = UIColor.black
                E_Label.textColor = UIColor.black
                
                if subject2_rightans[self.ind] == subject2_A_Array[self.ind] && subject2_picks[self.ind] == subject2_A_Array[self.ind]{
                    A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject2_rightans[self.ind] == subject2_A_Array[self.ind] && subject2_picks[self.ind] != subject2_A_Array[self.ind]{
                    A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject2_rightans[self.ind] != subject2_A_Array[self.ind] && subject2_picks[self.ind] == subject2_A_Array[self.ind]{
                    A_Label.textColor = UIColor.red
                }
                
                if subject2_rightans[self.ind] == subject2_B_Array[self.ind] && subject2_picks[self.ind] == subject2_B_Array[self.ind]{
                    B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject2_rightans[self.ind] == subject2_B_Array[self.ind] && subject2_picks[self.ind] != subject2_B_Array[self.ind]{
                    B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject2_rightans[self.ind] != subject2_B_Array[self.ind] && subject2_picks[self.ind] == subject2_B_Array[self.ind]{
                    B_Label.textColor = UIColor.red
                }
                
                if subject2_rightans[self.ind] == subject2_C_Array[self.ind] && subject2_picks[self.ind] == subject2_C_Array[self.ind]{
                    C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject2_rightans[self.ind] == subject2_C_Array[self.ind] && subject2_picks[self.ind] != subject2_C_Array[self.ind]{
                    C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject2_rightans[self.ind] != subject2_C_Array[self.ind] && subject2_picks[self.ind] == subject2_C_Array[self.ind]{
                    C_Label.textColor = UIColor.red
                }
                
                if subject2_rightans[self.ind] == subject2_D_Array[self.ind] && subject2_picks[self.ind] == subject2_D_Array[self.ind]{
                    D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject2_rightans[self.ind] == subject2_D_Array[self.ind] && subject2_picks[self.ind] != subject2_D_Array[self.ind]{
                    D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject2_rightans[self.ind] != subject2_D_Array[self.ind] && subject2_picks[self.ind] == subject2_D_Array[self.ind]{
                    D_Label.textColor = UIColor.red
                }
                
                if subject2_rightans[self.ind] == subject2_E_Array[self.ind] && subject2_picks[self.ind] == subject2_E_Array[self.ind]{
                    E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject2_rightans[self.ind] == subject2_E_Array[self.ind] && subject2_picks[self.ind] != subject2_E_Array[self.ind]{
                    E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject2_rightans[self.ind] != subject2_E_Array[self.ind] && subject2_picks[self.ind] == subject2_E_Array[self.ind]{
                    E_Label.textColor = UIColor.red
                }
                
                
                F_Label.isHidden = true
                G_Label.isHidden = true
                H_Label.isHidden = true
                F_WebView.isHidden = true
                G_WebView.isHidden = true
                H_WebView.isHidden = true
                
                Q_NumLabel.text = String(ind+1) + " in 20"
                
                if ind+1 <= Int(texts_qnum[0])!{
                    Q_WebView.loadHTMLString(self.texts[0] + "\n" + subject2_q[ind], baseURL: nil)
                }
                else if ind+1 <= (Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                    Q_WebView.loadHTMLString(self.texts[1] + "\n" + subject2_q[ind], baseURL: nil)
                }
                else if ind+1 <= (Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                    Q_WebView.loadHTMLString(self.texts[2] + "\n" + subject2_q[ind], baseURL: nil)
                }
                else if ind+1 <= (Int(texts_qnum[3])! + Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                    Q_WebView.loadHTMLString(self.texts[3] + "\n" + subject2_q[ind], baseURL: nil)
                }
                else if ind+1 <= (Int(texts_qnum[4])! + Int(texts_qnum[3])! + Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                    Q_WebView.loadHTMLString(self.texts[4] + "\n" + subject2_q[ind], baseURL: nil)
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
                
                A_Label.textColor = UIColor.black
                B_Label.textColor = UIColor.black
                C_Label.textColor = UIColor.black
                D_Label.textColor = UIColor.black
                E_Label.textColor = UIColor.black
                
                if subject3_rightans[self.ind] == subject3_A_Array[self.ind] && subject3_picks[self.ind] == subject3_A_Array[self.ind]{
                    A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject3_rightans[self.ind] == subject3_A_Array[self.ind] && subject3_picks[self.ind] != subject3_A_Array[self.ind]{
                    A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject3_rightans[self.ind] != subject3_A_Array[self.ind] && subject3_picks[self.ind] == subject3_A_Array[self.ind]{
                    A_Label.textColor = UIColor.red
                }
                
                if subject3_rightans[self.ind] == subject3_B_Array[self.ind] && subject3_picks[self.ind] == subject3_B_Array[self.ind]{
                    B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject3_rightans[self.ind] == subject3_B_Array[self.ind] && subject3_picks[self.ind] != subject3_B_Array[self.ind]{
                    B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject3_rightans[self.ind] != subject3_B_Array[self.ind] && subject3_picks[self.ind] == subject3_B_Array[self.ind]{
                    B_Label.textColor = UIColor.red
                }
                
                if subject3_rightans[self.ind] == subject3_C_Array[self.ind] && subject3_picks[self.ind] == subject3_C_Array[self.ind]{
                    C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject3_rightans[self.ind] == subject3_C_Array[self.ind] && subject3_picks[self.ind] != subject3_C_Array[self.ind]{
                    C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject3_rightans[self.ind] != subject3_C_Array[self.ind] && subject3_picks[self.ind] == subject3_C_Array[self.ind]{
                    C_Label.textColor = UIColor.red
                }
                
                if subject3_rightans[self.ind] == subject3_D_Array[self.ind] && subject3_picks[self.ind] == subject3_D_Array[self.ind]{
                    D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject3_rightans[self.ind] == subject3_D_Array[self.ind] && subject3_picks[self.ind] != subject3_D_Array[self.ind]{
                    D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject3_rightans[self.ind] != subject3_D_Array[self.ind] && subject3_picks[self.ind] == subject3_D_Array[self.ind]{
                    D_Label.textColor = UIColor.red
                }
                
                if subject3_rightans[self.ind] == subject3_E_Array[self.ind] && subject3_picks[self.ind] == subject3_E_Array[self.ind]{
                    E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject3_rightans[self.ind] == subject3_E_Array[self.ind] && subject3_picks[self.ind] != subject3_E_Array[self.ind]{
                    E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject3_rightans[self.ind] != subject3_E_Array[self.ind] && subject3_picks[self.ind] == subject3_E_Array[self.ind]{
                    E_Label.textColor = UIColor.red
                }
                
                F_Label.isHidden = true
                G_Label.isHidden = true
                H_Label.isHidden = true
                F_WebView.isHidden = true
                G_WebView.isHidden = true
                H_WebView.isHidden = true
                
                Q_NumLabel.text = String(ind+1) + " in 20"
                Q_WebView.loadHTMLString(subject3_q[ind], baseURL: nil)
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
                    
                    A_Label.textColor = UIColor.black
                    B_Label.textColor = UIColor.black
                    C_Label.textColor = UIColor.black
                    D_Label.textColor = UIColor.black
                    E_Label.textColor = UIColor.black
                    
                    if subject4_rightans[self.ind] == subject4_A_Array[self.ind] && subject4_picks[self.ind] == subject4_A_Array[self.ind]{
                        A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_rightans[self.ind] == subject4_A_Array[self.ind] && subject4_picks[self.ind] != subject4_A_Array[self.ind]{
                        A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_rightans[self.ind] != subject4_A_Array[self.ind] && subject4_picks[self.ind] == subject4_A_Array[self.ind]{
                        A_Label.textColor = UIColor.red
                    }
                    
                    if subject4_rightans[self.ind] == subject4_B_Array[self.ind] && subject4_picks[self.ind] == subject4_B_Array[self.ind]{
                        B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_rightans[self.ind] == subject4_B_Array[self.ind] && subject4_picks[self.ind] != subject4_B_Array[self.ind]{
                        B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_rightans[self.ind] != subject4_B_Array[self.ind] && subject4_picks[self.ind] == subject4_B_Array[self.ind]{
                        B_Label.textColor = UIColor.red
                    }
                    
                    if subject4_rightans[self.ind] == subject4_C_Array[self.ind] && subject4_picks[self.ind] == subject4_C_Array[self.ind]{
                        C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_rightans[self.ind] == subject4_C_Array[self.ind] && subject4_picks[self.ind] != subject4_C_Array[self.ind]{
                        C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_rightans[self.ind] != subject4_C_Array[self.ind] && subject4_picks[self.ind] == subject4_C_Array[self.ind]{
                        C_Label.textColor = UIColor.red
                    }
                    
                    if subject4_rightans[self.ind] == subject4_D_Array[self.ind] && subject4_picks[self.ind] == subject4_D_Array[self.ind]{
                        D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_rightans[self.ind] == subject4_D_Array[self.ind] && subject4_picks[self.ind] != subject4_D_Array[self.ind]{
                        D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_rightans[self.ind] != subject4_D_Array[self.ind] && subject4_picks[self.ind] == subject4_D_Array[self.ind]{
                        D_Label.textColor = UIColor.red
                    }
                    
                    if subject4_rightans[self.ind] == subject4_E_Array[self.ind] && subject4_picks[self.ind] == subject4_E_Array[self.ind]{
                        E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_rightans[self.ind] == subject4_E_Array[self.ind] && subject4_picks[self.ind] != subject4_E_Array[self.ind]{
                        E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_rightans[self.ind] != subject4_E_Array[self.ind] && subject4_picks[self.ind] == subject4_E_Array[self.ind]{
                        E_Label.textColor = UIColor.red
                    }
                    
                    F_Label.isHidden = true
                    G_Label.isHidden = true
                    H_Label.isHidden = true
                    F_WebView.isHidden = true
                    G_WebView.isHidden = true
                    H_WebView.isHidden = true
                    
                    Q_NumLabel.text = String(ind+1) + " in 30"
                    Q_WebView.loadHTMLString(subject4_q[ind], baseURL: nil)
                }
                else{
                    Q_NumLabel.text = String(ind+1) + " in 30"
                    Q_WebView.loadHTMLString(subject4_questions21_30[ind-20], baseURL: nil)
                    
                    A_Label.textColor = UIColor.black
                    B_Label.textColor = UIColor.black
                    C_Label.textColor = UIColor.black
                    D_Label.textColor = UIColor.black
                    E_Label.textColor = UIColor.black
                    F_Label.textColor = UIColor.black
                    G_Label.textColor = UIColor.black
                    H_Label.textColor = UIColor.black
                    
                    //A variant
                    if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][0]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][0]) == true{
                        A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][0]) == false && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][0]) == true{
                        A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][0]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][0]) == false{
                        A_Label.textColor = UIColor.red
                    }
                    //B variant
                    if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][1]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][1]) == true{
                        B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][1]) == false && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][1]) == true{
                        B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][1]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][1]) == false{
                        B_Label.textColor = UIColor.red
                    }
                    //C variant
                    if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][2]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][2]) == true{
                        C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][2]) == false && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][2]) == true{
                        C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][2]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][2]) == false{
                        C_Label.textColor = UIColor.red
                    }
                    //D variant
                    if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][3]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][3]) == true{
                        D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][3]) == false && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][3]) == true{
                        D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][3]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][3]) == false{
                        D_Label.textColor = UIColor.red
                    }
                    //E variant
                    if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][4]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][4]) == true{
                        E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][4]) == false && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][4]) == true{
                        E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][4]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][4]) == false{
                        E_Label.textColor = UIColor.red
                    }
                    //F variant
                    if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][5]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][5]) == true{
                        F_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][5]) == false && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][5]) == true{
                        F_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][5]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][5]) == false{
                        F_Label.textColor = UIColor.red
                    }
                    //G variant
                    if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][6]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][6]) == true{
                        G_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][6]) == false && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][6]) == true{
                        G_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][6]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][6]) == false{
                        G_Label.textColor = UIColor.red
                    }
                    //H variant
                    if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][7]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][7]) == true{
                        H_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][7]) == false && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][7]) == true{
                        H_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][7]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][7]) == false{
                        H_Label.textColor = UIColor.red
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
                    
                    A_Label.textColor = UIColor.black
                    B_Label.textColor = UIColor.black
                    C_Label.textColor = UIColor.black
                    D_Label.textColor = UIColor.black
                    E_Label.textColor = UIColor.black
                    
                    if subject5_rightans[self.ind] == subject5_A_Array[self.ind] && subject5_picks[self.ind] == subject5_A_Array[self.ind]{
                        A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_rightans[self.ind] == subject5_A_Array[self.ind] && subject5_picks[self.ind] != subject5_A_Array[self.ind]{
                        A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_rightans[self.ind] != subject5_A_Array[self.ind] && subject5_picks[self.ind] == subject5_A_Array[self.ind]{
                        A_Label.textColor = UIColor.red
                    }
                    
                    if subject5_rightans[self.ind] == subject5_B_Array[self.ind] && subject5_picks[self.ind] == subject5_B_Array[self.ind]{
                        B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_rightans[self.ind] == subject5_B_Array[self.ind] && subject5_picks[self.ind] != subject5_B_Array[self.ind]{
                        B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_rightans[self.ind] != subject5_B_Array[self.ind] && subject5_picks[self.ind] == subject5_B_Array[self.ind]{
                        B_Label.textColor = UIColor.red
                    }
                    
                    if subject5_rightans[self.ind] == subject5_C_Array[self.ind] && subject5_picks[self.ind] == subject5_C_Array[self.ind]{
                        C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_rightans[self.ind] == subject5_C_Array[self.ind] && subject5_picks[self.ind] != subject5_C_Array[self.ind]{
                        C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_rightans[self.ind] != subject5_C_Array[self.ind] && subject5_picks[self.ind] == subject5_C_Array[self.ind]{
                        C_Label.textColor = UIColor.red
                    }
                    
                    if subject5_rightans[self.ind] == subject5_D_Array[self.ind] && subject5_picks[self.ind] == subject5_D_Array[self.ind]{
                        D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_rightans[self.ind] == subject5_D_Array[self.ind] && subject5_picks[self.ind] != subject5_D_Array[self.ind]{
                        D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_rightans[self.ind] != subject5_D_Array[self.ind] && subject5_picks[self.ind] == subject5_D_Array[self.ind]{
                        D_Label.textColor = UIColor.red
                    }
                    
                    if subject5_rightans[self.ind] == subject5_E_Array[self.ind] && subject5_picks[self.ind] == subject5_E_Array[self.ind]{
                        E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_rightans[self.ind] == subject5_E_Array[self.ind] && subject5_picks[self.ind] != subject5_E_Array[self.ind]{
                        E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_rightans[self.ind] != subject5_E_Array[self.ind] && subject5_picks[self.ind] == subject5_E_Array[self.ind]{
                        E_Label.textColor = UIColor.red
                    }
                    
                    F_Label.isHidden = true
                    G_Label.isHidden = true
                    H_Label.isHidden = true
                    F_WebView.isHidden = true
                    G_WebView.isHidden = true
                    H_WebView.isHidden = true
                    
                    Q_NumLabel.text = String(ind+1) + " in 30"
                    Q_WebView.loadHTMLString(subject5_q[ind], baseURL: nil)
                }
                else{
                    Q_NumLabel.text = String(ind+1) + " in 30"
                    Q_WebView.loadHTMLString(subject5_questions21_30[ind-20], baseURL: nil)
                    
                    A_Label.textColor = UIColor.black
                    B_Label.textColor = UIColor.black
                    C_Label.textColor = UIColor.black
                    D_Label.textColor = UIColor.black
                    E_Label.textColor = UIColor.black
                    F_Label.textColor = UIColor.black
                    G_Label.textColor = UIColor.black
                    H_Label.textColor = UIColor.black
                    
                    //A variant
                    if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][0]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][0]) == true{
                        A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][0]) == false && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][0]) == true{
                        A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][0]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][0]) == false{
                        A_Label.textColor = UIColor.red
                    }
                    //B variant
                    if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][1]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][1]) == true{
                        B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][1]) == false && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][1]) == true{
                        B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][1]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][1]) == false{
                        B_Label.textColor = UIColor.red
                    }
                    //C variant
                    if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][2]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][2]) == true{
                        C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][2]) == false && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][2]) == true{
                        C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][2]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][2]) == false{
                        C_Label.textColor = UIColor.red
                    }
                    //D variant
                    if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][3]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][3]) == true{
                        D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][3]) == false && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][3]) == true{
                        D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][3]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][3]) == false{
                        D_Label.textColor = UIColor.red
                    }
                    //E variant
                    if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][4]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][4]) == true{
                        E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][4]) == false && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][4]) == true{
                        E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][4]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][4]) == false{
                        E_Label.textColor = UIColor.red
                    }
                    //F variant
                    if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][5]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][5]) == true{
                        F_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][5]) == false && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][5]) == true{
                        F_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][5]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][5]) == false{
                        F_Label.textColor = UIColor.red
                    }
                    //G variant
                    if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][6]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][6]) == true{
                        G_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][6]) == false && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][6]) == true{
                        G_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][6]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][6]) == false{
                        G_Label.textColor = UIColor.red
                    }
                    //H variant
                    if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][7]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][7]) == true{
                        H_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][7]) == false && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][7]) == true{
                        H_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][7]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][7]) == false{
                        H_Label.textColor = UIColor.red
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
    }
    
    @IBAction func Pre_Button(_ sender: UIButton) {
        if SubjectNumber_by_Indicator == 0{
            if (ind > 0)
            {
                ind = ind - 1
                
                self.A_WebView.loadHTMLString(self.subject1_A_Array[self.ind], baseURL: nil)
                self.B_WebView.loadHTMLString(self.subject1_B_Array[self.ind], baseURL: nil)
                self.C_WebView.loadHTMLString(self.subject1_C_Array[self.ind], baseURL: nil)
                self.D_WebView.loadHTMLString(self.subject1_D_Array[self.ind], baseURL: nil)
                self.E_WebView.loadHTMLString(self.subject1_E_Array[self.ind], baseURL: nil)
                
                
                A_Label.textColor = UIColor.black
                B_Label.textColor = UIColor.black
                C_Label.textColor = UIColor.black
                D_Label.textColor = UIColor.black
                E_Label.textColor = UIColor.black
                
                if subject1_rightans[self.ind] == subject1_A_Array[self.ind] && subject1_picks[self.ind] == subject1_A_Array[self.ind]{
                    A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject1_rightans[self.ind] == subject1_A_Array[self.ind] && subject1_picks[self.ind] != subject1_A_Array[self.ind]{
                    A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject1_rightans[self.ind] != subject1_A_Array[self.ind] && subject1_picks[self.ind] == subject1_A_Array[self.ind]{
                    A_Label.textColor = UIColor.red
                }
                
                if subject1_rightans[self.ind] == subject1_B_Array[self.ind] && subject1_picks[self.ind] == subject1_B_Array[self.ind]{
                    B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject1_rightans[self.ind] == subject1_B_Array[self.ind] && subject1_picks[self.ind] != subject1_B_Array[self.ind]{
                    B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject1_rightans[self.ind] != subject1_B_Array[self.ind] && subject1_picks[self.ind] == subject1_B_Array[self.ind]{
                    B_Label.textColor = UIColor.red
                }
                
                if subject1_rightans[self.ind] == subject1_C_Array[self.ind] && subject1_picks[self.ind] == subject1_C_Array[self.ind]{
                    C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject1_rightans[self.ind] == subject1_C_Array[self.ind] && subject1_picks[self.ind] != subject1_C_Array[self.ind]{
                    C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject1_rightans[self.ind] != subject1_C_Array[self.ind] && subject1_picks[self.ind] == subject1_C_Array[self.ind]{
                    C_Label.textColor = UIColor.red
                }
                
                if subject1_rightans[self.ind] == subject1_D_Array[self.ind] && subject1_picks[self.ind] == subject1_D_Array[self.ind]{
                    D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject1_rightans[self.ind] == subject1_D_Array[self.ind] && subject1_picks[self.ind] != subject1_D_Array[self.ind]{
                    D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject1_rightans[self.ind] != subject1_D_Array[self.ind] && subject1_picks[self.ind] == subject1_D_Array[self.ind]{
                    D_Label.textColor = UIColor.red
                }
                
                if subject1_rightans[self.ind] == subject1_E_Array[self.ind] && subject1_picks[self.ind] == subject1_E_Array[self.ind]{
                    E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject1_rightans[self.ind] == subject1_E_Array[self.ind] && subject1_picks[self.ind] != subject1_E_Array[self.ind]{
                    E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject1_rightans[self.ind] != subject1_E_Array[self.ind] && subject1_picks[self.ind] == subject1_E_Array[self.ind]{
                    E_Label.textColor = UIColor.red
                }
                
                Q_NumLabel.text = String(ind+1) + " in 20"
                Q_WebView.loadHTMLString(subject1_q[ind], baseURL: nil)
                
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
                
                A_Label.textColor = UIColor.black
                B_Label.textColor = UIColor.black
                C_Label.textColor = UIColor.black
                D_Label.textColor = UIColor.black
                E_Label.textColor = UIColor.black
                
                if subject2_rightans[self.ind] == subject2_A_Array[self.ind] && subject2_picks[self.ind] == subject2_A_Array[self.ind]{
                    A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject2_rightans[self.ind] == subject2_A_Array[self.ind] && subject2_picks[self.ind] != subject2_A_Array[self.ind]{
                    A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject2_rightans[self.ind] != subject2_A_Array[self.ind] && subject2_picks[self.ind] == subject2_A_Array[self.ind]{
                    A_Label.textColor = UIColor.red
                }
                
                if subject2_rightans[self.ind] == subject2_B_Array[self.ind] && subject2_picks[self.ind] == subject2_B_Array[self.ind]{
                    B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject2_rightans[self.ind] == subject2_B_Array[self.ind] && subject2_picks[self.ind] != subject2_B_Array[self.ind]{
                    B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject2_rightans[self.ind] != subject2_B_Array[self.ind] && subject2_picks[self.ind] == subject2_B_Array[self.ind]{
                    B_Label.textColor = UIColor.red
                }
                
                if subject2_rightans[self.ind] == subject2_C_Array[self.ind] && subject2_picks[self.ind] == subject2_C_Array[self.ind]{
                    C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject2_rightans[self.ind] == subject2_C_Array[self.ind] && subject2_picks[self.ind] != subject2_C_Array[self.ind]{
                    C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject2_rightans[self.ind] != subject2_C_Array[self.ind] && subject2_picks[self.ind] == subject2_C_Array[self.ind]{
                    C_Label.textColor = UIColor.red
                }
                
                if subject2_rightans[self.ind] == subject2_D_Array[self.ind] && subject2_picks[self.ind] == subject2_D_Array[self.ind]{
                    D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject2_rightans[self.ind] == subject2_D_Array[self.ind] && subject2_picks[self.ind] != subject2_D_Array[self.ind]{
                    D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject2_rightans[self.ind] != subject2_D_Array[self.ind] && subject2_picks[self.ind] == subject2_D_Array[self.ind]{
                    D_Label.textColor = UIColor.red
                }
                
                if subject2_rightans[self.ind] == subject2_E_Array[self.ind] && subject2_picks[self.ind] == subject2_E_Array[self.ind]{
                    E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject2_rightans[self.ind] == subject2_E_Array[self.ind] && subject2_picks[self.ind] != subject2_E_Array[self.ind]{
                    E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject2_rightans[self.ind] != subject2_E_Array[self.ind] && subject2_picks[self.ind] == subject2_E_Array[self.ind]{
                    E_Label.textColor = UIColor.red
                }
                
                Q_NumLabel.text = String(ind+1) + " in 20"
                if ind+1 <= Int(texts_qnum[0])!{
                    Q_WebView.loadHTMLString(self.texts[0] + "\n" + subject2_q[ind], baseURL: nil)
                }
                else if ind+1 <= (Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                    Q_WebView.loadHTMLString(self.texts[1] + "\n" + subject2_q[ind], baseURL: nil)
                }
                else if ind+1 <= (Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                    Q_WebView.loadHTMLString(self.texts[2] + "\n" + subject2_q[ind], baseURL: nil)
                }
                else if ind+1 <= (Int(texts_qnum[3])! + Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                    Q_WebView.loadHTMLString(self.texts[3] + "\n" + subject2_q[ind], baseURL: nil)
                }
                else if ind+1 <= (Int(texts_qnum[4])! + Int(texts_qnum[3])! + Int(texts_qnum[2])! + Int(texts_qnum[1])! + Int(texts_qnum[0])!){
                    Q_WebView.loadHTMLString(self.texts[4] + "\n" + subject2_q[ind], baseURL: nil)
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
                
                A_Label.textColor = UIColor.black
                B_Label.textColor = UIColor.black
                C_Label.textColor = UIColor.black
                D_Label.textColor = UIColor.black
                E_Label.textColor = UIColor.black
                
                if subject3_rightans[self.ind] == subject3_A_Array[self.ind] && subject3_picks[self.ind] == subject3_A_Array[self.ind]{
                    A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject3_rightans[self.ind] == subject3_A_Array[self.ind] && subject3_picks[self.ind] != subject3_A_Array[self.ind]{
                    A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject3_rightans[self.ind] != subject3_A_Array[self.ind] && subject3_picks[self.ind] == subject3_A_Array[self.ind]{
                    A_Label.textColor = UIColor.red
                }
                
                if subject3_rightans[self.ind] == subject3_B_Array[self.ind] && subject3_picks[self.ind] == subject3_B_Array[self.ind]{
                    B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject3_rightans[self.ind] == subject3_B_Array[self.ind] && subject3_picks[self.ind] != subject3_B_Array[self.ind]{
                    B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject3_rightans[self.ind] != subject3_B_Array[self.ind] && subject3_picks[self.ind] == subject3_B_Array[self.ind]{
                    B_Label.textColor = UIColor.red
                }
                
                if subject3_rightans[self.ind] == subject3_C_Array[self.ind] && subject3_picks[self.ind] == subject3_C_Array[self.ind]{
                    C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject3_rightans[self.ind] == subject3_C_Array[self.ind] && subject3_picks[self.ind] != subject3_C_Array[self.ind]{
                    C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject3_rightans[self.ind] != subject3_C_Array[self.ind] && subject3_picks[self.ind] == subject3_C_Array[self.ind]{
                    C_Label.textColor = UIColor.red
                }
                
                if subject3_rightans[self.ind] == subject3_D_Array[self.ind] && subject3_picks[self.ind] == subject3_D_Array[self.ind]{
                    D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject3_rightans[self.ind] == subject3_D_Array[self.ind] && subject3_picks[self.ind] != subject3_D_Array[self.ind]{
                    D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject3_rightans[self.ind] != subject3_D_Array[self.ind] && subject3_picks[self.ind] == subject3_D_Array[self.ind]{
                    D_Label.textColor = UIColor.red
                }
                
                if subject3_rightans[self.ind] == subject3_E_Array[self.ind] && subject3_picks[self.ind] == subject3_E_Array[self.ind]{
                    E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                }
                else if subject3_rightans[self.ind] == subject3_E_Array[self.ind] && subject3_picks[self.ind] != subject3_E_Array[self.ind]{
                    E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                }
                else if subject3_rightans[self.ind] != subject3_E_Array[self.ind] && subject3_picks[self.ind] == subject3_E_Array[self.ind]{
                    E_Label.textColor = UIColor.red
                }
                
                Q_NumLabel.text = String(ind+1) + " in 20"
                Q_WebView.loadHTMLString(subject3_q[ind], baseURL: nil)
                
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
                    Q_NumLabel.text = String(ind+1) + " in 30"
                    Q_WebView.loadHTMLString(subject4_questions21_30[ind-20], baseURL: nil)
                    
                    A_Label.textColor = UIColor.black
                    B_Label.textColor = UIColor.black
                    C_Label.textColor = UIColor.black
                    D_Label.textColor = UIColor.black
                    E_Label.textColor = UIColor.black
                    F_Label.textColor = UIColor.black
                    G_Label.textColor = UIColor.black
                    H_Label.textColor = UIColor.black
                    
                    //A variant
                    if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][0]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][0]) == true{
                        A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][0]) == false && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][0]) == true{
                        A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][0]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][0]) == false{
                        A_Label.textColor = UIColor.red
                    }
                    //B variant
                    if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][1]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][1]) == true{
                        B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][1]) == false && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][1]) == true{
                        B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][1]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][1]) == false{
                        B_Label.textColor = UIColor.red
                    }
                    //C variant
                    if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][2]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][2]) == true{
                        C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][2]) == false && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][2]) == true{
                        C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][2]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][2]) == false{
                        C_Label.textColor = UIColor.red
                    }
                    //D variant
                    if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][3]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][3]) == true{
                        D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][3]) == false && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][3]) == true{
                        D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][3]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][3]) == false{
                        D_Label.textColor = UIColor.red
                    }
                    //E variant
                    if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][4]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][4]) == true{
                        E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][4]) == false && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][4]) == true{
                        E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][4]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][4]) == false{
                        E_Label.textColor = UIColor.red
                    }
                    //F variant
                    if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][5]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][5]) == true{
                        F_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][5]) == false && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][5]) == true{
                        F_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][5]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][5]) == false{
                        F_Label.textColor = UIColor.red
                    }
                    //G variant
                    if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][6]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][6]) == true{
                        G_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][6]) == false && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][6]) == true{
                        G_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][6]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][6]) == false{
                        G_Label.textColor = UIColor.red
                    }
                    //H variant
                    if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][7]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][7]) == true{
                        H_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][7]) == false && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][7]) == true{
                        H_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_picks21_30[ind-20].contains(subject4_Answers21_30[ind - 20][7]) == true && subject4_rightans21_30[ind - 20].contains(subject4_Answers21_30[ind - 20][7]) == false{
                        H_Label.textColor = UIColor.red
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
                    
                    A_Label.textColor = UIColor.black
                    B_Label.textColor = UIColor.black
                    C_Label.textColor = UIColor.black
                    D_Label.textColor = UIColor.black
                    E_Label.textColor = UIColor.black
                    
                    if subject4_rightans[self.ind] == subject4_A_Array[self.ind] && subject4_picks[self.ind] == subject4_A_Array[self.ind]{
                        A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_rightans[self.ind] == subject4_A_Array[self.ind] && subject4_picks[self.ind] != subject4_A_Array[self.ind]{
                        A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_rightans[self.ind] != subject4_A_Array[self.ind] && subject4_picks[self.ind] == subject4_A_Array[self.ind]{
                        A_Label.textColor = UIColor.red
                    }
                    
                    if subject4_rightans[self.ind] == subject4_B_Array[self.ind] && subject4_picks[self.ind] == subject4_B_Array[self.ind]{
                        B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_rightans[self.ind] == subject4_B_Array[self.ind] && subject4_picks[self.ind] != subject4_B_Array[self.ind]{
                        B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_rightans[self.ind] != subject4_B_Array[self.ind] && subject4_picks[self.ind] == subject4_B_Array[self.ind]{
                        B_Label.textColor = UIColor.red
                    }
                    
                    if subject4_rightans[self.ind] == subject4_C_Array[self.ind] && subject4_picks[self.ind] == subject4_C_Array[self.ind]{
                        C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_rightans[self.ind] == subject4_C_Array[self.ind] && subject4_picks[self.ind] != subject4_C_Array[self.ind]{
                        C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_rightans[self.ind] != subject4_C_Array[self.ind] && subject4_picks[self.ind] == subject4_C_Array[self.ind]{
                        C_Label.textColor = UIColor.red
                    }
                    
                    if subject4_rightans[self.ind] == subject4_D_Array[self.ind] && subject4_picks[self.ind] == subject4_D_Array[self.ind]{
                        D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_rightans[self.ind] == subject4_D_Array[self.ind] && subject4_picks[self.ind] != subject4_D_Array[self.ind]{
                        D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_rightans[self.ind] != subject4_D_Array[self.ind] && subject4_picks[self.ind] == subject4_D_Array[self.ind]{
                        D_Label.textColor = UIColor.red
                    }
                    
                    if subject4_rightans[self.ind] == subject4_E_Array[self.ind] && subject4_picks[self.ind] == subject4_E_Array[self.ind]{
                        E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject4_rightans[self.ind] == subject4_E_Array[self.ind] && subject4_picks[self.ind] != subject4_E_Array[self.ind]{
                        E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject4_rightans[self.ind] != subject4_E_Array[self.ind] && subject4_picks[self.ind] == subject4_E_Array[self.ind]{
                        E_Label.textColor = UIColor.red
                    }
                    
                    Q_NumLabel.text = String(ind+1) + " in 30"
                    Q_WebView.loadHTMLString(subject4_q[ind], baseURL: nil)
                    
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
                    Q_NumLabel.text = String(ind+1) + " in 30"
                    Q_WebView.loadHTMLString(subject5_questions21_30[ind-20], baseURL: nil)
                    
                    A_Label.textColor = UIColor.black
                    B_Label.textColor = UIColor.black
                    C_Label.textColor = UIColor.black
                    D_Label.textColor = UIColor.black
                    E_Label.textColor = UIColor.black
                    F_Label.textColor = UIColor.black
                    G_Label.textColor = UIColor.black
                    H_Label.textColor = UIColor.black
                    
                    //A variant
                    if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][0]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][0]) == true{
                        A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][0]) == false && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][0]) == true{
                        A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][0]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][0]) == false{
                        A_Label.textColor = UIColor.red
                    }
                    //B variant
                    if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][1]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][1]) == true{
                        B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][1]) == false && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][1]) == true{
                        B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][1]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][1]) == false{
                        B_Label.textColor = UIColor.red
                    }
                    //C variant
                    if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][2]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][2]) == true{
                        C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][2]) == false && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][2]) == true{
                        C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][2]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][2]) == false{
                        C_Label.textColor = UIColor.red
                    }
                    //D variant
                    if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][3]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][3]) == true{
                        D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][3]) == false && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][3]) == true{
                        D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][3]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][3]) == false{
                        D_Label.textColor = UIColor.red
                    }
                    //E variant
                    if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][4]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][4]) == true{
                        E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][4]) == false && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][4]) == true{
                        E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][4]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][4]) == false{
                        E_Label.textColor = UIColor.red
                    }
                    //F variant
                    if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][5]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][5]) == true{
                        F_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][5]) == false && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][5]) == true{
                        F_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][5]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][5]) == false{
                        F_Label.textColor = UIColor.red
                    }
                    //G variant
                    if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][6]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][6]) == true{
                        G_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][6]) == false && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][6]) == true{
                        G_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][6]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][6]) == false{
                        G_Label.textColor = UIColor.red
                    }
                    //H variant
                    if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][7]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][7]) == true{
                        H_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][7]) == false && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][7]) == true{
                        H_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_picks21_30[ind-20].contains(subject5_Answers21_30[ind - 20][7]) == true && subject5_rightans21_30[ind - 20].contains(subject5_Answers21_30[ind - 20][7]) == false{
                        H_Label.textColor = UIColor.red
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
                    
                    A_Label.textColor = UIColor.black
                    B_Label.textColor = UIColor.black
                    C_Label.textColor = UIColor.black
                    D_Label.textColor = UIColor.black
                    E_Label.textColor = UIColor.black
                    
                    if subject5_rightans[self.ind] == subject5_A_Array[self.ind] && subject5_picks[self.ind] == subject5_A_Array[self.ind]{
                        A_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_rightans[self.ind] == subject5_A_Array[self.ind] && subject5_picks[self.ind] != subject5_A_Array[self.ind]{
                        A_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_rightans[self.ind] != subject5_A_Array[self.ind] && subject5_picks[self.ind] == subject5_A_Array[self.ind]{
                        A_Label.textColor = UIColor.red
                    }
                    
                    if subject5_rightans[self.ind] == subject5_B_Array[self.ind] && subject5_picks[self.ind] == subject5_B_Array[self.ind]{
                        B_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_rightans[self.ind] == subject5_B_Array[self.ind] && subject5_picks[self.ind] != subject5_B_Array[self.ind]{
                        B_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_rightans[self.ind] != subject5_B_Array[self.ind] && subject5_picks[self.ind] == subject5_B_Array[self.ind]{
                        B_Label.textColor = UIColor.red
                    }
                    
                    if subject5_rightans[self.ind] == subject5_C_Array[self.ind] && subject5_picks[self.ind] == subject5_C_Array[self.ind]{
                        C_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_rightans[self.ind] == subject5_C_Array[self.ind] && subject5_picks[self.ind] != subject5_C_Array[self.ind]{
                        C_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_rightans[self.ind] != subject5_C_Array[self.ind] && subject5_picks[self.ind] == subject5_C_Array[self.ind]{
                        C_Label.textColor = UIColor.red
                    }
                    
                    if subject5_rightans[self.ind] == subject5_D_Array[self.ind] && subject5_picks[self.ind] == subject5_D_Array[self.ind]{
                        D_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_rightans[self.ind] == subject5_D_Array[self.ind] && subject5_picks[self.ind] != subject5_D_Array[self.ind]{
                        D_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_rightans[self.ind] != subject5_D_Array[self.ind] && subject5_picks[self.ind] == subject5_D_Array[self.ind]{
                        D_Label.textColor = UIColor.red
                    }
                    
                    if subject5_rightans[self.ind] == subject5_E_Array[self.ind] && subject5_picks[self.ind] == subject5_E_Array[self.ind]{
                        E_Label.textColor = UIColor(red: 0.1373, green: 0.5333, blue: 0.8784, alpha: 1.0)
                    }
                    else if subject5_rightans[self.ind] == subject5_E_Array[self.ind] && subject5_picks[self.ind] != subject5_E_Array[self.ind]{
                        E_Label.textColor = UIColor(red: 0.2824, green: 0.8471, blue: 0, alpha: 1)
                    }
                    else if subject5_rightans[self.ind] != subject5_E_Array[self.ind] && subject5_picks[self.ind] == subject5_E_Array[self.ind]{
                        E_Label.textColor = UIColor.red
                    }
                    
                    Q_NumLabel.text = String(ind+1) + " in 30"
                    Q_WebView.loadHTMLString(subject5_q[ind], baseURL: nil)
                    
                    F_Label.isHidden = true
                    G_Label.isHidden = true
                    H_Label.isHidden = true
                    F_WebView.isHidden = true
                    G_WebView.isHidden = true
                    H_WebView.isHidden = true
                }
            }
        }
    }
    
    
    @IBAction func ExitButton_Tapped(_ sender: UIBarButtonItem) {
        let mainTabController = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        
        mainTabController.selectedViewController = mainTabController.viewControllers?[2]
        
        self.present(mainTabController, animated: true, completion: nil)
    }
}
