//
//  ViewController.swift
//  AutoLayout_Chart
//
//  Created by 양팀장 on 2019. 10. 26..
//  Copyright © 2019년 양팀장. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
    func changeMultiplier (value: CGFloat) -> NSLayoutConstraint {
        
        // 기존 costraint 비활성화시킴
        NSLayoutConstraint.deactivate([self])
        
         let newConstraint = NSLayoutConstraint.init(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: self.secondAttribute, multiplier: value, constant: self.constant)
        
        // 기존 속성들은 그대로 복사
        newConstraint.priority = self.priority
        newConstraint.shouldBeArchived = self.shouldBeArchived
        newConstraint.identifier = self.identifier
        
        // 지금 만든 것은 활성화
        NSLayoutConstraint.activate([newConstraint])
        
        return newConstraint
    }
}


class ViewController: UIViewController {

    @IBOutlet weak var graph1Height: NSLayoutConstraint!
    @IBOutlet weak var graph2Height: NSLayoutConstraint!
    @IBOutlet weak var graph3Height: NSLayoutConstraint!
    @IBOutlet weak var graph4Height: NSLayoutConstraint!
    @IBOutlet weak var graph5Height: NSLayoutConstraint!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //graph1Height.constant = 500
        //graph1Height.multiplier = 0.5
        

        
        
    }

    
    @IBAction func style1(_ sender: Any) {
        
        UIView.animate(withDuration: 0.7) {
            self.graph1Height = self.graph1Height.changeMultiplier(value: 0.9)
            self.graph2Height = self.graph2Height.changeMultiplier(value: 0.7)
            self.graph3Height = self.graph3Height.changeMultiplier(value: 0.5)
            self.graph4Height = self.graph4Height.changeMultiplier(value: 0.3)
            self.graph5Height = self.graph5Height.changeMultiplier(value: 0.1)
            self.view.layoutIfNeeded()
        }
        /*UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.graph1Height = self.graph1Height.changeMultiplier(value: 0.9)
            self.graph2Height = self.graph2Height.changeMultiplier(value: 0.7)
            self.graph3Height = self.graph3Height.changeMultiplier(value: 0.5)
            self.graph4Height = self.graph4Height.changeMultiplier(value: 0.3)
            self.graph5Height = self.graph5Height.changeMultiplier(value: 0.1)
            
            self.view.layoutIfNeeded()      // 화면갱신 함수
            
        }, completion: { (completion) in
            // 애니메이션 끝나는 시점
            self.dismiss(animated: false, completion: nil)
        })*/
        

        
    }
    
    @IBAction func style2(_ sender: Any) {
        
        graph1Height = graph1Height.changeMultiplier(value: 0.1)
        graph2Height = graph2Height.changeMultiplier(value: 0.3)
        graph3Height = graph3Height.changeMultiplier(value: 0.7)
        graph4Height = graph4Height.changeMultiplier(value: 0.8)
        graph5Height = graph5Height.changeMultiplier(value: 0.3)
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }
    
}

