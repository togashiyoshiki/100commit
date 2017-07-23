
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
    var time1:String = ""
    var time2:String = ""
    var time3:String = ""
    var time4:String = ""
    var time5:String = ""
    var time6:String = ""
    var time7:String = ""
    var time8:String = ""
    var time9:String = ""
    var time10:String = ""
    var time11:String = ""
    var time12:String = ""
    var time13:String = ""
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
    
//    MARK:DatePickerのString変換
    
    @IBAction func Date1(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "h:mm"
            time1 = df.string(from: sender.date)
    }
    @IBAction func Date2(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "h:mm"
        time2 = df.string(from: sender.date)
    }
    @IBAction func Date3(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "h:mm"
        time3 = df.string(from: sender.date)
    }
    @IBAction func Date4(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "h:mm"
        time4 = df.string(from: sender.date)
    }
    @IBAction func Date5(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "h:mm"
        time5 = df.string(from: sender.date)
    }
    @IBAction func Date6(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "h:mm"
        time6 = df.string(from: sender.date)
    }
    @IBAction func Date7(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "h:mm"
        time7 = df.string(from: sender.date)
    }
    @IBAction func Date8(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "h:mm"
        time8 = df.string(from: sender.date)
    }
    
    @IBAction func Date9(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "h:mm"
        time9 = df.string(from: sender.date)
    }
    @IBAction func Date10(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "h:mm"
        time10 = df.string(from: sender.date)
    }
    @IBAction func Date11(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "h:mm"
        time11 = df.string(from: sender.date)
    }
    @IBAction func Date12(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "h:mm"
        time12 = df.string(from: sender.date)
    }
    @IBAction func Date13(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "h:mm"
        time13 = df.string(from: sender.date)
    }
    
    
    
    
    
    
    
    
    
//    MARK:追加ボタンの処理
    @IBAction func addBtn(_ sender: UIButton) {
        var now = Date()
        
//        MARK:入力文字を代入
         textKind1 = TextField1.text!
         textKind2 = TextField2.text!
         textKind3 = TextField3.text!
         textKind4 = TextField4.text!
         textKind5 = TextField5.text!
         textKind6 = TextField6.text!
         textKind7 = TextField7.text!
         textKind8 = TextField8.text!
         textKind9 = TextField9.text!
         textKind10 = TextField10.text!
         textKind11 = TextField11.text!
         textKind12 = TextField12.text!
         textKind13 = TextField13.text!
        
        ///        MARK:入力文字の確認
            print(textKind1)
            print(textKind2)
            print(textKind3)
            print(textKind4)
            print(textKind5)
            print(textKind6)
            print(textKind7)
            print(textKind8)
            print(textKind9)
            print(textKind10)
            print(textKind11)
            print(textKind12)
            print(textKind13)
        
        ///        MARK:入力文字の確認
            print(time1)
            print(time2)
            print(time3)
            print(time4)
            print(time5)
            print(time6)
            print(time7)
            print(time8)
            print(time9)
            print(time10)
            print(time11)
            print(time12)
            print(time13)
        
        ///現在時刻の表示
        print(now)
        
        
        
        
    }
    

    @IBAction func back(_ sender: UIButton) {
         self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let df = DateFormatter()
//        df.dateFormat = "HH:mm"
//        DatePicker1.date = df.date(from: "00:00")!
//        
//    
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


