//
//  TableViewController.swift
//  Quiz
//
//  Created by Julián Romero on 08/03/16.
//  Copyright © 2016 wuonm. All rights reserved.
//
import UIKit

/// Shows a list of questions in a table

class TableViewController: UITableViewController
{
    // the quiz
    let quiz = moonQuiz // change to solarSystemQuiz to see how the table can work with quiz
    
    // the table controller will call these methods to get the content of the table
    // it needs to know:
    // - the number of sections (a section is just a group of rows)
    // - the number of rows in each different section
    // - the actual content for each different row

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // the table have 1 section for each quiz's question
        return quiz.subjects.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // we'll show each subject name plus 3 possible answers (the correct one and 2 fakes)
        // 4 rows total
        return 1 + 3
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // create a cell by reusing an existing one
        // the identifier is required to know which cell type should be used
        let cell = tableView.dequeueReusableCellWithIdentifier("question", forIndexPath: indexPath)
        
        // `indexPath` has two properties with the "coordinates" of the cell: the section and the row
        let section = indexPath.section
        let row = indexPath.row
        
        // get the question for this section
        // we use the `section` as position in the questions array because we said above
        // that there will be a section for each questions
        let subject = quiz.subjects[section]
        
        print("section: \(section) row: \(row) subject: \(subject.name)") // breakpoint here to inspect the available data
       
        if row == 0 {
            // subject name
            cell.textLabel?.text = "Subject: \(subject.name)"
        }
        else {
            // there are 4 rows per section, but the first one is already used for the subject
            // so we need to keep that in count to calculate the position
            // we put the (for now) a fake answer, the correct one, and then another fake
            if row == 2 {
                cell.textLabel?.text = " * \(subject.definition)"
            }
            else {
                // incorrect definition from rows 1 and 3
                cell.textLabel?.text = " * \(quiz.fakeDefinitionFor(subject))"
            }
        }
        
        return cell
    }
}
