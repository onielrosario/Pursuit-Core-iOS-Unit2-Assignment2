//
//  ViewController.swift
//  GameOfThrones
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showTableView: UITableView!
    
    private var episodes = GOTEpisode.allEpisodes
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showTableView.delegate = self
        showTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let episodeViewController = segue.destination as? EpisodeViewController,
            let indexPath = showTableView.indexPathForSelectedRow
            else { return }
        let episode = episodes[indexPath.row]
        episodeViewController.episode = episode
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = showTableView.dequeueReusableCell(withIdentifier: "showCell", for: indexPath) as? ShowCell else { return UITableViewCell() }
        let episodeToSet = episodes[indexPath.row]
        cell.episodeImage.image = UIImage(named: episodeToSet.mediumImageID)
        cell.episodeName.text = episodeToSet.name
        cell.seasonAndEpisode.text = "S:\(episodeToSet.season) E:\(episodeToSet.number)"
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

