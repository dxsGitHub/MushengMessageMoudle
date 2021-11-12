//
//  MSMessageViewController.swift
//  MushengMessageMoudle
//
//  Created by dss on 2021/11/12.
//

import UIKit

public

class MSMessageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var listV: UITableView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        setupInterface()
    }


    func setupInterface() {
        listV = UITableView.init(frame: self.view.frame, style: .plain)
        listV.backgroundColor = .white
        listV.separatorStyle = .none
        listV.delegate = self
        listV.dataSource = self
        listV.register(MSMsgConversationCell.classForCoder(), forCellReuseIdentifier: "MSMsgConversationCell")
        self.view.addSubview(listV)
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MSMsgConversationCell", for: indexPath) as! MSMsgConversationCell
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = MSMsgChatViewController.init()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
