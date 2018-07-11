//
//  books.swift
//  BooksList
//
//  Created by Tommy Glasser on 3/21/17.
//  Copyright © 2017 Tommy Glasser. All rights reserved.
//

import Foundation

// Book Class that contain properties of a book
class Book {
    // properties
    var id = ""
    var cat: [String] = []
    var name = ""
    var author = ""
    var series_t = ""
    var sequence_i = 0
    var genre_s = ""
    var inStock = false
    var price = 0.0
    var pages_i = 0
    // basic constructor
    init() {}
    // initializer for all properties
    init(id: String, cat: [String], name: String, author: String, series_t: String, sequence_i: Int, genre_s: String, inStock: Bool, price: Double, pages_i: Int) {
        self.id = id
        self.cat = cat
        self.name = name
        self.author = author
        self.series_t = series_t
        self.sequence_i = sequence_i
        self.genre_s = genre_s
        self.inStock = inStock
        self.price = price
        self.pages_i = pages_i
    }
    // returns all information of a given book
    func getInfo() {
        print("Book Name: \(name)")
        print("Book Author: \(author)")
        print("Book Categories: \(cat)")
        print("Book ISBN: \(id)")
        print("Book Series: \(series_t)")
        print("Book Sequence: \(sequence_i)")
        print("Book Genre: \(genre_s)")
        print("Book Pages: \(pages_i)")
        print("Book Price: \(price)")
        print("In Stock?: \(inStock)")
    }

    func convertDictToObj(key: String, value: Any) {
        switch key {
        case "id":
            if let _ = value as? String {
                id = value as! String
            }
        case "cat":
            if let _ = value as? [String] {
                cat = value as! [String]
            }
        case "name":
            if let _ = value as? String {
                name = value as! String
            }
        case "author":
            if let _ = value as? String {
                author = value as! String
            }
        case "series_t":
            if let _ = value as? String {
                series_t = value as! String
            }
        case "sequence_i":
            if let _ = value as? Int {
                sequence_i = value as! Int
            }
        case "genre_s":
            if let _ = value as? String {
                genre_s = value as! String
            }
        case "inStock":
            if let _ = value as? Bool {
                inStock = value as! Bool
            }
        case "price":
            if let _ = value as? Double {
                price = value as! Double
            }
        case "pages_i":
            if let _ = value as? Int {
                pages_i = value as! Int
            }
        default: print("There is no key")
        }
    }
}
