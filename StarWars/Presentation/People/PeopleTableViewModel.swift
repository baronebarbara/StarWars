//
//  PeopleTableViewModel.swift
//  StarWars
//
//  Created by Bárbara Barone - BBA on 13/06/20.
//  Copyright © 2020 Bárbara Barone - BBA. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

protocol PeopleListViewModelProtocol {
    var peopleList: Driver<[People]> { get }
}

class PeopleTableViewModel: PeopleListViewModelProtocol {
    private var peopleListRelay: BehaviorRelay<[People]> = BehaviorRelay(value: [])
    
    var peopleList: Driver<[People]> { peopleListRelay.asDriver() }
    
    init(peopleList: [People]) {
        self.peopleListRelay.accept(peopleList)
    }
}
