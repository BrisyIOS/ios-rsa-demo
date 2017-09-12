//
//  ViewController.swift
//  Rsa加解密
//
//  Created by zhangxu on 2017/9/12.
//  Copyright © 2017年 zhangxu. All rights reserved.
//

import UIKit

let public_key = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC0G3juP6UveTElluwvqPvrKC9rJzHteI+F7Rt9znulaj4b7oj6M+SP8Kz9SejAjyLQzjJj8bX1FvKeN7SkD1zG66Eo/n9KUjNpWrJkEPyqQ+Zj5cbLFNjI5Dc+WH1EgvumqnrycRLc+AP8xVj5Cg2ZotFtXikVm9FJU3Xchn5YbwIDAQAB";


let private_key = "MIICeQIBADANBgkqhkiG9w0BAQEFAASCAmMwggJfAgEAAoGBALQbeO4/pS95MSWW7C+o++soL2snMe14j4XtG33Oe6VqPhvuiPoz5I/wrP1J6MCPItDOMmPxtfUW8p43tKQPXMbroSj+f0pSM2lasmQQ/KpD5mPlxssU2MjkNz5YfUSC+6aqevJxEtz4A/zFWPkKDZmi0W1eKRWb0UlTddyGflhvAgMBAAECgYEAnsSI+h0I1KyU8nn0gp8IU+f8xQysKpZYjsrRrTlULiFV1vGTtlwAZBLZq/53OyfynPbn3Mq6h+9OuMKKbwVL1mLYE67dYg+sipk4tDtLeJELIt+MZhRsqg7Or87vlJIkumrd0xCN1iOxse+CaApwU0N3DSc88VB4PDKhEyt59sECQQDqoU/sRvAo/qmtSSaOmPPZqF88YukewHCEV4Rg6uqhIE5p4WErORieaK2lJu/VvbHs9ugTb4JZgTSw2a8yA27ZAkEAxILk7wye8khuVIqyxuW5leHU5id4GtgigtLz9KHPMgVC8ukpRUeK8z8UWEZ+D375iuDYf/qR3sfqVL0511+EhwJBAMk/xgLfMd2n2bglt2m2beqyzcVI/bX/0ELjoktTFB9SS4/r3mGpnqE5HkA7LppCFFwxyAvrqH3HIn/Sp8AZS7kCQQCxZJv3c8Q0YNBAPyidxhkfRUrkLTMNwJh+0qHo7vzUYc2K7JIV+Txk00exXIlFwdDQ3qJx/ScbHgraTitd0dsXAkEAytwQGDc/O3NxFVnlYz2kRB/JZVFdwrALkrS3Wj8mRZljB43Tpi6jzYAd4wyX7uImiJcqmpIpommNqO7eDjM/QA==";

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let clearText = "欢迎查看Rsa加解密demo";
        let encryptData = RSAEncryptor.encryptString(clearText, publicKey: public_key)
        let decryptData = RSAEncryptor.decryptString(encryptData, privateKey: private_key);
        print("加密前：" + clearText);
        print("加密后：" + encryptData!);
        print("解密后：" + (decryptData ?? ""));
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

