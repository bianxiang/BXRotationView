# BXRotationView

##  作者:卞翔
##  联系qq:712641411
##  QQ交流群:1023537528

## BXRotationView: 一个简单易用的开奖翻转实现

![image](https://github.com/bianxiang/BXRotationView/blob/master/BXRotationView/BXRotationView/BXRotationViewGIF.gif?raw=true)  

###该组件使用方法如下：
```swift

class ViewController: UIViewController,BXRotationViewDelegate {

    @IBOutlet weak var bx: BXRotationView!


    override func viewDidLoad() {
    super.viewDidLoad()


    /**
    *  代码使用方法
    */

    let rotationView = BXRotationView(frame: CGRectMake(100, 100, 200, 200))
    rotationView.delegate = self

    rotationView.first.image = UIImage(named: "1.jpg")
    rotationView.second.image = UIImage(named: "2.jpg")
    //        rotationView.delega
    self.view.addSubview(rotationView)


    /**
    *  xib使用方法若要使用请打开
    */

    //        bx.first.image = UIImage(named: "1.jpg")
    //        bx.second.image = UIImage(named: "2.jpg")
    //        bx.delegate = self

    }


    func bxRotationViewDidSelected(result: String) {
    print(result)
    }

}

```