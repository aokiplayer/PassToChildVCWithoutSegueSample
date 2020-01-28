import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    @IBOutlet weak var segment: UISegmentedControl!

    @IBAction func showButtonTapped(_ sender: UIButton) {
        guard let childVC = children.first as? ChildViewController else { return }

        childVC.word = segment.titleForSegment(at: segment.selectedSegmentIndex)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let sb = UIStoryboard(name: "Main", bundle: nil)
        guard let childVC = sb.instantiateViewController(withIdentifier: "childVC") as? ChildViewController else { return }

        addChild(childVC)
        childVC.view.frame = container.bounds
        container.addSubview(childVC.view)
    }
}
