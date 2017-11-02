

import UIKit

class ColorChangerViewController: UIViewController {
    
    let colorChanger = ColorChangerModel()

    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorView: UIView!
    
    @IBAction func randomColorTapped(_ sender: UIButton) {
        self.colorView.backgroundColor = colorChanger.randomColor()
        self.colorLabel.text = colorChanger.currentColor.name
    }
    
    @IBAction func nextColorTapped(_ sender: UIButton) {
        self.colorView.backgroundColor = colorChanger.nextColor()
        self.colorLabel.text = colorChanger.currentColor.name
    }
    
}
