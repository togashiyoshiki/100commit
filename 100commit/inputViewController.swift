
//var DetaList : [String] = ["起床","ブレイクタイム","準備",",ブレックファースト","移動","通勤","通学","帰宅","勉強","仕事","コミット","ランチ","ディナー","就寝"]

import UIKit

class inputViewController: UIViewController{
    
//MARK:テキスト管理
    var textKind1:String = ""
    var textKind2:String = ""
    var textKind3:String = ""
    var textKind4:String = ""
    var textKind5:String = ""
    var textKind6:String = ""
    var textKind7:String = ""
    var textKind8:String = ""
    var textKind9:String = ""
    var textKind10:String = ""
    var textKind11:String = ""
    var textKind12:String = ""
    var textKind13:String = ""
    
//MARK:時間管理
    var time1 = 10
    var time2 = 10
    var time3 = 10
    var time4 = 10
    var time5 = 10
    var time6 = 10
    var time7 = 10
    var time8 = 10
    var time9 = 10
    var time10 = 10
    var time11 = 10
    var time12 = 10
    var time13 = 10

//MARK:部品　Text
    
    @IBOutlet weak var TextField1: UITextField!
    @IBOutlet weak var TextField2: UITextField!
    @IBOutlet weak var TextField3: UITextField!
    @IBOutlet weak var TextField4: UITextField!
    @IBOutlet weak var TextField5: UITextField!
    @IBOutlet weak var TextField6: UITextField!
    @IBOutlet weak var TextField7: UITextField!
    @IBOutlet weak var TextField8: UITextField!
    @IBOutlet weak var TextField9: UITextField!
    @IBOutlet weak var TextField10: UITextField!
    @IBOutlet weak var TextField11: UITextField!
    @IBOutlet weak var TextField12: UITextField!
    @IBOutlet weak var TextField13: UITextField!
    
//MARK:部品   Time
    
    @IBOutlet weak var DatePicker1: UIDatePicker!
    @IBOutlet weak var DatePicker2: UIDatePicker!
    @IBOutlet weak var DatePicker3: UIDatePicker!
    @IBOutlet weak var DatePicker4: UIDatePicker!
    @IBOutlet weak var DatePicker5: UIDatePicker!
    @IBOutlet weak var DatePicker6: UIDatePicker!
    @IBOutlet weak var DatePicker7: UIDatePicker!
    @IBOutlet weak var DatePicker8: UIDatePicker!
    @IBOutlet weak var DatePicker9: UIDatePicker!
    @IBOutlet weak var DatePicker10: UIDatePicker!
    @IBOutlet weak var DatePicker11: UIDatePicker!
    @IBOutlet weak var DatePicker12: UIDatePicker!
    @IBOutlet weak var DatePicker13: UIDatePicker!
    
    
    
    
    

    @IBAction func back(_ sender: UIButton) {
         self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


