//
//  ViewController.swift
//  movieScanApp
//
//  Created by Noah Marriott on 7/16/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController, G8TesseractDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        var tesseract:G8Tesseract = G8Tesseract(language:"eng+ita");
        //tesseract.language = "eng+ita";
        tesseract.delegate = self;
        tesseract.charWhitelist = "01234567890";
        tesseract.image = UIImage(named: "ticket");
        tesseract.recognize();
        println(tesseract.recognizedText)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

