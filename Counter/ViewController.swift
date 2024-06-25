import UIKit

class ViewController: UIViewController {

    var count: Int = 0
    @IBOutlet private weak var increaseButton: UIButton!
    @IBOutlet private weak var counterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = "Значение счётчика: " + String(count)
    }
    @IBAction private func increaseCounter(_ sender: Any) {
        count += 1
        counterLabel.text = "Значение счётчика: " + String(count)
    }
    

    
}

