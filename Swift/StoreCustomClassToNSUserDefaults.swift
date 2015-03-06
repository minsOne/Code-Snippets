/*
Initializing multidimensional array
Platform : iOS / OSX
Language : Swift
*/

// MARK : Store custom class to NSUserDefaults

class MusicList: NSObject, NSCoding {
    
    var title: String?
    var titlePersistentID: NSNumber?
    var tracks: [Track]?
    
    func encodeWithCoder(coder: NSCoder) {
        coder.encodeObject(self.title, forKey: "title")
        coder.encodeObject(self.titlePersistentID, forKey: "titlePersistentID")
        coder.encodeObject(self.tracks, forKey: "tracks")
    }
    
    override init() {
        super.init()
    }
    
    required init(coder: NSCoder) {
        self.title = coder.decodeObjectForKey("title") as? String
        self.titlePersistentID = coder.decodeObjectForKey("titlePersistentID") as? NSNumber
        self.tracks = coder.decodeObjectForKey("tracks") as? [Track]
    }
    
}

class Track: NSObject, NSCoding {
    
    var trackName: String?
    var trackPersistentID: NSNumber?
    
    func encodeWithCoder(coder: NSCoder) {
        coder.encodeObject(self.trackName, forKey: "trackName")
        coder.encodeObject(self.trackPersistentID, forKey: "trackPersistentID")
    }
    
    override init() {
        super.init()
    }
    
    required init(coder: NSCoder) {
        self.trackName = coder.decodeObjectForKey("trackName") as? String
        self.trackPersistentID = coder.decodeObjectForKey("trackPersistentID") as? NSNumber
    }
}

func initialMusicLists() -> [MusicList] {
    var unArchivedData:AnyObject? = NSUserDefaults.standardUserDefaults().objectForKey("musiclist")
    
    if let tmpArchivedData: AnyObject = unArchivedData {
        var value = NSKeyedUnarchiver.unarchiveObjectWithData(unArchivedData as! NSData) as! [MusicList]
        return value
    }
    return [MusicList]()
}

func storeMusicList(#musicLists: [MusicList]) {
    
    var archivedMusicLists = NSKeyedArchiver.archivedDataWithRootObject(musicLists)
    
    NSUserDefaults.standardUserDefaults().setObject(archivedMusicLists, forKey: "musiclist")
    NSUserDefaults.standardUserDefaults().synchronize()
}