
import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblUpper: UILabel!
    @IBOutlet weak var lblLower: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadCell(data:(upper:String,lower:String)) {
        lblUpper.text = data.upper
        lblLower.text = data.lower
    }

}
