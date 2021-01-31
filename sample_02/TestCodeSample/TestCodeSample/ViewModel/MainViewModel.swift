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
// MARK: - Private Method
extension MainViewModel {
}
