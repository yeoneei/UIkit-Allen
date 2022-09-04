import UIKit

protocol RemoteControlDelegate{
    func channelUp()
    func channelDown()
}

class RemoteControll{
    var delegate: RemoteControlDelegate?
    
    func doSomething(){
        
    }
    
    func channelUp(){
        delegate?.channelUp()
    }
    
    func channelDown(){
        delegate?.channelDown()
    }
}


class TV: RemoteControlDelegate {
    func channelUp(){
        print(#function)
    }
    
    func channelDown(){
        print(#function)
    }
}


let remote = RemoteControll()
let samsungTV = TV()

remote.delegate = samsungTV
