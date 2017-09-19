import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var spinner: UIActivityIndicatorView!
    
    func update(with image: UIImage?) {
        if let imageToDispay = image {
            spinner.stopAnimating()
            imageView.image = imageToDispay
        } else {
            spinner.startAnimating()
            imageView.image = nil
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        update(with: nil)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        update(with: nil)
    }
}
