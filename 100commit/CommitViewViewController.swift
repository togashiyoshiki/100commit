//
//  CommitViewViewController.swift
//  100commit
//
//  Created by togashi yoshiki on 2017/07/24.
//  Copyright © 2017年 Yoshiki Togashi. All rights reserved.
//

import UIKit
import CoreData

class CommitViewViewController: UIViewController {
//MARK:メンバ変数
    ///タイトル名
    var commitName: String = ""
    ///項目名
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
    
    ///セレクトされた開始時間
    var targetTime1:String = ""
    var targetTime2:String = ""
    var targetTime3:String = ""
    var targetTime4:String = ""
    var targetTime5:String = ""
    var targetTime6:String = ""
    var targetTime7:String = ""
    var targetTime8:String = ""
    var targetTime9:String = ""
    var targetTime10:String = ""
    var targetTime11:String = ""
    var targetTime12:String = ""
    var targetTime13:String = ""
    
    ///セレクトされた終了
    var targetTime111:String = ""
    var targetTime222:String = ""
    var targetTime333:String = ""
    var targetTime444:String = ""
    var targetTime555:String = ""
    var targetTime666:String = ""
    var targetTime777:String = ""
    var targetTime888:String = ""
    var targetTime999:String = ""
    var targetTime101010:String = ""
    var targetTime111111:String = ""
    var targetTime121212:String = ""
    var targetTime131313:String = ""
     //        MARK:入力された項目の表示
    ///コミット名
    @IBOutlet weak var titleLabel: UILabel!
    
    ///各項目
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
    
    
//          MARK:割り出された時間の表示
    
    @IBOutlet weak var timeLabel1: UILabel!
    @IBOutlet weak var timeLabel2: UILabel!
    @IBOutlet weak var timeLabel3: UILabel!
    @IBOutlet weak var timeLabel4: UILabel!
    @IBOutlet weak var timeLabel5: UILabel!
    @IBOutlet weak var timeLabel6: UILabel!
    @IBOutlet weak var timeLabel7: UILabel!
    @IBOutlet weak var timeLabel8: UILabel!
    @IBOutlet weak var timeLabel9: UILabel!
    @IBOutlet weak var timeLabel10: UILabel!
    @IBOutlet weak var timeLabel11: UILabel!
    @IBOutlet weak var timeLabel12: UILabel!
    @IBOutlet weak var timeLabel13: UILabel!
    
    
    ///コミット計算の表示
    @IBOutlet weak var commitTime: UILabel!
    
    ///コミット計算用
    var commitTimeText : String = ""
    
    
    
    
    func read(){
//        カラの変数を用意する
        //        AooDelegateを使う用意をしておく
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        //        エンティティを操作するためのオブジェクトを作成
        let viewContext = appDelegate.persistentContainer.viewContext
        //        どのエンティティからデータを取得してくるか設定
        let query:NSFetchRequest<CharacterSet> = CharacterSet.fetchRequest()

        do{
            //        データの一括取得
            let fetchResults = try viewContext.fetch(query)
            //        ループで一行ずつ表示
            for result : AnyObject in fetchResults {
                ///タイトル名の取り出し
                commitName = result.value(forKey: "commitTitle") as! String
                ///テキストデータの取り出し
                item1 = result.value(forKey: "inputData1") as! String
                item2 = result.value(forKey: "inputData2") as! String
                item3 = result.value(forKey: "inputData3") as! String
                item4 = result.value(forKey: "inputData4") as! String
                item5 = result.value(forKey: "inputData5") as! String
                item6 = result.value(forKey: "inputData6") as! String
                item7 = result.value(forKey: "inputData7") as! String
                item8 = result.value(forKey: "inputData8") as! String
                item9 = result.value(forKey: "inputData9") as! String
                item10 = result.value(forKey: "inputData10") as! String
                item11 = result.value(forKey: "inputData11") as! String
                item12 = result.value(forKey: "inputData12") as! String
                item13 = result.value(forKey: "inputData13") as! String
                
                
                titleLabel.text = commitName
                
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
                
                
<<<<<<< HEAD
                print(target1)
=======
                print("取り出したい\(target1)")
>>>>>>> 1e08e58bd94c12bd3bb30ed49e8948c99ebea0f8
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
<<<<<<< HEAD
                
                
                
=======
>>>>>>> 1e08e58bd94c12bd3bb30ed49e8948c99ebea0f8
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
                
                
<<<<<<< HEAD
                print(target111)
                print(target222)
                print(target333)
                print(target444)
                print(target555)
                print(target666)
                print(target777)
                print(target888)
                print(target999)
                print(target101010)
                print(target111111)
                print(target121212)
                print(target131313)
                

                
                
            }
            
        }catch{
        }
    }
    
    
    
    
    
    
    
=======
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
                
                ///時間分岐表示
                if ret1 > 60 {
                    print("１時間以上です。")
                    ret1  = ret1 / 60
                    var str1: String = String("\(ret1)時間")
                    timeLabel1.text = str1
                }else{
                    print("１時間未満")
                      var str1: String = String("\(ret1)分")
                        timeLabel1.text = str1
                }
                
                if ret2 > 60 {
                    print("１時間以上です。")
                    ret2  = ret2 / 60
                    var str2: String = String("\(ret2)時間")
                    timeLabel2.text = str2
                }else{
                    print("１時間未満")
                    var str2: String = String("\(ret2)分")
                    timeLabel2.text = str2
                }

                if ret3 > 60 {
                    print("１時間以上です。")
                    ret3  = ret3 / 60
                    var str3: String = String("\(ret3)時間")
                    timeLabel3.text = str3
                }else{
                    print("１時間未満")
                    var str3: String = String("\(ret3)分")
                    timeLabel3.text = str3
                }
                
                if ret4 > 60 {
                    print("１時間以上です。")
                    ret4  = ret4 / 60
                    var str4: String = String("\(ret4)時間")
                    timeLabel4.text = str4
                }else{
                    print("１時間未満")
                    var str4: String = String("\(ret4)分")
                    timeLabel4.text = str4
                }
                
                if ret5 > 60 {
                    print("１時間以上です。")
                    ret5  = ret5 / 60
                    var str5: String = String("\(ret5)時間")
                    timeLabel5.text = str5
                }else{
                    print("１時間未満")
                    var str5: String = String("\(ret5)分")
                    timeLabel5.text = str5
                }
                
                if ret6 > 60 {
                    print("１時間以上です。")
                    ret6  = ret6 / 60
                    var str6: String = String("\(ret6)時間")
                    timeLabel6.text = str6
                }else{
                    print("１時間未満")
                    var str6: String = String("\(ret6)分")
                    timeLabel6.text = str6
                }
                
                
                if ret7 > 60 {
                    print("１時間以上です。")
                    ret7  = ret7 / 60
                    var str7: String = String("\(ret7)時間")
                    timeLabel7.text = str7
                }else{
                    print("１時間未満")
                    var str7: String = String("\(ret7)分")
                    timeLabel7.text = str7
                }
                
                if ret8 > 60 {
                    print("１時間以上です。")
                    ret8  = ret8 / 60
                    var str8: String = String("\(ret8)時間")
                    timeLabel8.text = str8
                }else{
                    print("１時間未満")
                    var str8: String = String("\(ret8)分")
                    timeLabel8.text = str8
                }
                
                
                if ret9 > 60 {
                    print("１時間以上です。")
                    ret9  = ret9 / 60
                    var str9: String = String("\(ret9)時間")
                    timeLabel9.text = str9
                }else{
                    print("１時間未満")
                    var str9: String = String("\(ret9)分")
                    timeLabel9.text = str9
                }
                
                if ret10 > 60 {
                    print("１時間以上です。")
                    ret10  = ret10 / 60
                    var str10: String = String("\(ret10)時間")
                    timeLabel10.text = str10
                }else{
                    print("１時間未満")
                    var str10: String = String("\(ret10)分")
                    timeLabel10.text = str10
                }
                
                if ret11 > 60 {
                    print("１時間以上です。")
                    ret11  = ret11 / 60
                    var str11: String = String("\(ret11)時間")
                    timeLabel11.text = str11
                }else{
                    print("１時間未満")
                    var str11: String = String("\(ret11)分")
                    timeLabel11.text = str11
                }
                
                if ret12 > 60 {
                    print("１時間以上です。")
                    ret12  = ret12 / 60
                    var str12: String = String("\(ret12)時間")
                    timeLabel12.text = str12
                }else{
                    print("１時間未満")
                    var str12: String = String("\(ret12)分")
                    timeLabel12.text = str12
                }
                
                if ret13 > 60 {
                    print("１時間以上です。")
                    ret13  = ret13 / 60
                    var str13: String = String("\(ret13)時間")
                    timeLabel2.text = str13
                }else{
                    print("１時間未満")
                    var str13: String = String("\(ret13)分")
                    timeLabel2.text = str13
                }
                
                
//        double型をString型で文字として保存
//              
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
                
                //                文字を表示します
//               
//                timeLabel2.text = str2
//                timeLabel3.text = str3
//                timeLabel4.text = str4
//                timeLabel5.text = str5
//                timeLabel6.text = str6
//                timeLabel7.text = str7
//                timeLabel8.text = str8
//                timeLabel9.text = str9
//                timeLabel10.text = str10
//                timeLabel11.text = str11
//                timeLabel12.text = str12
//                timeLabel13.text = str13
//                
                //commit計算表示
                
                if item1 == "コミット"  {
                    var str1: String = String("\(ret1)分")
                    commitTime.text = str1
                }
                
                if item2 == "コミット"  {
                    var str2: String = String("\(ret2)分")
                    commitTime.text = str2
                }
                
                if item3 == "コミット"  {
                    
                    var str3: String = String("\(ret3)分")
                    
                    commitTime.text = str3
                    
                }
                
                if item4 == "コミット"  {
                    
                    var str4: String = String("\(ret4)分")
                    
                    commitTime.text = str4
                    
                }
                
                if item5 == "コミット"  {
                    
                    var str5: String = String("\(ret5)分")
                    
                    commitTime.text = str5
                    
                }
                
                if item6 == "コミット"  {
                    
                    var str6: String = String("\(ret6)分")
                    
                    commitTime.text = str6
                    
                }
                
                if item7 == "コミット"  {
                    
                    var str7: String = String("\(ret7)分")
                    
                    commitTime.text = str7
                    
                }
                
                if item8 == "コミット"  {
                    
                    var str8: String = String("\(ret8)分")
                    
                    commitTime.text = str8
                    
                }
                
                if item9 == "コミット"  {
                    
                    var str9: String = String("\(ret9)分")
                    
                    commitTime.text = str9
                    
                }
                
                if item10 == "コミット"  {
                    
                    var str10: String = String("\(ret10)分")
                    
                    commitTime.text = str10
                    
                }
                
                if item11 == "コミット"  {
                    
                    var str11: String = String("\(ret11)分")
                    
                    commitTime.text = str11
                    
                }
                
                if item12 == "コミット"  {
                    
                    var str12: String = String("\(ret12)分")
                    
                    commitTime.text = str12
                    
                }
                
                if item13 == "コミット"  {
                    
                    var str13: String = String("\(ret13)分")
                    
                    commitTime.text = str13
                    
                }
               
                                
            }
        }catch{
        }
    }
>>>>>>> 1e08e58bd94c12bd3bb30ed49e8948c99ebea0f8
    //MARK:戻るボタン
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        read()
        read1()
<<<<<<< HEAD
=======
        
        
        
>>>>>>> 1e08e58bd94c12bd3bb30ed49e8948c99ebea0f8
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
