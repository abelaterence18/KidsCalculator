//
//  ViewController.swift
//  KidsCalculator
//
//  Created by Terence Abela on 24/11/2016.
//  Copyright © 2016 Terence Abela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet var CorrectAnswerView: UIView!
    @IBOutlet var CorrectAnswerView: UIView!
    
    @IBOutlet var QuestionLabel: UILabel!
    
    @IBOutlet var Button0: UIButton!
    
    @IBOutlet var Button1: UIButton!
    
    @IBOutlet var Button2: UIButton!
    
    @IBOutlet var Button3: UIButton!
    
    @IBOutlet var Button4: UIButton!
    
    @IBOutlet var Button5: UIButton!
    
    @IBOutlet var Button6: UIButton!
    
    @IBOutlet var Button7: UIButton!
    
    @IBOutlet var Button8: UIButton!
    
    @IBOutlet var Button9: UIButton!
    
    @IBOutlet var LabelEnd: UILabel!
    
    @IBOutlet var Next: UIButton!
    
    @IBOutlet var AnswerLabel: UILabel!

    @IBOutlet var NumberView: UIView!
    
    @IBOutlet var SumView: UIView!
    
    @IBOutlet var PlateView: UIView!
    
    @IBOutlet var CorrectView: UIView!
    
    @IBOutlet var Plate: UIImageView!
    
    @IBOutlet var Apple1: DraggedImageView!
    
    @IBOutlet var Apple2: DraggedImageView!
    
    @IBOutlet var Apple3: DraggedImageView!
    
    @IBOutlet var Apple4: DraggedImageView!
    
    @IBOutlet var Apple5: DraggedImageView!
    
    @IBOutlet var Apple6: DraggedImageView!
    
    @IBOutlet var Apple7: DraggedImageView!
    
    @IBOutlet var Apple8: DraggedImageView!
    
    @IBOutlet var Apple9: DraggedImageView!
    
    
    @IBOutlet var Star3: UIImageView!
    @IBOutlet var Star2: UIImageView!
    @IBOutlet var Star1: UIImageView!
    @IBOutlet var Thumb: UIImageView!
    @IBOutlet var Star9: UIImageView!
    @IBOutlet var Star8: UIImageView!
    @IBOutlet var Star7: UIImageView!
    @IBOutlet var Star10: UIImageView!
    @IBOutlet var Star6: UIImageView!
    @IBOutlet var Star5: UIImageView!
    @IBOutlet var Star4: UIImageView!
    
    
    
    var CorrectAnswer = String()
    

    let W = CGFloat(UIScreen.mainScreen().bounds.width)
    let H = CGFloat(UIScreen.mainScreen().bounds.height)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    Hide()
        
    RandomQuestions()
    
    SetNumberSize()
        
    SetSumSize()
        
    SetPlateView()
        
    SetCorrectView()
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func SetNumberSize(){
        let numberDiameter = 0.15*W
        NumberView.frame = CGRectMake(0, 0, W, 0.3*H)
        Button0.frame = CGRectMake((0.14*W)-numberDiameter/2, (0.1*H)-numberDiameter/2, numberDiameter, numberDiameter)
        Button1.frame = CGRectMake((0.32*W)-numberDiameter/2, (0.1*H)-numberDiameter/2, numberDiameter, numberDiameter)
        Button2.frame = CGRectMake((0.50*W)-numberDiameter/2, (0.1*H)-numberDiameter/2, numberDiameter, numberDiameter)
        Button3.frame = CGRectMake((0.68*W)-numberDiameter/2, (0.1*H)-numberDiameter/2, numberDiameter, numberDiameter)
        Button4.frame = CGRectMake((0.86*W)-numberDiameter/2, (0.1*H)-numberDiameter/2, numberDiameter, numberDiameter)
        Button5.frame = CGRectMake((0.14*W)-numberDiameter/2, (0.2*H)-numberDiameter/2, numberDiameter, numberDiameter)
        Button6.frame = CGRectMake((0.32*W)-numberDiameter/2, (0.2*H)-numberDiameter/2, numberDiameter, numberDiameter)
        Button7.frame = CGRectMake((0.50*W)-numberDiameter/2, (0.2*H)-numberDiameter/2, numberDiameter, numberDiameter)
        Button8.frame = CGRectMake((0.68*W)-numberDiameter/2, (0.2*H)-numberDiameter/2, numberDiameter, numberDiameter)
        Button9.frame = CGRectMake((0.86*W)-numberDiameter/2, (0.2*H)-numberDiameter/2, numberDiameter, numberDiameter)
    }
    
    
    func SetSumSize(){
        SumView.frame = CGRectMake(0, 0.3*H, W, 0.3*H)
        QuestionLabel.frame = CGRectMake(0.1*W, 0.06*H, 0.8*W, 0.1*H)
        LabelEnd.frame = CGRectMake(0.1*W, 0.15*H, 0.8*W, 0.08*H)

    }
    
    
    
    func SetPlateView(){
        PlateView.frame = CGRectMake(0, 0.6*H, W, 0.4*H)
        Plate.frame = CGRectMake(0.05*W, 0.22*H, 0.9*W, 0.16*H)
        Apple1.frame = CGRectMake(0.13*W, 0.255*H, 0.2*W, 0.11*H)
        Apple2.frame = CGRectMake(0.28*W, 0.26*H, 0.2*W, 0.11*H)
        Apple3.frame = CGRectMake(0.43*W, 0.26*H, 0.2*W, 0.11*H)
        Apple4.frame = CGRectMake(0.58*W, 0.255*H, 0.2*W, 0.11*H)
        Apple5.frame = CGRectMake(0.73*W, 0.23*H, 0.2*W, 0.11*H)
        Apple6.frame = CGRectMake(0.14*W, 0.18*H, 0.2*W, 0.11*H)
        Apple7.frame = CGRectMake(0.3*W, 0.18*H, 0.2*W, 0.11*H)
        Apple8.frame = CGRectMake(0.45*W, 0.18*H, 0.2*W, 0.11*H)
        Apple9.frame = CGRectMake(0.6*W, 0.175*H, 0.2*W, 0.11*H)
        
    }
    
    
    func SetCorrectView(){
        CorrectView.frame = CGRectMake(0, 0, W, 1*H)
        Next.frame = CGRectMake(0.4*W, 0.39*H, 0.6*W, 0.3*H)
        AnswerLabel.frame = CGRectMake(0.4*W, 0.25*H, 0.3*W, 0.1*H)
        Thumb.frame = CGRectMake(0, 0.42*H, 0.39*W, 0.2*H)
        Star1.frame = CGRectMake(0.07*W, 0.1*H, 0.1*W, 0.1*H)
        Star2.frame = CGRectMake(0.27*W, 0.1*H, 0.1*W, 0.1*H)
        Star3.frame = CGRectMake(0.47*W, 0.1*H, 0.1*W, 0.1*H)
        Star4.frame = CGRectMake(0.67*W, 0.1*H, 0.1*W, 0.1*H)
        Star5.frame = CGRectMake(0.87*W, 0.1*H, 0.1*W, 0.1*H)
        Star6.frame = CGRectMake(0.07*W, 0.8*H, 0.1*W, 0.1*H)
        Star7.frame = CGRectMake(0.27*W, 0.8*H, 0.1*W, 0.1*H)
        Star8.frame = CGRectMake(0.47*W, 0.8*H, 0.1*W, 0.1*H)
        Star9.frame = CGRectMake(0.67*W, 0.8*H, 0.1*W, 0.1*H)
        Star10.frame = CGRectMake(0.87*W, 0.8*H, 0.1*W, 0.1*H)
    }
    
    
    
    
    
    func ShowCorrectView(answer: String){
        
        CorrectAnswerView.hidden = false
        AnswerLabel.text = answer
    }
    
    func RandomQuestions(){
        
        var RandomNumber = arc4random() % 25
        RandomNumber += 1
        
        switch (RandomNumber){
            
        case 1:
            
            QuestionLabel.text = " 0 + 0 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "0"
            
            break
            
        case 2:
            
            QuestionLabel.text = " 0 + 1 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "1"
            
            break
            
        case 3:
            
            QuestionLabel.text = " 0 + 2 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "2"
            
            break
            
        case 4:
            
            QuestionLabel.text = " 0 + 3 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "3"
            
            break
            
        case 5:
            
            QuestionLabel.text = " 0 + 4 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "4"
            
            break
            
        case 6:
            
            QuestionLabel.text = " 1 + 0 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "1"
            
            break
            
        case 7:
            
            QuestionLabel.text = " 1 + 1 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "2"
            
            break
            
        case 8:
            
            QuestionLabel.text = " 1 + 2 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "3"
            
            break
            
        case 9:
            
            QuestionLabel.text = " 1 + 3 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "4"
            
            break
            
        case 10:
            
            QuestionLabel.text = " 1 + 4 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "5"
            
            break
            
        case 11:
            
            QuestionLabel.text = " 2 + 0 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "2"
            
            break
            
        case 12:
            
            QuestionLabel.text = " 2 + 1 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "3"
            
            break
            
        case 13:
            
            QuestionLabel.text = " 2 + 2 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "4"
            
            break
            
        case 14:
            
            QuestionLabel.text = " 2 + 3 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "5"
            
            break
            
        case 15:
            
            QuestionLabel.text = " 2 + 4 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "6"
            
            break
            
        case 16:
            
            QuestionLabel.text = " 3 + 0 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "3"
            
            break
            
        case 17:
            
            QuestionLabel.text = " 3 + 1 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "4"
            
            break
            
        case 18:
            
            QuestionLabel.text = " 3 + 2 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "5"
            
            break
            
        case 19:
            
            QuestionLabel.text = " 3 + 3 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "6"
            
            break
            
        case 20:
            
            QuestionLabel.text = " 3 + 4 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "7"
            
            break
            
        case 21:
            
            QuestionLabel.text = " 4 + 0 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "4"
            
            break
            
        case 22:
            
            QuestionLabel.text = " 4 + 1 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "5"
            
            break
            
        case 23:
            
            QuestionLabel.text = " 4 + 2 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "6"
            
            break
            
        case 24:
            
            QuestionLabel.text = " 4 + 3 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "7"
            
            break
            
        case 25:
            
            QuestionLabel.text = " 4 + 4 = ? "
            Button0.setTitle("0", forState: UIControlState.Normal)
            Button1.setTitle("1", forState: UIControlState.Normal)
            Button2.setTitle("2", forState: UIControlState.Normal)
            Button3.setTitle("3", forState: UIControlState.Normal)
            Button4.setTitle("4", forState: UIControlState.Normal)
            Button5.setTitle("5", forState: UIControlState.Normal)
            Button6.setTitle("6", forState: UIControlState.Normal)
            Button7.setTitle("7", forState: UIControlState.Normal)
            Button8.setTitle("8", forState: UIControlState.Normal)
            Button9.setTitle("9", forState: UIControlState.Normal)
            CorrectAnswer = "8"
            
            break
            
            
        default:
            
            break
            
        }
        
        
    }

    func Hide(){
    
        LabelEnd.hidden = true
        Next.hidden = true
        CorrectAnswerView.hidden = true
        
        
    }
    
    func UnHide(){
        LabelEnd.hidden = false
        Next.hidden = false
    }
    
    

    
    @IBAction func Button0Action(sender: AnyObject) {
        UnHide()
        
        if (CorrectAnswer == "0"){
            UnHide()
            
            LabelEnd.text = "Correct Answer!"
            ShowCorrectView("0")
        }
        else{
            
            LabelEnd.text = "Wrong Answer!"
            LabelEnd.textColor = UIColor.redColor()
            
        }

        
    }
    
    @IBAction func Button1Action(sender: AnyObject) {
        UnHide()
        
        if (CorrectAnswer == "1"){
            UnHide()
            
            LabelEnd.text = "Correct Answer!"
            ShowCorrectView("1")
            
        }
        else{
            
            LabelEnd.text = "Wrong Answer!"
            LabelEnd.textColor = UIColor.redColor()
            
        }

        
    }
    
    @IBAction func Button2Action(sender: AnyObject) {
        UnHide()
        
        if (CorrectAnswer == "2"){
            
            LabelEnd.text = "Correct Answer!"
            ShowCorrectView("2")
            
        }
        else{
            
            LabelEnd.text = "Wrong Answer!"
            LabelEnd.textColor = UIColor.redColor()
            
        }

        
    }
    
    @IBAction func Button3Action(sender: AnyObject) {
        UnHide()
        
        if (CorrectAnswer == "3"){
            
            LabelEnd.text = "Correct Answer!"
            ShowCorrectView("3")
            
        }
        else{
            
            LabelEnd.text = "Wrong Answer!"
            LabelEnd.textColor = UIColor.redColor()
            
        }

        
    }
    
    @IBAction func Button4Action(sender: AnyObject) {
        UnHide()
        
        if (CorrectAnswer == "4"){
            
            LabelEnd.text = "Correct Answer!"
            ShowCorrectView("4")
            
        }
        else{
            
            LabelEnd.text = "Wrong Answer!"
            LabelEnd.textColor = UIColor.redColor()
            
        }

        
    }
    
    @IBAction func Button5Action(sender: AnyObject) {
        UnHide()
        
        if (CorrectAnswer == "5"){
            
            LabelEnd.text = "Correct Answer!"
            ShowCorrectView("5")
            
        }
        else{
            
            LabelEnd.text = "Wrong Answer!"
            LabelEnd.textColor = UIColor.redColor()
            
        }

        
    }
    
    @IBAction func Button6Action(sender: AnyObject) {
        UnHide()
        
        if (CorrectAnswer == "6"){
            
            LabelEnd.text = "Correct Answer!"
            ShowCorrectView("6")
            
        }
        else{
            
            LabelEnd.text = "Wrong Answer!"
            LabelEnd.textColor = UIColor.redColor()
            
        }

        
    }
    
    @IBAction func Button7Action(sender: AnyObject) {
        UnHide()
        
        if (CorrectAnswer == "7"){
            
            LabelEnd.text = "Correct Answer!"
            ShowCorrectView("7")
            
        }
        else{
            
            LabelEnd.text = "Wrong Answer!"
            LabelEnd.textColor = UIColor.redColor()
            
        }

        
    }
    
    @IBAction func Button8Action(sender: AnyObject) {
        UnHide()
        
        if (CorrectAnswer == "8"){
            
            LabelEnd.text = "Correct Answer!"
            ShowCorrectView("8")
            
        }
        else{
            
            LabelEnd.text = "Wrong Answer!"
            LabelEnd.textColor = UIColor.redColor()
            
        }

        
    }
    
    @IBAction func Button9Action(sender: AnyObject) {
        UnHide()
        
        if (CorrectAnswer == "9"){
            
            LabelEnd.text = "Correct Answer!"
            ShowCorrectView("9")
            
        }
        else{
            
            LabelEnd.text = "Wrong Answer!"
            LabelEnd.textColor = UIColor.redColor()
            
        }

        
    }
    
    
    
    
    @IBAction func Next(sender: AnyObject) {
        
        RandomQuestions()
        
        Hide()
        
        
    }
    
    
    
    
    
    
    
    
    
}

