//
//  DetailViewController.swift
//  CCRouterDemo
//
//  Created by chai.chai on 2019/4/4.
//  Copyright © 2019 chai.chai. All rights reserved.
//

import UIKit
import CCRouter

class DetailViewController: UIViewController {
    let gender: Int
    let productId: Int

    init(title: String,
         gender: Int,
         productId: Int) {
        self.gender = gender
        self.productId = productId

        super.init(nibName: nil, bundle: nil)

        self.title = title
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let context = RouterContext(title: "Shopping Bag", parameters: ["gender": 0, "productId": 1], navigationType: .mode)
        Router.shared.route(RouterPattern.shoppingBag, context: context)
    }
}
