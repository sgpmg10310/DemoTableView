//
//  ListViewController.swift
//  DemoTableView
//
//  Created by 현명 on 2023/06/15.
//

import UIKit

class ListViewController: UITableViewController {

    
    
    //배열을 초기화
    var list = Array<UserVO>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()  //뷰 로딩이 끝나면

        var user = UserVO()
        user.firstName = "길동"
        user.lastName = "홍"
        user.street = "역삼역"
        user.mobile = "010-41123-123"
        user.picture = "01"
        self.list.append(user)
        
        user = UserVO()
        user.firstName = "우치"
        user.lastName = "전"
        user.street = "선릉역"
        user.mobile = "010-222-123"
        user.picture = "02"
        self.list.append(user)
        
        user = UserVO()
        user.firstName = "문수"
        user.lastName = "박"
        user.street = "삼성역"
        user.mobile = "010-123-4444"
        user.picture = "03"
        self.list.append(user)
        
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       // 그룹의 개수
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // 그룹의 행의 갯수
        return list.count
    }

    //주석 제거하였음
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        //실제 셀의 컨텐츠를 생성
        let row = self.list[indexPath.row]  //추가 , 인덱스패스의 row를 받아서    셀 번호로 주고
        
        //TableViewCell ID체크(재사용)
        // UITableViewCelll ==> UserCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath) as! UserCell
        // 터치하면 사라지는 쉘들, 큐에 잠깐 적재함.

        // Configure the
//        cell.textLabel?.text = row.lastName
//        cell.detailTextLabel?.text = row.firstName
        
        
        cell.lastName?.text = row.lastName
        cell.firstName?.text = row.firstName
        cell.street?.text = row.street
        cell.cellPhone?.text = row.mobile
        
        //이미지 출력
        cell.thumbnail.image = UIImage(named: row.picture!)
       
        
        
//        // tag의 속성 검색
//        let lastName = cell.viewWithTag(101) as? UILabel
//        let firstName = cell.viewWithTag(102) as? UILabel
//        let street = cell.viewWithTag(103) as? UILabel
//        let cellPhone = cell.viewWithTag(104) as? UILabel
//
//        lastName?.text = row.lastName
//        firstName?.text = row.firstName
//
//        street?.text = row.street
//        cellPhone?.text = row.mobile

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Touch \(indexPath.row)")  // 행번호 출력

        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
