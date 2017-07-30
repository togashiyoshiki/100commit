import UIKit
import CoreData

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
        
        read1()
    }
    
    func read1(){
        //        カラの変数を用意する
        //        AooDelegateを使う用意をしておく
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        //        エンティティを操作するためのオブジェクトを作成
        let viewContext = appDelegate.persistentContainer.viewContext
        //        どのエンティティからデータを取得してくるか設定
        let query:NSFetchRequest<AcquisitionTime> = AcquisitionTime.fetchRequest()
        //         let query:NSFetchRequest<AcquisitionTime> = AcquisitionTime.fetchRequest()
        do{
            //        データの一括取得
            let fetchResults = try viewContext.fetch(query)
            //        ループで一行ずつ表示
            for result : AnyObject in fetchResults {
                ///nowDeta
                var nowtime = result.value(forKey: "nowTime") as! Date
                
                //targetデータを取得
                ///開始時間の取得
                var target1 = result.value(forKey: "targetDate1") as! Date
                var target2 = result.value(forKey: "targetDate2") as! Date
                var target3 = result.value(forKey: "targetDate3") as! Date
                var target4 = result.value(forKey: "targetDate4") as! Date
                var target5 = result.value(forKey: "targetDate5") as! Date
                var target6 = result.value(forKey: "targetDate6") as! Date
                var target7 = result.value(forKey: "targetDate7") as! Date
                var target8 = result.value(forKey: "targetDate8") as! Date
                var target9 = result.value(forKey: "targetDate9") as! Date
                var target10 = result.value(forKey: "targetDate10") as! Date
                var target11 = result.value(forKey: "targetDate11") as! Date
                var target12 = result.value(forKey: "targetDate12") as! Date
                var target13 = result.value(forKey: "targetDate13") as! Date
                
                
                print("取り出したい\(target1)")
                print(target2)
                print(target3)
                print(target4)
                print(target5)
                print(target6)
                print(target7)
                print(target8)
                print(target9)
                print(target10)
                print(target11)
                print(target12)
                print(target13)
                ///終了時間の取得
                var target111 = result.value(forKey: "targetDate111") as! Date
                var target222 = result.value(forKey: "targetDate222") as! Date
                var target333 = result.value(forKey: "targetDate333") as! Date
                var target444 = result.value(forKey: "targetDate444") as! Date
                var target555 = result.value(forKey: "targetDate555") as! Date
                var target666 = result.value(forKey: "targetDate666") as! Date
                var target777 = result.value(forKey: "targetDate777") as! Date
                var target888 = result.value(forKey: "targetDate888") as! Date
                var target999 = result.value(forKey: "targetDate999") as! Date
                var target101010 = result.value(forKey: "targetDate101010") as! Date
                var target111111 = result.value(forKey: "targetDate111111") as! Date
                var target121212 = result.value(forKey: "targetDate121212") as! Date
                var target131313 = result.value(forKey: "targetDate131313") as! Date
                
                
                //            時間の計算(秒数の割り出し)
                var retInterval1 = target111.timeIntervalSince(target1)
                var retInterval2 = target222.timeIntervalSince(target2)
                var retInterval3 = target333.timeIntervalSince(target3)
                var retInterval4 = target444.timeIntervalSince(target4)
                var retInterval5 = target555.timeIntervalSince(target5)
                var retInterval6 = target666.timeIntervalSince(target6)
                var retInterval7 = target777.timeIntervalSince(target7)
                var retInterval8 = target888.timeIntervalSince(target8)
                var retInterval9 = target999.timeIntervalSince(target9)
                var retInterval10 = target101010.timeIntervalSince(target10)
                var retInterval11 = target111111.timeIntervalSince(target11)
                var retInterval12 = target121212.timeIntervalSince(target12)
                var retInterval13 = target131313.timeIntervalSince(target13)
                
                
                //            時間の計算(分の割り出し)
                var ret1 = retInterval1/60
                var ret2 = retInterval2/60
                var ret3 = retInterval3/60
                var ret4 = retInterval4/60
                var ret5 = retInterval5/60
                var ret6 = retInterval6/60
                var ret7 = retInterval7/60
                var ret8 = retInterval8/60
                var ret9 = retInterval9/60
                var ret10 = retInterval10/60
                var ret11 = retInterval11/60
                var ret12 = retInterval12/60
                var ret13 = retInterval13/60
                
                //        double型をString型で文字として保存
                var str1: String = String("\(ret1)分")
                var str2: String = String("\(ret2)分")
                var str3: String = String("\(ret3)分")
                var str4: String = String("\(ret4)分")
                var str5: String = String("\(ret5)分")
                var str6: String = String("\(ret6)分")
                var str7: String = String("\(ret7)分")
                var str8: String = String("\(ret8)分")
                var str9: String = String("\(ret9)分")
                var str10: String = String("\(ret10)分")
                var str11: String = String("\(ret11)分")
                var str12: String = String("\(ret12)分")
                var str13: String = String("\(ret13)分")
                //                文字を表示します
                targetTime1.text = str1
                targetTime2.text = str2
                targetTime3.text = str3
                targetTime4.text = str4
                targetTime5.text = str5
                targetTime6.text = str6
                targetTime7.text = str7
                targetTime8.text = str8
                targetTime9.text = str9
                targetTime10.text = str10
                targetTime11.text = str11
                targetTime12.text = str12
                targetTime13.text = str13
            }
        }catch{
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
