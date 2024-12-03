import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    var isJames = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func changePic() {
        

        if isJames == true {
            imageView.image = UIImage(named: "lars")
            myLabel.text = "Lars Ulrich"
            isJames = false
        } else {
            imageView.image = UIImage(named: "james")
            myLabel.text = "James Hetfield"
            isJames = true
        }
        
        
        
    }


}

