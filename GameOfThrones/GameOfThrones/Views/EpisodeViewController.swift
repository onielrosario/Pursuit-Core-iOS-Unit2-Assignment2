//
//  EpisodeViewController.swift
//  GameOfThrones
//
//  Created by Oniel Rosario on 11/19/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class EpisodeViewController: UIViewController {
    @IBOutlet weak var episodeImage: UIImageView!
    @IBOutlet weak var episodeName: UILabel!
    @IBOutlet weak var gOTSeason: UILabel!
    @IBOutlet weak var episodeNum: UILabel!
    @IBOutlet weak var runTime: UILabel!
    @IBOutlet weak var airDate: UILabel!
    @IBOutlet weak var episodeDescription: UITextView!
    
    
    var  episode: GOTEpisode?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSeason()
        // Do any additional setup after loading the view.
    }
    
    func setUpSeason() {
        episodeImage.image = UIImage(named: episode?.mediumImageID ?? "")
        episodeName.text = episode?.name
        gOTSeason.text = "season: \(episode?.season ?? 0)"
        episodeNum.text = "Episode: \(episode?.number ?? 0)"
        runTime.text = "Runtime: \(episode?.runtime ?? 0)"
        airDate.text = "Airdate: \(episode?.airdate ?? "")"
        episodeDescription.text = episode?.summary
    }
    
}
