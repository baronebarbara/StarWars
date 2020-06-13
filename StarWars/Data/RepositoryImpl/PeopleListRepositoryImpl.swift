//
//  PeopleListRepositoryImpl.swift
//  StarWars
//
//  Created by Bárbara Barone - BBA on 13/06/20.
//  Copyright © 2020 Bárbara Barone - BBA. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class PeopleListrepositoryImpl: PeopleListRepository {
    
    var peopleService = PeopleService()
    
    func getPeopleList() -> Single<[People]> {
        let list: Single<BaseAPIResponse> = peopleService.getDecodedResponse()
        return list.map { (uncleanPeople) in
            return uncleanPeople.mapToPeople()
        }
    }
    
    
}
