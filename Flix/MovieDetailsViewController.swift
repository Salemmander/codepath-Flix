//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Salem Nassar on 9/21/22.
//

import UIKit
import AlamofireImage
class MovieDetailsViewController: UIViewController {

    
    @IBOutlet weak var detailBackdrop: UIImageView!
    @IBOutlet weak var detailPoster: UIImageView!
    @IBOutlet weak var detaildescription: UILabel!
    @IBOutlet weak var detailTitle: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        detailTitle.text = movie["title"] as! String
        detailTitle.sizeToFit()
        detaildescription.text = movie["overview"] as! String
        detaildescription.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseURL + posterPath)
        
        detailPoster.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        detailBackdrop.af_setImage(withURL: backdropUrl!)
        // Do any additional setup after loading the view.
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
