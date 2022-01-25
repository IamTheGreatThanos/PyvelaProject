import UIKit

class PaymentControllerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var NumLabel: UILabel!
    @IBOutlet weak var OperatorLabel: UILabel!
    @IBOutlet weak var DataLabel: UILabel!
    @IBOutlet weak var AmountLabel: UILabel!
    @IBOutlet weak var ProfileSubjectsLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
