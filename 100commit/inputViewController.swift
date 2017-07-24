
//var DetaList : [String] = ["起床","ブレイクタイム","準備",",ブレックファースト","移動","通勤","通学","帰宅","勉強","仕事","コミット","ランチ","ディナー","就寝"]

import UIKit
import CoreData

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
    
//MARK:時間管理 　開始時間
    var time1:String = "2020-01-01 00:00:00"
    var time2:String = "2020-01-01 00:00:00"
    var time3:String = "2020-01-01 00:00:00"
    var time4:String = "2020-01-01 00:00:00"
    var time5:String = "2020-01-01 00:00:00"
    var time6:String = "2020-01-01 00:00:00"
    var time7:String = "2020-01-01 00:00:00"
    var time8:String = "2020-01-01 00:00:00"
    var time9:String = "2020-01-01 00:00:00"
    var time10:String = "2020-01-01 00:00:00"
    var time11:String = "2020-01-01 00:00:00"
    var time12:String = "2020-01-01 00:00:00"
    var time13:String = "2020-01-01 00:00:00"

    //MARK:時間管理 　終了時間
    var time111:String = "2020-01-01 00:00:00"
    var time222:String = "2020-01-01 00:00:00"
    var time333:String = "2020-01-01 00:00:00"
    var time444:String = "2020-01-01 00:00:00"
    var time555:String = "2020-01-01 00:00:00"
    var time666:String = "2020-01-01 00:00:00"
    var time777:String = "2020-01-01 00:00:00"
    var time888:String = "2020-01-01 00:00:00"
    var time999:String = "2020-01-01 00:00:00"
    var time101010:String = "2020-01-01 00:00:00"
    var time111111:String = "2020-01-01 00:00:00"
    var time121212:String = "2020-01-01 00:00:00"
    var time131313:String = "2020-01-01 00:00:00"

    
//    MARK:コミット名
    var CommitName:String = ""
    @IBOutlet weak var TextField: UITextField!
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
    
//MARK:部品   Time　開始時間
    
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
    
    //MARK:部品   Time　終了時間
    @IBOutlet weak var DatePicker111: UIDatePicker!
    @IBOutlet weak var DatePicker222: UIDatePicker!
    @IBOutlet weak var DatePicker333: UIDatePicker!
    @IBOutlet weak var DatePicker444: UIDatePicker!
    @IBOutlet weak var DatePicker555: UIDatePicker!
    @IBOutlet weak var DatePicker666: UIDatePicker!
    @IBOutlet weak var DatePicker777: UIDatePicker!
    @IBOutlet weak var DatePicker888: UIDatePicker!
    @IBOutlet weak var DatePicker999: UIDatePicker!
    @IBOutlet weak var DatePicker101010: UIDatePicker!
    @IBOutlet weak var DatePicker111111: UIDatePicker!
    @IBOutlet weak var DatePicker121212: UIDatePicker!
    @IBOutlet weak var DatePicker131313:UIDatePicker!
    
    
//    MARK:DatePickerのString変換
    ///開始時間
    
    @IBAction func Date1(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time1 = df.string(from: sender.date)
    }
    
    @IBAction func Date2(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time2 = df.string(from: sender.date)
    }
    
    @IBAction func Date3(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time3 = df.string(from: sender.date)
    }
    
    @IBAction func Date4(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time4 = df.string(from: sender.date)
    }
    
    @IBAction func Date5(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time5 = df.string(from: sender.date)
    }
    
    @IBAction func Date6(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time6 = df.string(from: sender.date)
    }
    
    @IBAction func Date7(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time7 = df.string(from: sender.date)
    }
    
    @IBAction func Date8(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time8 = df.string(from: sender.date)
    }
    
    @IBAction func Date9(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time9 = df.string(from: sender.date)
    }
    
    @IBAction func Date10(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time10 = df.string(from: sender.date)
    }
    
    @IBAction func Date11(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time11 = df.string(from: sender.date)
    }
    
    @IBAction func Date12(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time12 = df.string(from: sender.date)
    }
    
    @IBAction func Date13(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time13 = df.string(from: sender.date)
    }
    
    //    MARK:DatePickerのString変換
    ///終了時間
    @IBAction func Date111(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time111 = df.string(from: sender.date)
    }
    
    @IBAction func Date222(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time222 = df.string(from: sender.date)
    }
    
    @IBAction func Date333(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time333 = df.string(from: sender.date)
    }
    
    @IBAction func Date444(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time444 = df.string(from: sender.date)
    }
    
    @IBAction func Date555(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time555 = df.string(from: sender.date)
    }
    
    @IBAction func Date666(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time666 = df.string(from: sender.date)
    }
    
    @IBAction func Date777(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time777 = df.string(from: sender.date)
    }
    
    @IBAction func Date888(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time888 = df.string(from: sender.date)
    }
    
    @IBAction func Date999(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time999 = df.string(from: sender.date)
    }
    
    @IBAction func Date101010(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time101010 = df.string(from: sender.date)
    }
    
    @IBAction func Date111111(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time111111 = df.string(from: sender.date)
    }
    
    @IBAction func Date121212(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time121212 = df.string(from: sender.date)
    }
    
    @IBAction func Date131313(_ sender: UIDatePicker) {
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time131313 = df.string(from: sender.date)
    }
    
    
//    MARK:追加ボタンの処理
    @IBAction func addBtn(_ sender: UIButton) {
        
        var now = Date()
        
        
//        MARK:commitNAME
        if TextField.text != nil || TextField.text != "" {
        CommitName = TextField.text!
        }else{
            TextField.placeholder = "文字が入力されていません。"
        }
        
//        MARK:入力文字を代入
       if TextField1.text != nil || TextField1.text != "" {
            textKind1 = TextField1.text!
       }else{
            TextField1.placeholder = "文字が入力されていません。"
        }
        
        if TextField2.text != nil || TextField2.text != "" {
            textKind2 = TextField2.text!
        }else{
            TextField1.placeholder = "文字が入力されていません。"
        }
        
         if TextField3.text != nil || TextField3.text != "" {
            textKind3 = TextField3.text!
         }else{
            TextField3.placeholder = "文字が入力されていません。"
        }
        
        if TextField4.text != nil || TextField4.text != "" {
            textKind4 = TextField4.text!
        }else{
            TextField4.placeholder = "文字が入力されていません。"
        }
        
         if TextField5.text != nil || TextField5.text != "" {
            textKind5 = TextField5.text!
         }else{
            TextField5.placeholder = "文字が入力されていません。"
        }
        
         if TextField6.text != nil || TextField6.text != "" {
            textKind6 = TextField6.text!
         }else{
            TextField6.placeholder = "文字が入力されていません。"
        }
        
        if TextField7.text != nil || TextField7.text != "" {
            textKind7 = TextField7.text!
        }else{
            TextField7.placeholder = "文字が入力されていません。"
        }
        
        if TextField8.text != nil || TextField8.text != "" {
            textKind8 = TextField8.text!
        }else{
            TextField8.placeholder = "文字が入力されていません。"
        }
        
        if TextField9.text != nil || TextField9.text != "" {
            textKind9 = TextField9.text!
        }else{
            TextField9.placeholder = "文字が入力されていません。"
        }
        
        if TextField10.text != nil || TextField10.text != "" {
            textKind10 = TextField10.text!
        }else{
            TextField10.placeholder = "文字が入力されていません。"
        }
        
        if TextField11.text != nil || TextField11.text != "" {
            textKind11 = TextField11.text!
        }else{
            TextField11.placeholder = "文字が入力されていません。"
        }
        
        if TextField12.text != nil || TextField12.text != "" {
            textKind12 = TextField12.text!
        }else{
            TextField12.placeholder = "文字が入力されていません。"
        }
        
        if TextField13.text != nil || TextField13.text != "" {
            textKind13 = TextField13.text!
        }else{
            TextField13.placeholder = "文字が入力されていません。"
        }
        
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
        
       
//        var hoge :NSDate = time1 as! NSDate
        
        
        let df  = DateFormatter()
        df.dateFormat = "yyyy-MM-dd hh:mm:ss"
        var electData1:NSDate = df.date(from: time1) as! NSDate
        var electData2:NSDate = df.date(from: time2) as! NSDate
        var electData3:NSDate = df.date(from: time3) as! NSDate
        var electData4:NSDate = df.date(from: time4) as! NSDate
        var electData5:NSDate = df.date(from: time5) as! NSDate
        var electData6:NSDate = df.date(from: time6) as! NSDate
        var electData7:NSDate = df.date(from: time7) as! NSDate
        var electData8:NSDate = df.date(from: time8) as! NSDate
        var electData9:NSDate = df.date(from: time9) as! NSDate
        var electData10:NSDate = df.date(from: time10) as! NSDate
         var electData11:NSDate = df.date(from: time11) as! NSDate
         var electData12:NSDate = df.date(from: time12) as! NSDate
         var electData13:NSDate = df.date(from: time13) as! NSDate
    }
    

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


