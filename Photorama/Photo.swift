import Foundation

class Photo {
    
    let photoID: String
    let title: String
    let remoteURL: URL
    let dateTaken: Date
    
    init(title: String, photoID: String, remoteURL: URL, dateTaken: Date) {
        self.title = title
        self.photoID = photoID
        self.remoteURL = remoteURL
        self.dateTaken = dateTaken
    }
    
}

extension Photo: Equatable {
    static func ==(lhs: Photo, rhs: Photo) -> Bool {
        return lhs.photoID == rhs.photoID
    }
}
