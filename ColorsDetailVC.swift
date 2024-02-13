//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Thelma on 12/02/2024.
//

import UIKit

class ColorsDetailVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? UIColor.white

        // Do any additional setup after loading the view.
    }
    
    var color: UIColor?
}
