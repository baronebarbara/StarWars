//
//  PeopleDIContainer.swift
//  StarWars
//
//  Created by Bárbara Barone - BBA on 13/06/20.
//  Copyright © 2020 Bárbara Barone - BBA. All rights reserved.
//

import Foundation

protocol PeopleDIContainerProtocol {
    func makePeopleViewController(people: [People]) -> PeopleTableViewController
}

class PeopleDIContainer: PeopleDIContainerProtocol {
    
    func makePeopleViewController(people: [People]) -> PeopleTableViewController {
        return PeopleTableViewController.instantiate(viewModel: PeopleTableViewModel(peopleList: people), DIProtocol: self)
    }
}
