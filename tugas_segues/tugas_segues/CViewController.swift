//
//  CViewController.swift
//  tugas_segues
//
//  Created by Naufal Fachreza on 25/10/22.
//

import UIKit

class CViewController: UIViewController {

    @IBOutlet weak var tittleButton: UIButton!
    var colorPicker: ColorPicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title = "This is \(colorPicker?.colorName ?? "")"
        tittleButton.setTitle(title, for: .normal)
        self.view.backgroundColor = colorPicker?.color

        
    }
    
    @IBAction func backToHomeTapped(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    

}
