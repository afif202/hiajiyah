
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnHijaiyah(_ sender: UIButton) {
        playSound(sound: sender.currentTitle!)
    }
    
    func playSound(sound: String) {
        let url = Bundle.main.url(forResource: sound, withExtension: "mp3")
        audioPlayer = try!
            AVAudioPlayer(contentsOf: url!)
        audioPlayer?.play()
    }
    
}




