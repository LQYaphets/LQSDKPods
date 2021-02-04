//
//  TesterViewControllerReactor.swift
//  LQSDKPods_Tests
//
//  Created by 柳清 on 2021/2/4.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import ReactorKit

class TesterViewControllerReactor: Reactor {
    
    enum Action {
        case reload
    }
    
    enum Mutation {
        case setMsg(String?)
    }
    
    struct State {
        var msg:String?
    }
    
    var initialState: State
    init() {
        self.initialState = State()
    }
    
    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .reload:
            return .just(.setMsg("\(arc4random())-LQ"))
        }
    }
    
    func reduce(state: State, mutation: Mutation) -> State {
        var state = state
        switch mutation {
        case .setMsg(let msg):
            state.msg = msg
        }
        return state
    }
    
}
