//
//  Extensions.swift
//  NetflixClone
//
//  Created by Arthur Damous on 15/08/22.
//

import Foundation


extension String {
    func capitalizeFirstLetter() -> String{
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
