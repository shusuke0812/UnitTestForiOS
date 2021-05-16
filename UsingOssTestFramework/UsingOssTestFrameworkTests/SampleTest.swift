//
//  SampleTest.swift
//  UsingOssTestFrameworkTests
//
//  Created by Shusuke Ota on 2021/5/16.
//

import Quick
import Nimble

@testable import UsingOssTestFramework

class QuickCalculatorTests: QuickSpec {
    
    private var mainViewModel: MainViewModel!
    
    override func spec() {
        
        self.mainViewModel = MainViewModel()
        
        describe("add()") {
            it("1 + 2 = 3") {
                expect(self.mainViewModel.add(1,2)).to(equal(3))
            }
        }
    }
}
