//
//  NovaOcorrenciaViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 22/06/23.
//

import Foundation
import UIKit

class NovaOcorrenciaViewController: ViewControllerDefault{
    //MARK: - Closeres
    
    lazy var novaOcorrenciaView: NovaOcorrenciaView = {
        let novaOcorrenciaView = NovaOcorrenciaView()
        novaOcorrenciaView.onCameraTap = {
            EscolherImagem().selecionadorImagem(self) { imagem in novaOcorrenciaView.setImage(image: imagem)
            }
        }
        return novaOcorrenciaView
        
    }()
    
    override func loadView() {
        self.view = novaOcorrenciaView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nova Ocorrência"
        
        
    }
}
