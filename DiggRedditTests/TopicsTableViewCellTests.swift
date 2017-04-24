//
//  TopicsTableViewCellTests.swift
//  DiggReddit
//
//  Created by Le Tai on 4/24/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

import XCTest
@testable import DiggReddit

class TopicsTableViewCellTests: XCTestCase {
    
    var cell: TopicsTableViewCell!
    var topic: TopicsTableViewCellModel!
    
    override func setUp() {
        super.setUp()
        cell = UIView.load(nibName: Constant.TopicsTableViewCell.ReuseIdentifier) as! TopicsTableViewCell
        topic = TopicsTableViewCellModel(topic: Topic(id: 1, title: "This is new topic", numberOfUpvotes: 199, numberOfDownvotes: 200))
    }
    
    func testSetTopic() {
        cell.set(topic: topic)
        XCTAssertEqual(cell.titleLabel.text, topic.title)
        XCTAssertEqual(cell.downvoteButton.title(for: .normal), topic.numberOfDownvotes)
        XCTAssertEqual(cell.upvoteButton.title(for: .normal), topic.numberOfUpvotes)
    }
}
