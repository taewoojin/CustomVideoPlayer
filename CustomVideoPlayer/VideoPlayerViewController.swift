//
//  VideoPlayerViewController.swift
//  CustomVideoPlayer
//
//  Created by 진용호 on 2018. 8. 30..
//  Copyright © 2018년 진용호. All rights reserved.
//

import UIKit
import AVFoundation

class VideoPlayerViewController: UIViewController {
  
  @IBOutlet weak var videoView: UIView!
  var player: AVPlayer!
  var playerLayer: AVPlayerLayer!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let url = URL(string: "http://184.72.239.149/vod/smil:BigBuckBunny.smil/playlist.m3u8")
    player = AVPlayer(url: url!)
    
    playerLayer = AVPlayerLayer(player: player)
    playerLayer.videoGravity = .resize
    
    videoView.layer.addSublayer(playerLayer)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    player.play()
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    
    playerLayer.frame = videoView.bounds
  }
  
}
