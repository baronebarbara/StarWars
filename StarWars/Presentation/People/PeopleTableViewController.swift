//
//  TableViewController.swift
//  StarWars
//
//  Created by Bárbara Barone - BBA on 11/06/20.
//  Copyright © 2020 Bárbara Barone - BBA. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class PeopleTableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    private var _DIProtocol: PeopleDIContainerProtocol?
    
    var viewModel: PeopleTableViewModel!
    var disposeBag = DisposeBag()
    
    public class func instantiate(viewModel:PeopleTableViewModel, DIProtocol:PeopleDIContainer) -> PeopleTableViewController {
        let storyboard = UIStoryboard.instantiate(name: .peopleTable, bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: PeopleTableViewController.storyboardIdentifier) as! PeopleTableViewController
        view.viewModel = viewModel
        view._DIProtocol = DIProtocol
        return view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "PeopleTableViewCell", bundle: nil), forCellReuseIdentifier: "PeopleTableViewCell")
        bind()
    }
    
    private func bind() {
        viewModel.peopleList.drive(tableView.rx.items(cellIdentifier: "PeopleTableViewCell", cellType: PeopleTableViewCell.self)) { index, model, cell in
            cell.configure(model: model)
        }.disposed(by: disposeBag)
    }

}

    



