//
//  Quiz.swift
//  Quiz
//
//  Created by Julián Romero on 08/03/16.
//  Copyright © 2016 wuonm. All rights reserved.
//

import Foundation

/// Models a quiz based on subjects and multiple choice definitions.

struct Subject
{
    /// The subject's name
    let name: String
    /// The subject's explanation
    let definition: String
}

struct Quiz
{
    let subjects: [Subject]
    
    /// Returns 1 definition picked up randomly for all existing subjects except the
    /// one given in the `subject` parameter.
    func fakeDefinitionFor(subject: Subject) -> String {
        // Collect all possible definitions except the one for `subject`
        var all = [String]()
        for s in subjects {
            if s.name != subject.name {
                // only add the definition if the subject's name is different
                all.append(s.definition)
            }
        }
        
        // Get a random one from `all` collected definitions
        let total = UInt32(all.count)
        // Calculate a random number between 0 and total - 1
        let randomPosition = Int(arc4random_uniform(total))
        let selected = all[randomPosition]
        
        return selected
    }
}

