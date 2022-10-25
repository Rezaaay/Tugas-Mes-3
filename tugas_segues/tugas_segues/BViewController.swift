//
//  BViewController.swift
//  tugas_segues
//
//  Created by Naufal Fachreza on 25/10/22.
//

import UIKit

class BViewController: UIViewController {
    var colorPicker: ColorPicker?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = colorPicker?.color
    }
    
    @IBAction func firstButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "navigateToC", sender: nil)
    }
    @IBAction func backHomeTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? CViewController
        vc?.colorPicker = self.colorPicker
    }

}

