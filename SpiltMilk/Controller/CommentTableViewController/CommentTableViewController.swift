//
//  CommentTableViewController.swift
//  SpiltMilk
//
//  Created by Jhennyfer Rodrigues de Oliveira on 06/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import Foundation
import UIKit

class CommentTableViewController: UITableViewController {
    
//    @IBOutlet weak var addCommentButton: UIBarButtonItem!
//    @IBOutlet weak var backButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CommentCell.nib(), forCellReuseIdentifier: CommentCell.identifier())
        
//         action if user tap right button
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(addTapped))

//        // action if user tap left button
//        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "< Back", style: .plain, target: self, action: #selector(backTapped))

    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "addPost" {
//            let destination = segue.destination as! PostPublishController
//            destination.delegate = self
//        }
    
    // MARK: - Table view data source
    
    override func tableView(_: UITableView, numberOfRowsInSection: Int) ->Int{
        return  commentCellData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CommentCell.identifier(), for: indexPath) as! CommentCell
        
        cell.configureCell(name: commentCellData[indexPath.row].name, image: commentCellData[indexPath.row].profileImage, text: commentCellData[indexPath.row].text)
        
        // Configure the cell
//        cell.configureCell(name: "Jhennyfer Oliveira", image: UIImage(imageLiteralResourceName:"Experiences"), text: "The lower portion of the popover lets you set the item’s width or height. The Width and Height constraints default to the current canvas size, though you can type in different values.", numOfLikes: "0")
//
        cell.selectionStyle = .none
        return cell
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//           if segue.identifier == "addComment" {
//            _ = segue.destination as! CommentPostController
//           }
    
//    @objc func addTapped(){
////        print("go to post comment screen")
//        performSegue(withIdentifier: "commentScreenboardSegue", sender: nil)
//    }
//
//    @objc func backTapped(){
//        print("go to post screen")
//    }
    
}

