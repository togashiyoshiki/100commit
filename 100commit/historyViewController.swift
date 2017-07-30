import UIKit
import CoreData

class historyViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    ///タイトル名保存用
    var Historys:[String] = [""]
    
    ///各項目の移動
    var item1:[String] = [""]
    var item2:[String] = [""]
    var item3:[String] = [""]
    var item4:[String] = [""]
    var item5:[String] = [""]
    var item6:[String] = [""]
    var item7:[String] = [""]
    var item8:[String] = [""]
    var item9:[String] = [""]
    var item10:[String] = [""]
    var item11:[String] = [""]
    var item12:[String] = [""]
    var item13:[String] = [""]
    
    
    ///時間の移動
    var targetTime1:[String] = [""]
    var targetTime2:[String] = [""]
    var targetTime3:[String] = [""]
    var targetTime4:[String] = [""]
    var targetTime5:[String] = [""]
    var targetTime6:[String] = [""]
    var targetTime7:[String] = [""]
    var targetTime8:[String] = [""]
    var targetTime9:[String] = [""]
    var targetTime10:[String] = [""]
    var targetTime11:[String] = [""]
    var targetTime12:[String] = [""]
    var targetTime13:[String] = [""]
    
    
   
   
   
    
    
    
    //    ⑵行数を決める
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return Historys.count
    }
    //    ⑶リストに表示する文字列を決定し、表示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        //        文字を表示するセルの取得(セルの再利用)
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = Historys[indexPath.row]
        return cell
        
    }
    //    セグエの設定　設定したセグエの名前を記入
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        どこのセグのどの値をと聞いている↓
        performSegue(withIdentifier: "Segue1", sender: indexPath.row)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //        guestの中身segueに飛んだSecondViewControllerクラスの継承している
        if (segue.identifier == "Segue1") {
            let guest = segue.destination as! TargetViewController
            ///タイトル
         guest.TitleHistorys = Historys[sender as! Int]
            ///項目
            guest.item1 = item1[sender as! Int]
            guest.item2 = item2[sender as! Int]
            guest.item3 = item3[sender as! Int]
            guest.item4 = item4[sender as! Int]
            guest.item4 = item4[sender as! Int]
            guest.item5 = item5[sender as! Int]
            guest.item6 = item6[sender as! Int]
            guest.item7 = item7[sender as! Int]
            guest.item8 = item8[sender as! Int]
            guest.item9 = item9[sender as! Int]
            guest.item10 = item10[sender as! Int]
            guest.item11 = item11[sender as! Int]
            guest.item12 = item12[sender as! Int]
            guest.item13 = item13[sender as! Int]
            ///時間の表示
        }
    }
    
    func read(){
        //        カラの配列を用意します。
        
        Historys = []
        
        item1  = []
        item2 = []
        item3 = []
        item4 = []
        item5 = []
        item6 = []
        item7 = []
        item8 = []
        item9 = []
        item10 = []
        item11 = []
        item12 = []
        item13 = []
       
        //        AppDelegateを使う準備
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        //        エンティティを操作するためのオブジェクト
        let viewContext = appDelegate.persistentContainer.viewContext
        //        どのエンティティからデータを取得してくるか設定
        let query: NSFetchRequest<CharacterSet> = CharacterSet.fetchRequest()
        
        do{
            ///表示を上からに変更するための処理  {データ型}
            query.sortDescriptors = [NSSortDescriptor(key: "nowTime",ascending: false)]
            
            //            データを一括取得
            let fetchResults = try viewContext.fetch(query)
            //            データの取得
            for result: AnyObject in fetchResults {
                
                var commitTitle:String! = result.value(forKey: "CommitTitle") as! String
                
                var addItem1:String! = result.value(forKey: "inputData1") as! String
                var addItem2:String! = result.value(forKey: "inputData2") as! String
                var addItem3:String! = result.value(forKey: "inputData3") as! String
                var addItem4:String! = result.value(forKey: "inputData4") as! String
                var addItem5:String! = result.value(forKey: "inputData5") as! String
                var addItem6:String! = result.value(forKey: "inputData6") as! String
                var addItem7:String! = result.value(forKey: "inputData7") as! String
                var addItem8:String! = result.value(forKey: "inputData8") as! String
                var addItem9:String! = result.value(forKey: "inputData9") as! String
                var addItem10:String! = result.value(forKey: "inputData10") as! String
                var addItem11:String! = result.value(forKey: "inputData11") as! String
                var addItem12:String! = result.value(forKey: "inputData12") as! String
                var addItem13:String! = result.value(forKey: "inputData13") as! String
                
                Historys.append(commitTitle)
                
                item1.append(addItem1)
                item2.append(addItem2)
                item3.append(addItem3)
                item4.append(addItem4)
                item5.append(addItem5)
                item6.append(addItem6)
                item7.append(addItem7)
                item8.append(addItem8)
                item9.append(addItem9)
                item10.append(addItem10)
                item11.append(addItem11)
                item12.append(addItem12)
                item13.append(addItem13)
                
                print(item1)
                print(item2)
                print(item3)
                print(item4)
                print(item5)
                print(item6)
                print(item7)
                print(item8)
                print(item9)
                print(item10)
                print(item11)
                print(item12)
                print(item13)

            }
        }catch{
        }
    }
    
    func read1(){
        
        
        //        カラの変数を用意する
        //        AooDelegateを使う用意をしておく
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        //        エンティティを操作するためのオブジェクトを作成
        let viewContext = appDelegate.persistentContainer.viewContext
        //        どのエンティティからデータを取得してくるか設定
        let query:NSFetchRequest<AcquisitionTime> = AcquisitionTime.fetchRequest()
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
                
//                var str2: String = String("\(ret2)分")
//                var str3: String = String("\(ret3)分")
//                var str4: String = String("\(ret4)分")
//                var str5: String = String("\(ret5)分")
//                var str6: String = String("\(ret6)分")
//                var str7: String = String("\(ret7)分")
//                var str8: String = String("\(ret8)分")
//                var str9: String = String("\(ret9)分")
//                var str10: String = String("\(ret10)分")
//                var str11: String = String("\(ret11)分")
//                var str12: String = String("\(ret12)分")
//                var str13: String = String("\(ret13)分")
           

            }
        }catch{
        }
    }
    
    
    
  //MAKR:作成未定
//
//    //    削除機能
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            myTitle.remove(at: indexPath.row)
//            print(myTitle)
//            myDetail.remove(at: indexPath.row)
//            print(myDetail)
//            tableView.deleteRows(at: [indexPath], with: .fade)
//            //        AooDelegateを使う用意をしておく
//            let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
//            //        エンティティを操作するためのオブジェクトを作成
//            let viewContext = appDelegate.persistentContainer.viewContext
//            //        どのエンティティからデータを取得してくるか設定
//            let query:NSFetchRequest<Daily> = Daily.fetchRequest()
//            do{
//                //            削除するデータを取得
//                let fetchResults = try viewContext.fetch(query)
//                //            削除するデータを取得
//                for result : AnyObject in fetchResults {
//                    let deta: NSDate! = result.value(forKey: "deilyDeta") as! NSDate
//                    let formatter = DateFormatter()
//                    formatter.dateFormat = "yyyy年MM月dd日 HH:mm:ss"
//                    //Stringにしたい
//                    let detastring:String = formatter.string(from: deta as Date)
//                    
//                    if detastring == myDeta[indexPath.row]{
//                        //        一行ずつ削除
//                        let record = result as! NSManagedObject
//                        viewContext.delete(record)
//                    }
//                }
//                //            削除した状態を保存(処理の確定)
//                try viewContext.save()
//            }catch{
//            }
//        }
//    }
//    
    
    
    
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        read()
        read1()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
