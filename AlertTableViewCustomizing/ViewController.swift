//  ViewController.swift
//  AlertTableViewCustomizing
//  Created by 503-26 on 30/11/2018.
//  Copyright © 2018 customizing. All rights reserved.
import UIKit
class ViewController: UIViewController {
    //menu 버튼의 변수연결
    @IBOutlet weak var menu: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //사이드 바를 토글하는 코드
        if let revealVC = self.revealViewController(){
            self.menu.target = revealVC
            self.menu.action = #selector(revealVC.revealToggle(_:))
            self.view.addGestureRecognizer(revealVC.panGestureRecognizer())
        }
        
        
        let csButton = CSButton(type: .circle)
        csButton.frame = CGRect(x: 200, y: 200, width: 200, height: 20)
        let csButton2 = CSButton(frame: .init(x: 50, y: 50, width: 100, height: 40))
        self.view.addSubview(csButton2)
        self.view.addSubview(csButton)
    }
    //뷰과 화면에 출력될 때 호출되는 메소드
    //오버라이딩(overriding)(재정의) : 기반(상위) 클래스가 가지고 있는 메소드를 파생(하위) 클래스에서 재정의 하는 것으로 기존 메소드의 기능을 확장하기 위해서 하는 것입니다.
    //오버로딩(overloading)(중복정의) : 하나의 클래스에 동일한 이름의 메소드가 여러개 존재하는 것으로 메소드의 매개변수 개수나 자료형은 달라야 합니다. 유사한 역할을 수행하는 메소드의 이름을 일치시키기 위해서 사용합니다.
    override func viewDidAppear(_ animated: Bool) {
        //Base 클래스의 메소드 호출
        super.viewDidAppear(animated)
        //대화상자를 만들어서 출력
        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        let confirm = UIAlertAction(title: "확인", style: .cancel)
        alert.addAction(confirm)
        //대화상자에 콘텐츠를 추가
        let contentVC = ListViewController()
        contentVC.mom = self
        alert.setValue(contentVC, forKeyPath: "contentViewController")
        //대화상자에 출력
        self.present(alert, animated: true)
    }
//셀을 선택했을 때 호출되는 사용자 정의 메소드
    func select(_ indexPath:IndexPath){
        print("\(indexPath.row)을 선택")
    }

}

