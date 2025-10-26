//
//  ViewController.swift
//  test
//
//  Created by d m on 18.10.2025.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var buttonSecret: UIButton!
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        let val = sender.value
        valueLabel.text = String(format: "%.2f", val*100)
        
        if val > 0.5 {
            buttonSecret.isEnabled = true
        } else {
            buttonSecret.isEnabled = false

        }
    
        print("Куйня22222")
        
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        let alert = UIAlertController(
                title: "Вопрос",
                message: "Вы уверены, что хотите продолжить?",
                preferredStyle: .alert
            )
            
            // кнопка "Нет" — просто закрывает окно
            let noAction = UIAlertAction(title: "Нет", style: .cancel, handler: nil)
            
            // кнопка "Да" — выполняет действие
            let yesAction = UIAlertAction(title: "Да", style: .default) { _ in
                // Здесь твоё действие
                self.valueLabel.text = "Вы выбрали Да 👍"
            }
            
            // добавляем обе кнопки
            alert.addAction(noAction)
            alert.addAction(yesAction)
            
            // показываем окно
            present(alert, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

