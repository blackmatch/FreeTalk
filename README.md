# FreeTalk
Just talk about your idea.This is aim to improve coding skills.So, just be free to code.
##About the project
I advise to create a socket base app.First, we need to realize realtime communication(just like wechat).
###CocoaPods or Carchage
We all know CocoaPods, but I want to try new things.Carthage looks good! So, I decide to use CocoaPods and Carthage to manage third-party framewords at the same time. I want to use 
Carthage more. So, if the framework I decide to use is available on Carthage, I will do it.
If not, I will use CocoaPods.
####Carthage
the Cartfile:  

	github "robbiehanson/CocoaAsyncSocket" "master"

####CocoaPods
the Podfile:  

	# Uncomment this line to define a global platform for your project
  	platform :ios, '8.0'

  	target 'FreeTalk' do
  	# Uncomment this line if you're using Swift or would like to use dynamic frameworks
  	# use_frameworks!

  	# Pods for FreeTalk
  	pod 'Masonry'

  	target 'FreeTalkTests' do
    inherit! :search_paths
    # Pods for testing
  	end

  	target 'FreeTalkUITests' do
    inherit! :search_paths
    # Pods for testing
  	end

  	end  
