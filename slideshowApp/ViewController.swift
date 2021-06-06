//
//  ViewController.swift
//  slideshowApp
//
//  Created by 川島有花 on 2021/05/19.
//

import UIKit

class ViewController: UIViewController {

    
    var timer: Timer!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var backButton: UIButton!
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    var nowIndex:Int = 0
    let images:[String] = ["no1","no2","no3"]
    
    var timer_sec: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        imageView.isUserInteractionEnabled = true
    
        imageView.image = UIImage(named: images[nowIndex])
    }


    @IBAction func nextButtonTouched(_ sender: Any) {
        nowIndex = nowIndex + 1
       
        if (nowIndex == images.count) {
                   
                    nowIndex = 0
                }
        imageView.image = UIImage(named: images[nowIndex])
    }
    
    
    @IBAction func backButtonTouched(_ sender: Any) {
        
        nowIndex = nowIndex - 1
       
        if (nowIndex == -1) {
                   
                    nowIndex = images.count - 1
                }
        imageView.image = UIImage(named: images[nowIndex])
        
        
    }
    
    
    @IBAction func startButtonTouched(_ sender: Any) {
        
        if (timer == nil) {
            timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            
            startButton.setTitle("停止", for: .normal)
            backButton.isEnabled = false
            nextButton.isEnabled = false
            
            
            
        } else {
            timer.invalidate()
            timer = nil
            
            startButton.setTitle("再生", for: .normal)
            backButton.isEnabled = true
            nextButton.isEnabled = true
         
            
            
                    }
    }
    
  
    
    @objc func changeImage() {
            nowIndex += 1
            if (nowIndex == images.count) {
                nowIndex = 0
            }
        imageView.image = UIImage(named: images[nowIndex])
        }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let kakudaiViewController:KakudaiViewController = segue.destination as! KakudaiViewController
        
        if (timer != nil) {
            timer.invalidate()
                timer = nil
                
                startButton.setTitle("再生", for: .normal)
                backButton.isEnabled = true
                nextButton.isEnabled = true
            
        
        }
        
        kakudaiViewController.imageName = images[nowIndex]
    
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
}

