//
//  GameViewController.swift
//  Project11
//
//  Created by Sukanya Yanamala on 06/06/2022.
//

import UIKit

class Person: NSObject, Codable {
	var name: String
	var image: String

	init(name: String, image: String) {
		self.name = name
		self.image = image
	}
}
