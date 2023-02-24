//
//  ViewController.swift
//  CounterApp
//
// Григорий Болотов  on 24.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
// Cвязываем объекты из сториборда с кодом
    @IBOutlet weak var buttonCounter: UIButton!
    @IBOutlet weak var labelCounter: UILabel!
    
//создаем title для элементов отдельно что бы в случае правок удобно было менять
    private var labelCounterText: String = "Значение счетчика: "
    private var counter: Int = 0
    private var buttonText: String = "Тык сюда"
    
    override func viewDidLoad() {
        super.viewDidLoad()
//изменяем title элементов
        labelCounter.text = labelCounterText + "\(counter)"
        buttonCounter.setTitle(buttonText, for: .normal)
        
    }
//Связываем фукционал кнопки с кодом и прописываем что кнопка должна выполнять
    @IBAction func buttonCounterTouchUpInside(_ sender: Any) {
        counter += 1
        self.labelCounter.text = labelCounterText + "\(counter)"
    }
    
}

