//
//  DetailProtocol.swift
//  CGAssessment
//
//  Created by Shyamala Ramanathan on 22/05/24.
//

import Foundation
import UIKit

protocol DetailViewToDetailPresenterProtocol : AnyObject{
    var view: DetailPresenterToDetailViewProtocol? { get set }
    var interactor: DetailPresenterToDetailInteractorProtocol? { get set }
    var router: DetailPresenterToDetailRouterProtocol? { get set }
   
    func getUniversityDetail(at index: Int)
}

protocol DetailPresenterToDetailInteractorProtocol : AnyObject{
    var presenter : DetailInteractorToDetailPresenterProtocol? {get set}
    func getUniversityDetail(at index: Int)
}

protocol DetailInteractorToDetailPresenterProtocol: AnyObject {
    func UnivercityDetailFetched(data : ListModel)
}

protocol DetailPresenterToDetailViewProtocol : AnyObject{
    func showUniversityDetail(data : ListModel)
}

protocol DetailPresenterToDetailRouterProtocol: AnyObject {
    static func createModule() -> UIViewController
    
    var presenter: DetailRouterToDetailPresenterProtocol? { get set }
}

protocol DetailRouterToDetailPresenterProtocol: AnyObject{
    
}
