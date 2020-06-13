//
//  PeopleListUseCase.swift
//  StarWars
//
//  Created by Bárbara Barone - BBA on 13/06/20.
//  Copyright © 2020 Bárbara Barone - BBA. All rights reserved.
//

import Foundation
import RxSwift

class PeopleListUseCase {
    
    var peopleListRepo: PeopleListRepository
    
    var peopleResponse: [People] = []
    
    init(peopleListRepo: PeopleListRepository) {
        self.peopleListRepo = peopleListRepo
    }
}
 
