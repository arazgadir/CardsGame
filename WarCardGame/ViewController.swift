//
//  ViewController.swift
//  WarCardGame
//
//  Created by student on 17.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var playerscore = 0
    var cpuscore  = 0
    
    @IBOutlet weak var message: UILabel!
    
   
    @IBOutlet weak var CPUCard: UIImageView!
    @IBOutlet weak var action_button: UIButton!
    @IBOutlet weak var PlayerCard: UIImageView!
    @IBOutlet weak var CPUScore: UILabel!
    @IBOutlet weak var PlayerScore: UILabel!
    @IBOutlet weak var restart: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //generate values 2-14
    func generateValue()->Int{
        return Int.random(in: 2...14)    }
    
    
    @IBAction func RestartGame(_ sender: UIButton) {
         playerscore = 0
         cpuscore  = 0
         PlayerScore.text = String(0)
        CPUScore.text = String(0)
        
    }
    
    //function action for Deal button
    @IBAction func DealFunc(_ sender: UIButton)
    {
       
        if playerscore < 20 && cpuscore < 20
        {
       
        
        let  playernumber = generateValue()
         let cpunumber = generateValue()
        PlayerCard.image = UIImage (imageLiteralResourceName: "card\(playernumber)")
        CPUCard.image = UIImage (imageLiteralResourceName: "card\(cpunumber)")
       
            
        if playernumber>cpunumber {
            playerscore += 1
            message.text = "Araz wins the round"
            PlayerScore.text = String(playerscore)
            CPUScore.text = String(cpuscore)
        }
        
        else if playernumber<cpunumber{
            cpuscore += 1
            message.text = "Eldar wins the round"
            PlayerScore.text = String(playerscore)
            CPUScore.text = String(cpuscore)
        }
        
        else {
            playerscore += 1
            cpuscore += 1
            message.text = "draw"
            PlayerScore.text = String(playerscore)
            CPUScore.text = String(cpuscore)
        }
            
        }
        
        
        else if playerscore == 20 {
            message.text = "Araz win"
            playerscore = 0
            cpuscore = 0
        }
        else if cpuscore == 20 {
            message.text = "Eldar win"
            playerscore = 0
            cpuscore = 0
        }
        
        
      
    }
    
    
    
    
}

