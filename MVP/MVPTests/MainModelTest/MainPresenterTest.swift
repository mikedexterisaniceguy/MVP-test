//
//  MainPresenterTest.swift
//  MVPTests
//
//  Created by 123 on 27.01.23.
//

import XCTest
@testable import MVP

class MockView: MainViewProtocol {
    var textTest: String!
    var colorTest: UIColor!
    
    func setGreeting(greeting: String) {
        self.textTest = greeting
    }
    
    func setColor(color: UIColor) {
        self.colorTest = color
    }
    
    
}

final class MainPresenterTest: XCTestCase {

    var view: MockView!
    var model: Person!
    var presenter: MainPresenter!
    
    override func setUpWithError() throws {
        view = MockView()
        model = Person(firstName: "Baz", lastName: "Bar", color: UIColor.systemBlue)
        presenter = MainPresenter(view: view, person: model)
    }

    override func tearDownWithError() throws {
        view = nil
        model = nil
        presenter = nil
    }
    
    func testModuleIsNotNil() {
        XCTAssertNotNil(view, "view is not nil")
        XCTAssertNotNil(model, "model is not nil")
        XCTAssertNotNil(presenter, "presenter is not nil")
    }
    
    func testView() {
        presenter.showGreeting()
        XCTAssertEqual(view.textTest, "Baz Bar")
    }
    
    func testPersonModel() {
        XCTAssertEqual(model.firstName, "Baz")
        XCTAssertEqual(model.lastName, "Bar")
        XCTAssertEqual(model.color, UIColor.systemBlue)
    }

}
