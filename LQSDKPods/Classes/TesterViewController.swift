//
//  TesterViewController.swift
//  LQSDKPods_Tests
//
//  Created by 柳清 on 2021/2/4.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import ReactorKit
import RxCocoa

class TesterViewController: UIViewController,View {
    var disposeBag: DisposeBag = DisposeBag()
    
    typealias Reactor = TesterViewControllerReactor
    
    private var testButton:UIButton={
       let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Click", for: .normal)
        button.titleLabel?.textColor = .black
        return button
    }()
    
    init(reactor:Reactor) {
        defer {
            self.reactor = reactor
        }
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func bind(reactor: TesterViewControllerReactor) {
        self.testButton.rx.tap
            .map{Reactor.Action.reload}
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
        
        reactor.state.map{$0.msg}.distinctUntilChanged().subscribe(onNext: {[weak self](msg)in
            print(msg)
        }).disposed(by: disposeBag)
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
