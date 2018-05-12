//
//  LittleOneViewController.swift
//  littleprince
//
//  Created by 李沐軒 on 2018/5/11.
//  Copyright © 2018年 李沐軒. All rights reserved.
//

import UIKit
import AVFoundation

class LittleOneViewController: UIViewController {
    
    var count = 0
    
    @IBAction func buttonPressed(_ sender: Any) {
        count = count + 1
        picChange()
        let speechUtterance =  AVSpeechUtterance(string: wordsLabel.text!)
        speechUtterance.voice =   AVSpeechSynthesisVoice(language: "fr-FR")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(speechUtterance)
    }
    
    func picChange() {
        let pic = count % 8
        view.backgroundColor = .orange
        if pic == 0 {
            picImageView.image = UIImage(named:"1")
            self.wordsLabel.text = "Bonjour~"
        } else if pic == 1 {
            picImageView.image = UIImage(named:"2")
            self.wordsLabel.text = "Tu sais... quand on est tellement triste on aime les couchers de soleil."
        } else if pic == 2 {
            picImageView.image = UIImage(named:"3")
            self.wordsLabel.text = "Si tu aimes une fleur qui se trouve dans une étoile, c’est doux, la nuit, de regarder le ciel. Toutes les étoiles sont fleuries."
        } else if pic == 3 {
            picImageView.image = UIImage(named:"4")
            self.wordsLabel.text = "C’est le temps que tu as perdu pour ta rose qui fait ta rose si importante."
        } else if pic == 4 {
            picImageView.image = UIImage(named:"5")
            self.wordsLabel.text = "Je me demande, dit-il, si les étoiles sont éclairées afin que chacun puisse un jour retrouver la sienne. Regarde ma planète. Elle est juste au-dessus de nous... Mais comme elle est loin !"
        } else if pic == 5 {
            picImageView.image = UIImage(named:"6")
            self.wordsLabel.text = "on ne voit bien qu’avec le coeur. L’essentiel est invisible pour les yeux."
        } else if pic == 6 {
            picImageView.image = UIImage(named:"7")
            self.wordsLabel.text = "Moi aussi, aujourd’hui, je rentre chez moi...C’est bien plus loin... c’est bien plus difficile..."
        } else if pic == 7 {
            picImageView.image = UIImage(named:"8")
            self.wordsLabel.text = "Quand tu regarderas le ciel, la nuit, puisque j’habiterai dans l’une d’elles, puisque je rirai dans l’une d’elles, alors ce sera pour toi comme si riaient toutes les étoiles."
        } else if count == 8 {
            count = 0
        }
    
    }
    
    @IBOutlet weak var wordsLabel: UILabel!
    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var picImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        picChange()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
