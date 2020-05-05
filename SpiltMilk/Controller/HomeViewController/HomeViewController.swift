//
//  HomeViewController.swift
//  SpiltMilk
//
//  Created by Hiago Chagas on 02/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit
var posts = PostSection.getPosts()
class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostTableViewCell
        cell.userNameLabel.text = posts[indexPath.row].username
        cell.dateLabel.text = posts[indexPath.row].date
        cell.postImageView.image = UIImage(named: posts[indexPath.row].postImageName)
        cell.userImageView.image = UIImage(named: posts[indexPath.row].userPhoto)
        cell.postDescriptionLabel.text = posts[indexPath.row].postDescription
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
