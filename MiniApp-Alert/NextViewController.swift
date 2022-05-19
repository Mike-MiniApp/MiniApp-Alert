//
//  NextViewController.swift
//  MiniApp-Alert
//
//  Created by 近藤米功 on 2022/04/18.
//

import UIKit

class NextViewController: UIViewController {
    var categoryName: String = "勉強"

    @IBOutlet var alertJudgeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func alertButton(_ sender: Any) {
        let alertController = UIAlertController(title: "カテゴリ追加", message: "\(categoryName)をカテゴリ一覧に追加しますか？", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (ok) in
            self.alertJudgeLabel.text = "OK"
        }
        let cancelAction = UIAlertAction(title: "CANCEL", style: .default) { (cancel) in
            self.alertJudgeLabel.text = "cancel"
            alertController.dismiss(animated: true, completion: nil)
        }
        //OKとCANCELを表示追加し、アラートを表示
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}
