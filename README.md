

<h1>HibridPlayerIOS</h1>

<h3>Documentation</h3>

<br><br>




<h3>Сreate your own project and add SDK</h3>

* Create Your own Xcode project.**
* In the project directory, create a file: module.modulemap with a .dist extension.**
* To do this, you can create an empty file using Xcode.**



<br>

<h3>Module.modulemap.dist to copy</h3>

    {
    
        module GoogleAnalytics 
        header "GAI.h"
        header "GAIDictionaryBuilder.h"
        header "GAIEcommerceFields.h"
        header "GAIEcommerceProduct.h"
        header "GAIEcommerceProductAction.h"
        header "GAIEcommercePromotion.h"
        header "GAIFields.h"
        header "GAILogger.h"
        header "GAITrackedViewController.h"
        header "GAITracker.h"
        export \*
        
      }



<br>

<h3>CocoaPods</h3>

* The HibridPlayerIOS SDK is available through CocoaPods. Initialize the podfile and add the code to your Podfile from the example below. After adding, run **pod install.**





<br>

<h3>Podfile to copy</h3>

    platform :ios, '13.0'

    target 'YourTargetName' do

    pod 'HibridPlayerIOS', git: '<https://github.com/Bo-Bogdan/HibridPlayerIOS.git>'

    end

    post\_install do |installer|

    system("echo '/\* START post install scripts \*/'")

    system("cp module.modulemap.dist

    Pods/Headers/Public/GoogleAnalytics/module.modulemap && echo '- Fixed import of

    GoogleAnalytics module'")

    system("echo '/\* END post install scripts \*/'")





<h3>Set up your SDK</h3>

* Create your UIView.
* Add for view our class “HibridPlayerView” and add our module “HibridStreamPlayer”.





<h3>Set up your SDK</h3>

* Import SDK 
    
    "Import HibridStreamPlayer”

* Drag outlet to ViewController.





<h3>Set up your SDK</h3>



* Add incoming access keys to AppDelegate and you're done. Launch the project on a mobile device.

