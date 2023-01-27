//
//  Person.swift
//  MVP
//
//  Created by 123 on 27.01.23.
//

import Foundation
import UIKit

struct Comment: Decodable {
    let postId: Int
    let id: Int
    let name: String
    let email: String
    let body: String
}
