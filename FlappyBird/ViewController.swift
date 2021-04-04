//
//  ViewController.swift
//  FlappyBird
//
//  Created by 松本光輝 on 2021/03/27.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //SKViewに型を変換する
        let skView = self.view as! SKView
        
        //FPSを表示
        //showsFPS 画面が1秒間に何回更新されているかを示すFPSを画面の右下に表示
        skView.showsFPS = true
        
        //ノードの数を表示
        //ノードが幾つ表示されているかを画面の右下に表示させるものです
        skView.showsNodeCount = true
        
        //ビューと同じサイズでシーンを作成
        let scene = GameScene(size: skView.frame.size)
        
        //ビューにシーンを表示
        skView.presentScene(scene)
    }
    //ステータスバーを消す
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }

}

