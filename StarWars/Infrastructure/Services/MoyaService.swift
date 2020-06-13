//
//  MoyaService.swift
//  StarWars
//
//  Created by Bárbara Barone - BBA on 13/06/20.
//  Copyright © 2020 Bárbara Barone - BBA. All rights reserved.
//

import Foundation
import Moya
import RxSwift
import RxCocoa

public class APIProvider<Target: TargetType>: MoyaProvider<Target> {
    init() {
        super.init(plugins: [NetworkLoggerPlugin()])
    }
}

public class MoyaService:TargetType {
    public static let emptyURL = URL(string: "")!
    
    public var baseURL: URL {
        return MoyaService.emptyURL
    }
    
    public var path: String {
        return ""
    }
    
    public var method: Moya.Method {
        return Moya.Method.get
    }
    
    public var sampleData: Data {
        return Data()
    }
    
    public var task: Task {
        return .requestPlain
    }
    
    public var headers: [String : String]? {
        return [:]
    }
    
    fileprivate var apiProvider = APIProvider<MoyaService>()
}

public extension MoyaService {
    func getDecodedResponse<T:Codable>() -> Single<T> {
        return Single.create { (single) in
            let request = self.apiProvider.rx.request(self)
            let dispose = request.subscribe(onSuccess: { (response) in
                let decoder = JSONDecoder()
                do {
                    let object = try decoder.decode(T.self, from: response.data)
                    single(.success(object))
                } catch {
                    print(error)
                }
            }, onError: {(error) in
                single(.error(error))
            })
            return dispose
        }
    }
}
