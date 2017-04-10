//
//  ViewController.swift
//  tableViewTest
//
//  Created by Noah Marriott on 6/21/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var descript: UILabel!
    @IBOutlet weak var temp: UILabel!
    @IBOutlet weak var wind: UILabel!
    @IBOutlet weak var rain: UILabel!
    @IBOutlet weak var pressure: UILabel!
    @IBOutlet weak var clouds: UILabel!
    @IBOutlet weak var Hum: UILabel!
    @IBOutlet weak var country: UILabel!

    @IBOutlet weak var countryTxt: UITextField!
    @IBOutlet weak var currentCity: UINavigationItem!
    @IBOutlet weak var cityTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    @IBAction func goSearch(sender: AnyObject) {
        
       
        getWeather("http://api.openweathermap.org/data/2.5/weather?q=London,uk")
         println("hello")
        
    }
    
    func getWeather(url:String){
        let url = NSURL(string: url)
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: {(data, response, error) in
            if error == nil {
            dispatch_async(dispatch_get_main_queue(),{
                
                self.parsedata(data)
                
            
            })
            }else{
                println("something went wrong, please check your spelling")
            }
        
        })

    
    }
    func parsedata(thedata:NSData){
        var error:NSError?
        
        var json = NSJSONSerialization.JSONObjectWithData(thedata,
            options: nil,
            error:&error) as! NSDictionary
        
        if let name = json["name"] as? String {
            currentCity.title = name
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func refreshFeed(sender: AnyObject) {
    }
   
 
    
}

