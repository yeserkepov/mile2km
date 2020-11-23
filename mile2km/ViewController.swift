//
//  ViewController.swift
//  mile2km
//
//  Created by User on 11/20/20.
//

import UIKit


class ViewController: UIViewController {
    
    
    var arrayOne = ["LONG MEASURES", "WEIGHT"]
    var arrayTwo = ["km to mi","mi to km"]
    var arrayThree = ["kg to lb","lb ot kg"]
    


    @IBOutlet weak var valueInput: UITextField!
        
    @IBOutlet weak var labelOutput: UILabel!
    
    @IBAction func calculateButton(_ sender: Any) {
        if metricSegmentControl.selectedSegmentIndex == 0 && metricSegmentControl2.selectedSegmentIndex == 0 {
            let result = (Float(valueInput.text ?? "0") ?? 0) * 0.621
            labelOutput.text = String(result)
        }
        
        if metricSegmentControl.selectedSegmentIndex == 0 && metricSegmentControl2.selectedSegmentIndex == 1 {
            let result = (Float(valueInput.text ?? "0") ?? 0) / 0.621
            labelOutput.text = String(result)
        }
        
        if metricSegmentControl.selectedSegmentIndex == 1 && metricSegmentControl2.selectedSegmentIndex == 0 {
            let result = (Float(valueInput.text ?? "0") ?? 0) * 0.454
            labelOutput.text = String(result)
            
        }
        
        if metricSegmentControl.selectedSegmentIndex == 1 && metricSegmentControl2.selectedSegmentIndex == 1 {
            let result = (Float(valueInput.text ?? "0") ?? 0) / 0.454
            labelOutput.text = String(result)
        }
    }
    
    @IBOutlet weak var metricSegmentControl: UISegmentedControl!
    

    @IBOutlet weak var metricSegmentControl2: UISegmentedControl!
    
    
    @IBOutlet weak var calcButton: UIButton!
    
    @IBAction func choosenMetric(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            //print(123)
            valueInput.isHidden = false
            metricSegmentControl2.isHidden = false
            calcButton.isHidden = false
            metricSegmentControl2.removeAllSegments()
            for (index, title) in arrayTwo.enumerated(){
                metricSegmentControl2.insertSegment(withTitle: title, at: index, animated: false)
            }
//            metricSegmentControl2.insertSegment(withTitle: "KM", at: 0, animated: true)
//            metricSegmentControl2.insertSegment(withTitle: "M", at: 1, animated: true)
        } else if sender.selectedSegmentIndex == 1{
            //print(456)
            valueInput.isHidden = false
            metricSegmentControl2.isHidden = false
            calcButton.isHidden = false
            metricSegmentControl2.removeAllSegments()
            for (index, title) in arrayThree.enumerated(){
                metricSegmentControl2.insertSegment(withTitle: title, at: index, animated: false)
            }

        }
    }
    
    @IBAction func edinicyIzmereniya(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        insertValues()
        valueInput.isHidden = true
        metricSegmentControl2.isHidden = true
        calcButton.isHidden = true
        
    }
    
    func insertValues () {
        metricSegmentControl.removeAllSegments()
        for (index, title) in arrayOne.enumerated() {
        print(index, title)
        metricSegmentControl.insertSegment(withTitle: title, at: index, animated: false)

        }
    }
    
//    func hider () {
//        
//    }
}

