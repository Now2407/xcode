//
//  ViewController.swift
//  getTheWeather
//
//  Created by Noah Marriott on 6/22/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //text inputs
    @IBOutlet weak var citytxt: UITextField!
    @IBOutlet weak var countrytxt: UITextField!
    
    // top labels
    @IBOutlet weak var descriptLabel: UILabel!
    @IBOutlet weak var nameOfPlaceLabel: UILabel!
    
    //bottom labels
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var presureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    @IBOutlet weak var sunsetLabel: UILabel!
    @IBOutlet weak var sunriseLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func GoWeather(sender: AnyObject) {
        
        if citytxt.text == "" || countrytxt.text == "" {
            // either textfield 1 or 2's text is empty
            var alert = UIAlertController(title: "Opps", message: "Can Not be empty", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
  
        }else{
            weatherFromApi("http://api.openweathermap.org/data/2.5/weather?q=\(citytxt.text),\(countrytxt.text)")
        }
    }
    @IBAction func RefreshFeed(sender: AnyObject) {
    }
    
    func parsedata(theData:NSData){
        var jsonerror:NSError?
        if theData == nil {
        
        let json = NSJSONSerialization.JSONObjectWithData(theData, options: nil, error: &jsonerror) as! NSDictionary
        
        }else{
            println("hello")
        }
        
        if let name: AnyObject = json["name"]{
            nameOfPlaceLabel.text = name as? String
        }
        
       
        
        
        
       
    }
    
    func weatherFromApi(urlPath:String){
        
    

        let url = NSURL(string: urlPath)
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: {(data, response, error) in
            
            dispatch_async(dispatch_get_main_queue(), {
                self.parsedata(data)
            })
            
        })

        task.resume()
        
        
    }
    
    

}

