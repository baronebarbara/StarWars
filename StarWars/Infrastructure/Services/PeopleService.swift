//
//  PeopleService.swift
//  StarWars
//
//  Created by Bárbara Barone - BBA on 13/06/20.
//  Copyright © 2020 Bárbara Barone - BBA. All rights reserved.
//

import Foundation

class PeopleService: MoyaService {
    override var baseURL: URL {
        return URL(string: "https://swapi.dev/api/")!
    }
    
    override var path: String {
        return "people"
    }
}
