//
//  TestCodeSampleTests.swift
//  TestCodeSampleTests
//
//  Created by Shusuke Ota on 2021/1/31.
//

/**
 * NOTE:
 *  - @testable属性を使うことでモジュールを跨いでinternalな要素にアクセス可能となる（privateは不可）
 *  - testメソッドは名前を `test***` とtestを先頭につける必要がある
 */

import XCTest
@testable import TestCodeSample

class MainViewModelTests: XCTestCase {
    /// ViewModel
    private var mainViewModel: MainViewModel!
    
    // テスト実行前に呼ばれる（セットアップ）
    override func setUpWithError() throws {
        self.mainViewModel = MainViewModel()
    }
    // テスト終了後に呼ばれる（後処理）
    override func tearDownWithError() throws {
    }
}
// MARK: - Test Method
extension MainViewModelTests {
    /// 足算メソッドのテスト（テスト失敗時のエラーメッセージ付）
    func testAdd() {
        let result = mainViewModel.add(1, 2)
        XCTAssertEqual(result, 3, "1 + 2 = 3 であること")
    }
    /// 引算メソッドのテスト
    func testSubtract() {
        let result = mainViewModel.subtract(3, 1)
        XCTAssertEqual(result, 2)
    }
    /// 掛算メソッドのテスト
    func testMultiple() {
        let result = mainViewModel.multiple(2, 3)
        XCTAssertEqual(result, 6)
    }
    /// 割算メソッドのテスト
    func testDivision() {
        XCTContext.runActivity(named: "通常の割算") { _ in
            XCTAssertEqual(mainViewModel.division(4, 2), 2)
            XCTAssertEqual(mainViewModel.division(6, 2), 3)
        }
        XCTContext.runActivity(named: "0割") { _ in
            XCTAssertNil(mainViewModel.division(4, 0))
        }
    }
    /// 正の数判定メソッドのテスト
    func testIsPositive() {
        XCTAssertTrue(mainViewModel.isPositive(0))
        XCTAssertTrue(mainViewModel.isPositive(1))
    }
}
