//
//  ViewController.swift
//  Cal
//
//  Created by admin on 15/7/2.
//  Copyright (c) 2015年 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var flag:Int=0;
    var num1:Double=0;
    var num2:Double=0;
    var Equal:Double=0;
    var judgepoint:Bool=false;
    
    @IBOutlet weak var Text: UITextField!
    
    @IBAction func btn0(sender: AnyObject) {
        if(Text.text=="0")
        {
            Text.text=(Text.text)!+"";
        }
        else
        {
            Text.text=(Text.text)!+"0";
        }
    }
    
    @IBAction func btn1(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"1"
            
        }
        else
        {
            Text.text=(Text.text)!+"1";
        }    }
    
    @IBAction func btn2(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"2"
            
        }
        else
        {
            Text.text=(Text.text)!+"2";
        }    }
    
    @IBAction func btn3(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"3"
            
        }
        else
        {
            Text.text=(Text.text)!+"3";
        }    }
    
    @IBAction func btn4(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"4"
            
        }
        else
        {
            Text.text=(Text.text)!+"4";
        }    }
    
    @IBAction func btn5(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"5"
            
        }
        else
        {
            Text.text=(Text.text)!+"5";
        }    }
    
    @IBAction func btn6(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"6"
            
        }
        else
        {
            Text.text=(Text.text)!+"6";
        }
    }
    
    @IBAction func btn7(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"7"
            
        }
        else
        {
            Text.text=(Text.text)!+"7";
        }
    }
    
    @IBAction func btn8(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"8"
            
        }
        else
        {
            Text.text=(Text.text)!+"8";
        }
    }
    
    @IBAction func btn9(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"9"
            
        }
        else
        {
            Text.text=(Text.text)!+"9";
        }
    }
    
    @IBAction func point(sender: AnyObject) {
        if(judgepoint==false)
        {
            Text.text=(Text.text)!+".";
            judgepoint=true
        }
    }

    @IBAction func add(sender: AnyObject) {
        num1=((Text.text)! as NSString).doubleValue;
        Text.text="";
        flag=1;
        judgepoint=false;
    }
    
    @IBAction func sub(sender: AnyObject) {
        num1=((Text.text)! as NSString).doubleValue;
        Text.text="";
        flag=2;
        judgepoint=false;
    }
    
    @IBAction func mul(sender: AnyObject) {
        num1=((Text.text)! as NSString).doubleValue;
        Text.text="";
        flag=3;
        judgepoint=false;
    }

    @IBAction func div(sender: AnyObject) {
        num1=((Text.text)! as NSString).doubleValue;
        Text.text="";
        flag=4;
        judgepoint=false;
    }
    
    @IBAction func equal(sender: AnyObject) {
        var x:Int=0;
        num2=((Text.text)! as NSString).doubleValue;
        switch(flag)
        {
        case 1:
            
            Equal=num1+num2;
            if(Equal%1==0)
            {
                x=Int(Equal);
                Text.text="\(x)"
            }
            else
            {
                Text.text="\(Equal)"
            }
            judgepoint=true;
            break;
        case 2:
            
            Equal=num1-num2;
            if(Equal%1==0)
            {
                x=Int(Equal);
                Text.text="\(x)"
            }
            else
            {
                Text.text="\(Equal)"
            }
            judgepoint=true;
            break;
        case 3:
            
            Equal=num1*num2;
            if(Equal%1==0)
            {
                x=Int(Equal);
                Text.text="\(x)"
            }
            else
            {
                Text.text="\(Equal)"
            }
            judgepoint=true;
            break;
        case 4:
            if(num2==0)
            {
                Text.text="错误"
            }
            else
            {
                Equal=num1/num2;
                if(Equal%1==0)
                {
                    x=Int(Equal);
                    Text.text="\(x)"
                }
                else
                {
                    Text.text="\(Equal)"
                }
            }
            judgepoint=true;
            break;
        default:
            break;
            
        }
    }
    
    
    @IBAction func clear(sender: AnyObject) {
        Text.text="0";
        num1=0;
        num2=0;
        Equal=0;
        judgepoint=false
   }
    
    @IBAction func addsub(sender: AnyObject) {
        var num3:Double=0;
        var num4:Int=0;
        num3=((Text.text)! as NSString).doubleValue;
        if(num3%1==0)
        {
            num4=Int(num3);
            if(num3>0)
            {
                Text.text="-"+"\(num4)";
            }
            else
            {
                num4=abs(num4);
                Text.text="\(num4)";
            }
        }
        else
        {
            if(num3>0)
            {
                Text.text="-"+"\(num3)";
            }
            else
            {
                num3=abs(num3);
                Text.text="\(num3)";
            }
        }
    }
    
    @IBAction func div100(sender: AnyObject) {
        var per:Double=0;
        var per1:Double=0;
        var per2:Int=0;
        per=((Text.text)! as NSString).doubleValue;
        per1=per/100;
        if(per1%1==0)
        {
            per2=Int(per1);
            Text.text="\(per2)";
        }
        else
        {
            Text.text="\(per1)";
            
        }
    }
    
    @IBAction func Delete(sender: AnyObject) {
        var s=Text.text!
        if s != ""{
            s.removeAtIndex(s.endIndex.predecessor())
            Text.text=s
            }
        else{
            Text.text="0"
        }
    }
    @IBAction func xx(sender: AnyObject) {
        var square:Double=0;
        var square1:Int=0;
        var square2:Double=0;
        square=((Text.text)! as NSString).doubleValue;
        square2=square*square;
        if(square2%1==0)
        {
            square1=Int(square2);
            Text.text="\(square1)";
        }
        else
        {
            Text.text="\(square2)";
        }
    }
   
    @IBAction func Sqrt(sender: AnyObject) {
        var radical:Double=0;
        var radical0:Int=0;
        var radical1:Double=0;
        radical=((Text.text)! as NSString).doubleValue;
        radical1=sqrt(radical);
        if(radical1%1==0)
        {
            radical0=Int(radical1);
            Text.text="\(radical0)";
        }
        else
        {
            
            Text.text="\(radical1)";
        }
    }
    
}

