import XCTest

import helloPackageTests

var tests = [XCTestCaseEntry]()
tests += helloPackageTests.allTests()
XCTMain(tests)
