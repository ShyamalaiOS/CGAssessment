//
//  DetailRouter.swift
//  CGAssessment
//
//  Created by Shyamala Ramanathan on 22/05/24.
//

import Foundation
import UIKit

class DetailRouter: DetailPresenterToDetailRouterProtocol {
    var presenter: DetailRouterToDetailPresenterProtocol?
    
    
    static func createModule() -> UIViewController {
        guard let view = Utility.getViewController(storyboard: .Main, identifier: .DetailVC) as? DetailVC else { return UIViewController () }
        
        let presenter: DetailViewToDetailPresenterProtocol & DetailInteractorToDetailPresenterProtocol & DetailRouterToDetailPresenterProtocol = DetailPresenter()
        let interactor: DetailPresenterToDetailInteractorProtocol = DetailInteractor()
        let router: DetailPresenterToDetailRouterProtocol = DetailRouter()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.presenter = presenter
        router.presenter = presenter
        
        return view
    }
    
   
}
