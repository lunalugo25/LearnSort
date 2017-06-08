//: Playground - noun: a place where people can play

import UIKit


import UIKit

struct Movies {
    var title: String
    var version: Int?
    var subtitle: String?
    var rating: Double
    
    func description() -> String {
        let versionInt = self.version ?? -1
        var version = ""
        switch versionInt {
        case -1:
            version = ""
        default:
            let subtitle = self.subtitle ?? ""
            version = " - " + versionInt.description + " - " + subtitle
        }
        return self.title + version
    }
}


let favoriteMovies = [
    Movies(title: "Hobbit", version: 1, subtitle: "An Unexpected Journey", rating: 5.0),
    Movies(title: "Pirates of the Caribbean", version: 5, subtitle: "Dead Men Tell No Tales", rating: 4.5),
    Movies(title: "Hobbit", version: 3, subtitle: "The Battle of the Five Armies", rating: 5.0),
    Movies(title: "Pirates of the Caribbean", version: 3, subtitle: "At World's End", rating: 4.5),
    Movies(title: "Pirates of the Caribbean", version: 1, subtitle: "The Curse of the Black Pearl", rating: 4.5),
    Movies(title: "Pirates of the Caribbean", version: 2, subtitle: "Dead Man's Chest", rating: 4.5),
    Movies(title: "Hobbit", version: 2, subtitle: "The Desolation of Smaug", rating: 5.0),
    Movies(title: "Pirates of the Caribbean", version: 4, subtitle: "On Stranger Tides", rating: 4.5),
    Movies(title: "Jingle All the Way", version: nil, subtitle: nil, rating: 5.0)
]

for movie in favoriteMovies {
    print(movie.description())
}

print("==========")

let sortTitleOne = favoriteMovies.sorted { (moviePrev, movieNext) -> Bool in
    return moviePrev.title < movieNext.title
}

let sortTitleTwo = favoriteMovies.sorted {
    if $0.title != $1.title {
        return $0.title < $1.title
    } else {
        let versionZero = $0.version ?? -1
        let versionOne = $1.version ?? -1
        return versionZero < versionOne
    }
}

for movie in sortTitleOne {
    print("One - " + movie.description())
}

print("---------")

for movie in sortTitleTwo {
    print(movie.description())
}