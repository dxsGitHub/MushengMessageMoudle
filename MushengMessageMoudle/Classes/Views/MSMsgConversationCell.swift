//
//  MSMsgConversationCell.swift
//  MushengMessageMoudle
//
//  Created by dss on 2021/11/12.
//

import UIKit
import SnapKit

class MSMsgConversationCell: UITableViewCell {

    ///头像
    private var avatarV: UIImageView!
    ///昵称
    private var nickLab: UILabel!
    ///文本提示
    private var textLab: UILabel!
    ///时间戳
    private var dateLab: UILabel!
    ///底部分割线
    private var lineV: UIView!
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        setupInterface()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setupInterface() {
        avatarV = UIImageView.init(frame: .zero)
        avatarV.backgroundColor = .red
        avatarV.layer.masksToBounds = true
        avatarV.layer.cornerRadius = 5
        self.contentView.addSubview(avatarV)
        avatarV.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            //make.top.bottom.equalToSuperview().inset(5)
            make.left.equalToSuperview().inset(15)
            make.width.height.equalTo(50)
        }
        
        nickLab = UILabel.init(frame: .zero)
        nickLab.configWith(text: "慕声001", textColor: .darkGray, alignment: .left, font: UIFont.boldSystemFont(ofSize: 16), lines: 1)
        self.contentView.addSubview(nickLab)
        nickLab.snp.makeConstraints { make in
            make.left.equalTo(avatarV.snp.right).offset(8)
            make.top.equalTo(avatarV).offset(5)
        }
        
        textLab = UILabel.init(frame: .zero)
        textLab.configWith(text: "有一条消息", textColor: .gray, alignment: .left, font: UIFont.systemFont(ofSize: 14), lines: 1)
        self.contentView.addSubview(textLab)
        textLab.snp.makeConstraints { make in
            make.left.equalTo(avatarV.snp.right).offset(5)
            make.bottom.equalTo(avatarV).inset(3)
        }
        
        dateLab = UILabel.init(frame: .zero)
        dateLab.configWith(text: "12:00", textColor: .lightGray, alignment: .right, font: UIFont.systemFont(ofSize: 10), lines: 1)
        self.contentView.addSubview(dateLab)
        dateLab.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(15)
            make.centerY.equalTo(nickLab)
        }
        
        lineV = UIView.init(frame: .zero)
        lineV.backgroundColor = .gray
        self.contentView.addSubview(lineV)
        lineV.snp.makeConstraints { make in
            make.left.equalTo(avatarV.snp.right).offset(5)
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
            make.height.equalTo(0.5)
        }
    }
}
