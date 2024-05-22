//
//  DetailPresenter.swift
//  CGAssessment
//
//  Created by Shyamala Ramanathan on 22/05/24.
//

import Foundation
import UIKit

class DetailPresenter: DetailViewToDetailPresenterProtocol {
   
    
    var view: DetailPresenterToDetailViewProtocol?
    
    var interactor: DetailPresenterToDetailInteractorProtocol?
    
    var router: DetailPresenterToDetailRouterProtocol?
    
    func getUniversityDetail(at index: Int){
        interactor?.getUniversityDetail(at: index)
    }
    
}

extension DetailPresenter : DetailInteractorToDetailPresenterProtocol{
    func UnivercityDetailFetched(data: ListModel) {
        view?.showUniversityDetail(data: data)
    }
}

extension DetailPresenter : DetailRouterToDetailPresenterProtocol{
    
}
