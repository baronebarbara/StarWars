//
//  BaseAPIResponse.swift
//  StarWars
//
//  Created by Bárbara Barone - BBA on 13/06/20.
//  Copyright © 2020 Bárbara Barone - BBA. All rights reserved.
//

import Foundation

struct BaseAPIResponse: Codable {
    let results: [PeopleAPIResponse]
}

extension BaseAPIResponse {
    func mapToPeople() -> [People] {
        var peopleList: [People] = []
        self.results.forEach { (people) in
            peopleList.append(People(name: people.name))
        }
        return peopleList
    }
}
