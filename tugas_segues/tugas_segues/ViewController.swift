//
//  ViewController.swift
//  tugas_segues
//
//  Created by Naufal Fachreza on 25/10/22.
//

import UIKit

class ViewController: UIViewController {

    var colorPicker: ColorPicker?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func redButtonTappde(_ sender: UIButton) {
        colorPicker = ColorPicker(colorName: "Red", color: .red)
        performSegue(withIdentifier: "navigateToB" , sender: nil)
    }
    
    @IBAction func greenButtonTapped(_ sender: UIButton) {
        colorPicker = ColorPicker(colorName: "Green", color: .green)
        performSegue(withIdentifier: "navigateToB" , sender: nil)
    }
    
    @IBAction func blueButtonTapped(_ sender: UIButton) {
        colorPicker = ColorPicker(colorName: "Blue", color: .blue)
        performSegue(withIdentifier: "navigateToB" , sender: nil)
    }
    
    @IBAction func orangeButtonTapped(_ sender: UIButton) {
        colorPicker = ColorPicker(colorName: "Green", color: .orange)
        performSegue(withIdentifier: "navigateToB" , sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? BViewController
        vc?.colorPicker = self.colorPicker
    }
}

