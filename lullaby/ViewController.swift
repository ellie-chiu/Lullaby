//
//  ViewController.swift
//  lullaby
//
//  Created by TINA on 2020/12/7.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    let player = AVPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //set music
        let music = Bundle.main.url(forResource: "Umbrella", withExtension: "mp3")!
        let musicitem = AVPlayerItem (url: music)
        player.replaceCurrentItem(with: musicitem)
        player.play()
        
        
        //set shootingstar
        let shootingstarcell = CAEmitterCell()
        shootingstarcell.contents = UIImage (named: "shooting-star-3.png")?.cgImage
        shootingstarcell.birthRate = 1
        shootingstarcell.lifetime = 70
        shootingstarcell.scale = 0.5
        shootingstarcell.scaleRange = 0.2
        shootingstarcell.scaleSpeed = -0.05
        shootingstarcell.yAcceleration = 50
        shootingstarcell.velocity = 200
        
        let shootingstarlayer = CAEmitterLayer()
        shootingstarlayer.emitterCells = [shootingstarcell]
        shootingstarlayer.emitterPosition = CGPoint(x: -500, y: 100)
        shootingstarlayer.emitterSize = CGSize(width: view.bounds.width, height: 0)
        shootingstarlayer.emitterShape = .cuboid
        view.layer.addSublayer(shootingstarlayer)
        
        
        
        //set grandientlayer
        let backgroundLayer = CAGradientLayer()
        backgroundLayer.frame = view.bounds
        backgroundLayer.colors = [
            UIColor(red: 11/255, green: 16/255, blue: 38/255, alpha: 1).cgColor,
            UIColor(red: 22/255, green: 27/255, blue: 54/255, alpha: 1).cgColor,
            UIColor(red: 17/255, green: 25/255, blue: 98/255, alpha: 1).cgColor,
            UIColor(red: 32/255, green: 47/255, blue: 70/255, alpha: 1).cgColor,
            UIColor(red: 36/255, green: 43/255, blue: 75/255, alpha: 1).cgColor,
            UIColor(red: 53/255, green: 71/255, blue: 95/255, alpha: 1).cgColor,
            UIColor(red: 145/255, green: 142/255, blue: 135/255, alpha: 1).cgColor,
            UIColor(red: 103/255, green: 90/255, blue: 84/255, alpha: 1).cgColor,

        ]
        view.layer.insertSublayer(backgroundLayer, at: 0)
            
        //set animatedimage
        let imageView = UIImageView(frame: CGRect(x: 0, y: 100, width: 474, height: 251))
        view.addSubview(imageView)
        
        let animatedImage = UIImage.animatedImageNamed("54f2f81ece244c72c4507f61b09f5af50snIufZkZaGTCPN1-", duration: 1)
        
        imageView.image = animatedImage
        
        
    }


}

