//
//  NormalClass.swift
//  TestGeneralFramework
//
//  Created by 柳清 on 2021/2/3.
//

import Foundation

public class NormalClass:NSObject{
    
    public func pubPrint(msg:String){
        print("\(msg)--\(self.generalNum())")
    }
    
    func generalNum()->Int{
        return Int(arc4random())
    }
}
