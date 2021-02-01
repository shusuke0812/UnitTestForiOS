//
//  MainViewModel.swift
//  TestCodeSample
//
//  Created by Shusuke Ota on 2021/1/31.
//

import Foundation

protocol MainViewModelDelegate: AnyObject {
}

class MainViewModel {
    /// デリゲート
    weak var  delegate: MainViewModelDelegate?
}
// MARK: - Calc Method
extension MainViewModel {
    /// 足算
    func add(_ x: Int, _ y: Int) -> Int {
        return x + y
    }
    /// 引算
    func subtract(_ x: Int, _ y: Int) -> Int {
        return x - y
    }
    /// 掛算
    func multiple(_ x: Int, _ y: Int) -> Int? {
        if y == 0 {
            return nil
        } else {
            return x * y
        }
    }
    /// 割算
    func division(_ x: Int, _ y: Int) -> Int {
        return x / y
    }
}
