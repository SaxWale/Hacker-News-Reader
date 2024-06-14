


protocol AdvancedLikeCertificate {
    
    func fixLikes()
}


class LikeMethodMan {
    
    var delegate: AdvancedLikeCertificate?
    
    
    func assessLikesClicked () {
        
        print("Who clicked Like")
    }
    
    func EmergencyCall() {
        
        delegate?.fixLikes()
    }
    
}


struct ITTechnician: AdvancedLikeCertificate {
    
    init(handler: LikeMethodMan) {
        handler.delegate = self
    }
    
    func fixLikes() {
        
        print("Likes =+ 1")
    }
    
    
}


let emilio = LikeMethodMan()
let kamza = ITTechnician(handler: emilio)


