//  ViewController.swift
//  Customizing
//  Created by 503-26 on 29/11/2018.
//  Copyright © 2018 customizing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //네비게이션 바에 타이틀을 출력
        //self.navigationItem.title = "커스터마이징"
        
        //네비게이션 바에 레이블을 배치해서 원하는 모양으로 출력
        //레이블 2개를 이용해서 2개의 문자열의 크기가 다르도록 설정
        /*
            //레이블 2개를 바로 배치는 못하므로 2개를 묶을 수 있는 View를 생성
            let naviView = UIView(frame : CGRect(x: 0, y: 0, width: 200, height: 40))
                //상단 레이블 만들기
                let topTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 18))
                topTitle.text = "더조은 컴퓨터 학원"
                topTitle.numberOfLines = 1
                topTitle.textAlignment = .center
                topTitle.font = UIFont.systemFont(ofSize : 16)
                topTitle.textColor = UIColor.white
                //하단 레이블 만들기
                let bottomTitle = UILabel(frame: CGRect(x: 0, y: 18, width: 200, height: 18))
                bottomTitle.text = "메가 IT"
                bottomTitle.numberOfLines = 1
                bottomTitle.textAlignment = .center
                bottomTitle.font = UIFont.systemFont(ofSize : 13)
                bottomTitle.textColor = UIColor.white
        
            //2개 레이블을 naviView에 추가
            naviView.addSubview(topTitle)
            naviView.addSubview(bottomTitle)
        
            //중앙에 배치
            self.navigationItem.titleView = naviView
        
            //네비게이션 바의 색상 변경
            self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.02, green: 0.2, blue: 0.5, alpha: 1.0)
        */
        
        //이미지 만들기
        let back = UIImage(named: "arrow-back")
        //이미지를 이용해서 BarButtonItem 생성
        let leftButton = UIBarButtonItem(image: back, style: .plain, target: self, action: nil)
        //BarButtomItem에 적용
        self.navigationItem.leftBarButtonItem = leftButton
        
        //중앙에 텍스트 필드 배치
        let tf = UITextField()
        tf.frame = CGRect(x: 0, y: 0, width: 300, height: 40)
        //옵션설정
        tf.backgroundColor = UIColor.white
        tf.font = UIFont.systemFont(ofSize: 13)
        tf.keyboardType = .URL
        tf.layer.borderWidth = 0.4
        tf.layer.borderColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0).cgColor
        
        self.navigationItem.titleView = tf
        
        //네비게이션 바의 오른쪽 부분에 1개의 레이블과 1개의 바버튼을 배치
        let rv = UIView()
        //뷰의 좌표와 크기를 설정
        rv.frame = (CGRect(x: 0, y: 0, width: 70, height: 70))
        //뷰를 가지고 BarButtonItem 생성
        let rvItem = UIBarButtonItem.init(customView: rv)
        //네비게이션 바의 오른쪽에 배치
        self.navigationItem.rightBarButtonItem = rvItem
        //화면에 출력되는 것은 모아서 한꺼번에 처리하기 때문에 이미지를 배치하지 않고 만들어놓은 다음 나중에 이미지를 대입해도 된다.
        
        let cnt = UILabel()
        cnt.frame = CGRect(x: 0, y: 8, width: 30, height: 30)
        cnt.font = UIFont.systemFont(ofSize: 17)
        cnt.textColor = UIColor.init(red: 0.8, green: 0.6, blue: 0.6, alpha: 1.0)
        cnt.text = "3"
        cnt.textAlignment = .center
        cnt.layer.cornerRadius = 3
        cnt.layer.borderWidth = 2
        cnt.layer.borderColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0).cgColor
        rv.addSubview(cnt)
        
        let more = UIButton(type: .system)
        more.frame = CGRect(x: 50, y: 10, width: 16, height: 16)
        more.setImage(UIImage(named: "more"), for: .normal)
        rv.addSubview(more)
        
        let 가로 = self.view.frame.width
        let 세로 = self.view.frame.height
        
        //대화상자에 이미지 출력하기
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let okAction = UIAlertAction(title: "확인", style: .cancel)
        alert.addAction(okAction)
        
        //대화상자에 삽입할 뷰 컨트롤러 만들기
        let contentVC = UIViewController()
        
        //출력할 이미지 뷰 만들기
        let image = UIImage(named: "rating5")
        let imageView = UIImageView(image: image)
        //이미지뷰의 프레임 설정 - 원본 이미지의 크기로 생성
        imageView.frame = CGRect(x: 0, y: 0, width: (image!.size.width), height: (image!.size.height))
        //이미지 뷰를 삽입
        contentVC.view.addSubview(imageView)
        //contentVC의 크기를 변경
        contentVC.preferredContentSize = CGSize(width: (image!.size.width), height: (image!.size.height))

        
        //대화상자에 삽입
        alert.setValue(contentVC, forKeyPath: "contentViewController")
        //대화상자 출력
        self.present(alert,animated: true)
        
    }


}

