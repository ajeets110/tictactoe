//
//  ViewController.swift
//  TicTacToe
//
//  Created by MacStudent on 2020-01-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activeGame = true
    var activePlayer = 1
    var gameState = [0,0,0,0,0,0,0,0,0]
    var winingCombination = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnPressed(_ sender: UIButton) {
        
        print(sender.tag)
        let activePosition = sender.tag - 1
        
        if gameState[activePosition] == 0 && activeGame{
            gameState[activePosition] = activePlayer
            
            if activePlayer == 1 {
                sender.setImage(UIImage(named: "nought.png"), for: [])
                activePlayer = 2
            }else        {
                sender.setImage(UIImage(named: "cross.png"), for: [])
                activePlayer = 1
            }
        }
        for combination in winingCombination {
            if gameState[combination[0]] != 0 && gameState[combination[1]] == gameState[combination[2]] && gameState[combination[2]] == gameState[combination[0]]{
                //winner
                activeGame = false
                if gameState[combination[0]] == 1 {
                    print("winner is nought !")
                }
                else {
                    print("winner is Cross !")
                }
            }
        }
}

}
