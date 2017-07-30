//// //                print("imgの中身は:\(Img)")
//
//let formatter = DateFormatter()
//formatter.dateFormat = "yyyy年MM月dd日 HH:mm:ss"
////Stringにしたい
//let detastring:String = formatter.string(from: deta as Date)
//
//if title == "" || title == nil || detail == "" || detail == nil{
//    print("空かnilです")
//}else{
//    //                    MARK:ここオプショナルになるなぜ？
//    print("titleは:\(title)detailは:\(detail)")
//    myTitle.append(title!)
//    myDetail.append(detail!)
//    myDeta.append(detastring)
//    
//}
//
//if Img == "" || Img == nil{
//    print("画像でいたはカラです。")
//}else{
//    myImage.append(Img)
//}
//



//  historyViewController.swift
//  100commit
//
//  Created by togashi yoshiki on 2017/07/23.
//  Copyright © 2017年 Yoshiki Togashi. All rights reserved.
//

import UIKit
import CoreData

class historyViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    ///タイトル名保存用
    var Historys:[String] = [""]
    
    ///各項目の保存
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
            let guest = segue.destination as! CommitViewViewController
            
            
            
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
    
    
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        read()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
