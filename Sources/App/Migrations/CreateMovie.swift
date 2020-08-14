//
//  File.swift
//  
//
//  Created by Joseph Veverka on 8/14/20.
//

import Foundation
import Fluent
import FluentPostgresDriver

struct CreateMovie: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        
        database.schema("movies")
            .id()
            .field("title", .string)
            .create()
        
        
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("movies").delete()
    }
}

