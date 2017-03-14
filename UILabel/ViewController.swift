//
//  ViewController.swift
//  UILabel
//
//  Created by 蜗牛 on 2017/3/14.
//  Copyright © 2017年 关于蜗牛：一枚九零后码农  蜗牛-----QQ:3197857495-----李富棚  个人微信：woniu1308822159  微信公众号：woniuxueios  简书：蜗牛学IOS  地址：http://www.jianshu.com/users/a664a9fcb096/latest_articles  简书专题：蜗牛学IOS  地址：http://www.jianshu.com/collection/bfcf49bf5d27    GitHub:https://github.com/LiFuPeng     开源中国：https://my.oschina.net/SnailLi  蜗牛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var Label : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        Label=UILabel(frame :CGRect (x:0,y:250,width:UIScreen.main.bounds.width,height:50))
        //字体对齐方式
        Label.textAlignment=NSTextAlignment.center
        Label.text="非常感谢公司给我一个学习的时间"
        //字体颜色
        Label.textColor=UIColor(red: 100/255, green: 100/255, blue: 100/255, alpha: 1.0)
        //字体大小设置
        /**
         systemFontOfSize(20) -> UIFont         (文字大小)
         boldSystemFontOfSize(20) -> UIFont     (加粗类型)
         italicSystemFontOfSize(20) -> UIFont    (斜体类型)
         */
        Label.font=UIFont.boldSystemFont(ofSize: 20)
        //Label.font=UIFont.systemFont(ofSize: 20)
        //Label.font = UIFont(name: "Zapfino", size: 20)
        //背景颜色
        Label.backgroundColor = UIColor.yellow
        //阴影颜色
        Label.shadowColor = UIColor.red
        //阴影偏移量
        //        Label.shadowOffset = CGPoint(origin:-5,size:5)
        //文字过长省略方式
        Label.lineBreakMode = .byTruncatingMiddle
        //文字大小自适应
        Label.adjustsFontSizeToFitWidth = true
        //显示多行
        Label.numberOfLines = 0
        //文本高亮
        Label.isHighlighted = true
        //高亮颜色
        Label.highlightedTextColor = UIColor.green
        //label圆角属性
        Label.layer.masksToBounds = true;
        //label圆角半径
        Label.layer.cornerRadius = 10;
        //label圆角边框颜色
        Label.layer.borderColor = UIColor.blue.cgColor;
        //label圆角边框宽度
        Label.layer.borderWidth = 1;
        // label的特殊属性
        /**
         case ByWordWrapping // Wrap at word boundaries, default
         case ByCharWrapping // Wrap at character boundaries
         case ByClipping // Simply clip
         case ByTruncatingHead // Truncate at head of line: "...wxyz"
         case ByTruncatingTail // Truncate at tail of line: "abcd..."
         case ByTruncatingMiddle // Truncate middle of line:  "ab...yz"
         */
        
        Label.lineBreakMode=NSLineBreakMode.byTruncatingTail  //隐藏尾部并显示省略号
        //        Label.lineBreakMode=NSLineBreakMode.byTruncatingMiddle  //隐藏中间部分并显示省略号
        //        Label.lineBreakMode=NSLineBreakMode.byTruncatingHead  //隐藏头部并显示省略号
        //        Label.lineBreakMode=NSLineBreakMode.byClipping //截去多余部分也不显示省略号
        view.addSubview(Label)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

