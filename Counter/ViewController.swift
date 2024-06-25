import UIKit
import Foundation

class ViewController: UIViewController {

    private var count: Int = 0
    private let dateFormatter = DateFormatter()
    
    @IBOutlet private weak var increaseButton: UIButton!
    @IBOutlet private weak var decreaseButton: UIButton!
    @IBOutlet private weak var zeroButton: UIButton!
    @IBOutlet private weak var logTextView: UITextView!
    @IBOutlet private weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logTextView.isEditable = false
        logTextView.isScrollEnabled = true
        dateFormatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
        dateFormatter.locale = Locale(identifier: "ru_RU")
        increaseButton.backgroundColor = UIColor.red
        decreaseButton.backgroundColor = UIColor.blue
        logTextView.text += "История изменений:\n"
        counterLabel.text = "Значение счётчика: " + String(count)
    }
    
    @IBAction private func increaseCounter(_ sender: Any) {
        count += 1
        counterLabel.text = "Значение счётчика: " + String(count)
        logTextView.text += "[" + dateFormatter.string(from: Date()) + "]: значение изменено на +1\n"
    }
    
    @IBAction private func decreaseCounter(_ sender: Any) {
        if count > 0 {
            count -= 1
            counterLabel.text = "Значение счётчика: " + String(count)
            logTextView.text += "[" + dateFormatter.string(from: Date()) + "]: значение изменено на -1\n"
        }
        else{
            logTextView.text += "[" + dateFormatter.string(from: Date()) + "]: попытка уменьшить значение счётчика ниже 0\n"
        }
    }
    
    @IBAction private func zeroCounter(_ sender: Any) {
        count = 0
        counterLabel.text = "Значение счётчика: " + String(count)
        logTextView.text += "[" + dateFormatter.string(from: Date()) + "]: значение сброшено\n"
    }
    
}

