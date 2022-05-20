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
        // UIAlertControllerクラスのインスタンスを生成
        // タイトル、メッセージ、Alertのスタイルを指定する
        // 第3引数のpreferredStyleでアラートの表示スタイルを指定する
        let alertController = UIAlertController(title: "カテゴリ追加", message: "\(categoryName)をカテゴリ一覧に追加しますか？", preferredStyle: .alert)

        // Action初期時にタイトル、スタイル、押された時に実行されるハンドラを指定する
        // 第3引数のUIAlertActionStyleでボタンのスタイルを指定する
        // OK
        let okAction = UIAlertAction(title: "OK", style: .default) { (ok) in
            self.alertJudgeLabel.text = "OK"
        }
        // キャンセルボタン
        let cancelAction = UIAlertAction(title: "CANCEL", style: .default) { (cancel) in
            self.alertJudgeLabel.text = "cancel"
            alertController.dismiss(animated: true, completion: nil)
        }
        // UIAlertControllerにActionを追加
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        // Alertを表示
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func tappedActionSheetButton(_ sender: Any) {
        // UIAlertControllerクラスのインスタンスを生成
        // タイトル、メッセージ、Alertのスタイルを指定する
        // 第3引数のpreferredStyleでアラートの表示スタイルを指定する
        // let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .alert)

        // Action初期時にタイトル、スタイル、押された時に実行されるハンドラを指定する
        // 第3引数のUIAlertActionStyleでボタンのスタイルを指定する
        // OK
        let cameraAction = UIAlertAction(title: "カメラ", style: .default) { (ok) in
            self.alertJudgeLabel.text = "カメラ"
        }
        // キャンセルボタン
        let albumAction = UIAlertAction(title: "アルバム", style: .default) { (cancel) in
            self.alertJudgeLabel.text = "アルバム"
        }
        let cancelAction = UIAlertAction(title: "キャンセル", style: .default) { (cancel) in
            self.alertJudgeLabel.text = "キャンセル"
            alertController.dismiss(animated: true, completion: nil)
        }
        // UIAlertControllerにActionを追加
        let photoImage = UIImage(systemName: "photo")
        let cameraImage = UIImage(systemName: "camera")
        alertController.addAction(albumAction)
        alertController.addAction(cameraAction)
        alertController.addAction(cancelAction)
        cameraAction.setValue(photoImage, forKey: "image")
        albumAction.setValue(cameraImage, forKey: "image")
        // Alertを表示
        present(alertController, animated: true, completion: nil)
    }


    @IBAction func tappedDisplayActionSheetButton(_ sender: Any) {
    }
}
