//
//  ViewController.swift
//  Decorator
//
//  Created by Вячеслав Квашнин on 18.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceCar: UILabel! {
        didSet {
            priceCar.text = String(mercedes.getPrice()) + "$"
        }
    }
    @IBOutlet weak var typeCar: UILabel!
    
    var mercedes: MercedesProtocol = Mercedes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            mercedes = Mercedes()
            priceCar.text = String(mercedes.getPrice()) + "$"
            typeCar.text = mercedes.getTitle()
        case 1:
            mercedes = Mercedes()
            mercedes = AlloyWheels(decorator: mercedes)
            priceCar.text = String(mercedes.getPrice())
            typeCar.text = mercedes.getTitle()
        case 2:
            mercedes = Mercedes()
            mercedes = PanoramicRoof(decorator: mercedes)
            priceCar.text = String(mercedes.getPrice())
            typeCar.text = mercedes.getTitle()
        default:
            break
        }
    }
    
}

