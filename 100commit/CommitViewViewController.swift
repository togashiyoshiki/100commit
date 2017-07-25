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
    
    var commitName: String = ""
    
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
    
    @IBOutlet weak var time1: UILabel!
    @IBOutlet weak var time2: UILabel!
    @IBOutlet weak var time3: UILabel!
    @IBOutlet weak var time4: UILabel!
    @IBOutlet weak var time5: UILabel!
    @IBOutlet weak var time6: UILabel!
    @IBOutlet weak var time7: UILabel!
    @IBOutlet weak var time8: UILabel!
    @IBOutlet weak var time9: UILabel!
    @IBOutlet weak var time10: UILabel!
    @IBOutlet weak var time11: UILabel!
    @IBOutlet weak var time12: UILabel!
    @IBOutlet weak var time13: UILabel!
    
    
    
    
    func read(){
//        カラの変数を用意する
        //        AooDelegateを使う用意をしておく
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        //        エンティティを操作するためのオブジェクトを作成
        let viewContext = appDelegate.persistentContainer.viewContext
        //        どのエンティティからデータを取得してくるか設定
        let query:NSFetchRequest<CharacterSet> = CharacterSet.fetchRequest()
//         let query:NSFetchRequest<AcquisitionTime> = AcquisitionTime.fetchRequest()
        do{
            //        データの一括取得
            let fetchResults = try viewContext.fetch(query)
            //        ループで一行ずつ表示
            for result : AnyObject in fetchResults {
                commitName = result.value(forKey: "commitTitle") as! String
                
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
    
    
    //MARK:戻るボタン
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        read()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
