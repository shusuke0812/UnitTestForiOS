//
//  TestCodeSampleTests.swift
//  TestCodeSampleTests
//
//  Created by Shusuke Ota on 2021/1/31.
//

import XCTest
@testable import TestCodeSample

class MainViewModelTests: XCTestCase {
    
    private let mainViewModel = MainViewModel()
    
    // テスト実行前に呼ばれる（セットアップ）
    override func setUpWithError() throws {
    }
    // テスト終了後に呼ばれる（後処理）
    override func tearDownWithError() throws {
    }
}
// MARK: - Test Method
extension MainViewModelTests {
    /// 足算メソッドのテスト
    func testAdd() {
        let result = mainViewModel.add(1, 2)
        XCTAssertEqual(result, 3)
    }
}
