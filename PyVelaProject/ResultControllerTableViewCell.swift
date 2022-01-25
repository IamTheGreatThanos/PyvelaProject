import UIKit

class ResultControllerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var NumLabel: UILabel!
    @IBOutlet weak var TestLabel: UILabel!
    @IBOutlet weak var DataLabel: UILabel!
    @IBOutlet weak var PointLabel: UILabel!
    @IBOutlet weak var LowLabel: UILabel!
    @IBOutlet weak var Mediumlabel: UILabel!
    @IBOutlet weak var HighLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
