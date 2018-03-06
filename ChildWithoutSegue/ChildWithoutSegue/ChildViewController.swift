import UIKit

class ChildViewController: UIViewController {

    var word: String! {
        didSet {
            wordLabel.text = word
        }
    }

    @IBOutlet weak var wordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
