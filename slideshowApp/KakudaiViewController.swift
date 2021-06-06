//
//  KakudaiViewController.swift
//  slideshowApp
//
//  Created by 川島有花 on 2021/05/19.
//

import UIKit

class KakudaiViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var kakudaiImageView: UIImageView!
    
    

    var imageName = ""
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        kakudaiImageView.image = UIImage(named: imageName)
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
