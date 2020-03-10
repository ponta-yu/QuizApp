//
//  ViewController.swift
//  SampleQuiz
//
//  Created by yuta naito on 2020/03/10.
//  Copyright © 2020 yuta naito. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /* システムサウンド */
    @IBAction func tapSystemSound(_ sender: Any) {
        /* システムサウンドを鳴らし、バイブレーションさせる */
        AudioServicesPlaySystemSoundWithCompletion(1005) {
            
        }
    }
    
    /* カスタムサウンド */
    @IBAction func tapCustomSound(_ sender: Any) {
        /* サウンドファイルの設定 */
        let soundUrl = Bundle.main.url(forResource: "thunder03", withExtension: "mp3")
        /* サウンドIDを登録するための変数を定義 */
        var soundId: SystemSoundID = 0
        /* サウンドファイルを登録してサウンドIDを取得 */
        AudioServicesCreateSystemSoundID(soundUrl! as CFURL, &soundId)
        /* 取得したサウンドIDを使用してサウンドを鳴らす */
        AudioServicesPlaySystemSoundWithCompletion(soundId){
            
        }
    }
    
    /* バイブレーション */
    @IBAction func tapVibration(_ sender: Any) {
        AudioServicesPlaySystemSoundWithCompletion(kSystemSoundID_Vibrate) {
            
        }
    }
}

