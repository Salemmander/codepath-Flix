//
//  SuperheroDetailsViewController.swift
//  Flix
//
//  Created by Salem Nassar on 9/23/22.
//

import UIKit

class SuperheroDetailsViewController: UIViewController {

    var movie: [String:Any]!
    
    @IBOutlet weak var SuperheroDetailPoster: UIImageView!
    @IBOutlet weak var SuperheroDetailBackdrop: UIImageView!
    @IBOutlet weak var SuperheroDetailDescription: UILabel!
    @IBOutlet weak var SuperheroDetailTitle: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        SuperheroDetailTitle.text = movie["title"] as! String
        SuperheroDetailTitle.sizeToFit()
        SuperheroDetailDescription.text = movie["overview"] as! String
        SuperheroDetailDescription.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseURL + posterPath)
        
        SuperheroDetailPoster.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        SuperheroDetailBackdrop.af_setImage(withURL: backdropUrl!)


    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
