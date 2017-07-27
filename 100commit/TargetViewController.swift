import UIKit

class TargetViewController: UIViewController {

//    プロパティー
    var TitleHistorys:String = ""
//    入力された項目
    var item1:String = ""
    var item2:String = ""
    var item3:String = ""
    var item4:String = ""
    var item5:String = ""
    var item6:String = ""
    var item7:String = ""
    var item8:String = ""
    var item9:String = ""
    var item10:String = ""
    var item11:String = ""
    var item12:String = ""
    var item13:String = ""
    
    
    //    入力された時間
    
    var target1:String = ""
    var target2:String = ""
    var target3:String = ""
    var target4:String = ""
    var target5:String = ""
    var target6:String = ""
    var target7:String = ""
    var target8:String = ""
    var target9:String = ""
    var target10:String = ""
    var target11:String = ""
    var target12:String = ""
    var target13:String = ""
    
    
    
    
    
    
    
    
    ///タイトルの名前を表示します。
    @IBOutlet weak var TitleName: UILabel!
    
    ///項目の表示をします。
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Label5: UILabel!
    @IBOutlet weak var Label6: UILabel!
    @IBOutlet weak var Label7: UILabel!
    @IBOutlet weak var Label8: UILabel!
    @IBOutlet weak var Label9: UILabel!
    @IBOutlet weak var Label10: UILabel!
    @IBOutlet weak var Label11: UILabel!
    @IBOutlet weak var Label12: UILabel!
    @IBOutlet weak var Label13: UILabel!
    
///時間の表示
    
    @IBOutlet weak var targetTime1: UILabel!
    @IBOutlet weak var targetTime2: UILabel!
    @IBOutlet weak var targetTime3: UILabel!
    @IBOutlet weak var targetTime4: UILabel!
    @IBOutlet weak var targetTime5: UILabel!
    @IBOutlet weak var targetTime6: UILabel!
    @IBOutlet weak var targetTime7: UILabel!
    @IBOutlet weak var targetTime8: UILabel!
    @IBOutlet weak var targetTime9: UILabel!
    @IBOutlet weak var targetTime10: UILabel!
    @IBOutlet weak var targetTime11: UILabel!
    @IBOutlet weak var targetTime12: UILabel!
    @IBOutlet weak var targetTime13: UILabel!
    
    
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ///コミット名
        TitleName.text = TitleHistorys
        ///項目名
        Label1.text = item1
        Label2.text = item2
        Label3.text = item3
        Label4.text = item4
        Label5.text = item5
        Label6.text = item6
        Label7.text = item7
        Label8.text = item8
        Label9.text = item9
        Label10.text = item10
        Label11.text = item11
        Label12.text = item12
        Label13.text = item13
        ///時間の表示
        targetTime1.text = target1
        targetTime2.text = target2
        targetTime3.text = target3
        targetTime4.text = target4
        targetTime5.text = target5
        targetTime6.text = target6
        targetTime7.text = target7
        targetTime8.text = target8
        targetTime9.text = target9
        targetTime10.text = target10
        targetTime11.text = target11
        targetTime12.text = target12
        targetTime13.text = target13
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
