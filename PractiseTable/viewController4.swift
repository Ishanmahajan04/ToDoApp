
import UIKit

class viewController4: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var upload_Image: UIButton!
    
    @IBAction func select_image(sender: AnyObject) {
        update()
        
    }
    
     func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        image.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController)
    {
        
    }
    
    @IBAction func image_Selected(sender: AnyObject) {
        // code to upload image
    
        
    }
    
  
    func update()
    {
        let ImagePicker = UIImagePickerController()
        ImagePicker.delegate = self
        ImagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        
        presentViewController(ImagePicker, animated: true, completion: nil)
    }
  
}

