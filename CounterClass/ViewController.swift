//
//  ViewController.swift
//  CounterClass
//
//  Created by 劉奕為 on 2017/3/29.
//  Copyright © 2017年 劉奕為. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    var currentValue :Double = 0{
        didSet{
            if(self.currentValue == floor(self.currentValue)){
                 let intValue :Int = Int(self.currentValue)
                 self.displayLabel.text = String(intValue)
            }
            else{
                self.displayLabel.text = String(self.currentValue)
            }
        }
    }
    var dotNum :Double = 10
    var inDot = false
    var dotValue :Int = 0
    var tempValue :Double = 0
    var inOperater = false
    var clickEqaul = false
    var operatorName = " "
    @IBOutlet weak var displayLabel: UILabel!
    @IBAction func zero(_ sender: UIButton) {
        if(clickEqaul){
            resetLabel(sender)
        }
        if(inDot){
            self.displayLabel.text=(self.displayLabel.text)!+"0"
            self.dotNum *= 10
        }
        else{
            self.currentValue=self.currentValue*10+0
        }
    }
    @IBAction func one(_ sender: UIButton) {
        if(clickEqaul){
            resetLabel(sender)
        }
        if(inDot){
            self.currentValue=self.currentValue+1/self.dotNum
            self.dotNum *= 10
        }
        else{
            self.currentValue=self.currentValue*10+1
        }
        
    }
    @IBAction func two(_ sender: UIButton) {
        if(clickEqaul){
            resetLabel(sender)
        }
        if(inDot){
            self.currentValue=self.currentValue+2/self.dotNum
            self.dotNum *= 10
        }
        else{
            self.currentValue=self.currentValue*10+2
        }
    }
    @IBAction func three(_ sender: UIButton) {
        if(clickEqaul){
            resetLabel(sender)
        }
        if(inDot){
            self.currentValue=self.currentValue+3/self.dotNum
            self.dotNum *= 10
        }
        else{
            self.currentValue=self.currentValue*10+3
        }
    }
    @IBAction func four(_ sender: UIButton) {
        if(clickEqaul){
            resetLabel(sender)
        }
        if(inDot){
            self.currentValue=self.currentValue+4/self.dotNum
            self.dotNum *= 10
        }
        else{
            self.currentValue=self.currentValue*10+4
        }

    }
    @IBAction func five(_ sender: UIButton) {
        if(clickEqaul){
            resetLabel(sender)
        }
        if(inDot){
            self.currentValue=self.currentValue+5/self.dotNum
            self.dotNum *= 10
        }
        else{
            self.currentValue=self.currentValue*10+5
        }
    }
    @IBAction func six(_ sender: UIButton) {
        if(clickEqaul){
            resetLabel(sender)
        }
        if(inDot){
            self.currentValue=self.currentValue+6/self.dotNum
            self.dotNum *= 10
        }
        else{
            self.currentValue=self.currentValue*10+6
        }
    }
    
    @IBAction func seven(_ sender: UIButton) {
        if(clickEqaul){
            resetLabel(sender)
        }
        if(inDot){
            self.currentValue=self.currentValue+7/self.dotNum
            self.dotNum *= 10
        }
        else{
            self.currentValue=self.currentValue*10+7
        }

    }
    @IBAction func eight(_ sender: UIButton) {
        if(clickEqaul){
            resetLabel(sender)
        }
        if(inDot){
            self.currentValue=self.currentValue+8/self.dotNum
            self.dotNum *= 10
        }
        else{
            self.currentValue=self.currentValue*10+8
        }
    }
    @IBAction func nine(_ sender: UIButton) {
        if(clickEqaul){
            resetLabel(sender)
        }
        if(inDot){
            self.currentValue=self.currentValue+9/self.dotNum
            self.dotNum *= 10
        }
        else{
            self.currentValue=self.currentValue*10+9
        }
    }
    
    @IBAction func increaseBtn(_ sender: UIButton) {
        self.inOperater = true
        if(self.tempValue==0){
            self.tempValue = self.tempValue + self.currentValue
        }
        else{
            if(!clickEqaul){
                miniCalculate();
            }
        }
        self.operatorName = "plus"
        self.clickEqaul = false
        self.currentValue = 0
        
    }

    @IBAction func decreaseBtn(_ sender: UIButton) {
        self.inOperater = true
        if(self.tempValue==0){
            self.tempValue = self.tempValue + self.currentValue
        }
        else{
            if(!clickEqaul){
                miniCalculate();
            }
        }
        self.operatorName = "minus"
        self.clickEqaul = false
        self.currentValue = 0
        
    }
    @IBAction func multiply(_ sender: UIButton) {
        self.inOperater = true
        if(self.tempValue==0){
            self.tempValue = self.tempValue + self.currentValue
        }
        else{
            if(!clickEqaul){
                miniCalculate();
            }
        }
        self.operatorName = "mul"
        self.clickEqaul = false
        self.currentValue = 0
    }
    
    @IBAction func divide(_ sender: UIButton) {
        self.inOperater = true
        if(self.tempValue==0){
            self.tempValue = self.tempValue + self.currentValue
        }
        else{
            if(!clickEqaul){
                miniCalculate();
            }
        }
        self.operatorName = "div"
        self.clickEqaul = false
        self.currentValue = 0
    }
    @IBAction func root(_ sender: UIButton) {
        self.currentValue = self.currentValue.squareRoot()
    }
    @IBAction func power(_ sender: UIButton) {
        self.currentValue = self.currentValue * self.currentValue
    }
    @IBAction func percent(_ sender: UIButton) {
        self.currentValue = self.currentValue/100
    }
    @IBAction func log(_ sender: UIButton) {
        self.currentValue = log10(self.currentValue)
    }
    @IBAction func negative(_ sender: UIButton) {
        self.currentValue = self.currentValue*(-1)
    }
    @IBAction func Exp(_ sender: UIButton) {
        self.currentValue = exp(self.currentValue)
    }
    @IBAction func Pi(_ sender: UIButton) {
        self.currentValue = Double.pi
    }
    @IBAction func Dot(_ sender: UIButton) {
        inDot = true
        if ( self.currentValue == 0){
            self.displayLabel.text = "0."
        }
        else{
            if (self.displayLabel.text?.range(of: ".") == nil){
              self.displayLabel.text? = (self.displayLabel.text)! + ".";
            }
        }
    }
    @IBAction func resetLabel(_ sender: UIButton) {
        self.currentValue = 0
        self.tempValue = 0
        self.operatorName=" "
        self.clickEqaul = false
        self.inDot = false
        self.dotNum = 10
    }
    @IBAction func eqaul(_ sender: UIButton) {
        miniCalculate();
        self.clickEqaul = true
    }
    func miniCalculate(){
        switch self.operatorName {
        case "plus":
            self.tempValue = self.tempValue + self.currentValue
        case "minus":
            self.tempValue = self.tempValue - self.currentValue
        case "mul":
            self.tempValue = self.tempValue * self.currentValue
        case "div":
            self.tempValue = self.tempValue / self.currentValue
        default:
            self.currentValue -= 1
        }
        self.currentValue = self.tempValue;
    }
    @IBAction func inDotToFalse(_ sender: UIButton) {
        self.inDot = false
    }
    @IBAction func resetTemp(_ sender: UIButton) {
        if(clickEqaul){
            self.tempValue = self.currentValue
        }
    }


}

