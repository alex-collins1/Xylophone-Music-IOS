
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
// the code below will allow the song to be played, the sender.alpha will add an opacity of 0.5 for a period of 0,2 seconds, i figured this out using stack overflow, link here: https://stackoverflow.com/questions/38534573/changing-opacity-of-button-when-clicked-xcode-swift/61342388
    //
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
               sender.alpha = 1.0
           }
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

