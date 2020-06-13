//
//  UIStoryboard.swift
//  StarWars
//
//  Created by Bárbara Barone - BBA on 12/06/20.
//  Copyright © 2020 Bárbara Barone - BBA. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    static func instantiate(name: Storyboards, bundle: Bundle?) -> UIStoryboard {
        return UIStoryboard(name: name.rawValue, bundle: bundle)
    }
}
