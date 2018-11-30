//  ListViewController.swift
//  AlertTableViewCustomizing
//  Created by 503-26 on 30/11/2018.
//  Copyright © 2018 customizing. All rights reserved.
import UIKit
class ListViewController: UITableViewController {

    //자신을 포함한 인스턴스에 대한 포인터
    var mom : ViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.preferredContentSize.height = 250
        print("리스트뷰!!")
    }

// MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //고정된 옵션은 셀을 재사용할 필요가 없음
        let cell = UITableViewCell()
        //행번호 출력
        cell.textLabel?.text = "\(indexPath.row)번째 옵션"

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //mom이 가지고 있는 select라는 메소드를 호출
        //원래는 아직 안 만든 메소드이므로 오류인데 select라는 이름이 쓰이고 있을 확률이 있음
        //그렇다면 재정의해서 구현할 예정
        mom?.select(indexPath)
    }
}
