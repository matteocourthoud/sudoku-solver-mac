//
//  intermediateViewController.swift
//  Sudoku Solver
//
//  Created by Matteo Courthoud on 05/08/16.
//  Copyright © 2016 Matteo Courthoud. All rights reserved.
//

import Cocoa

class intermediateViewController: NSViewController {
    
    @IBOutlet weak var generateButton: NSButton!
    @IBOutlet weak var titleString: NSTextField!
    @IBOutlet weak var subtitleString: NSTextField!
    @IBOutlet weak var choseDifficulty: NSPopUpButton!
    @IBOutlet weak var playButton: NSButton!
    
    
    // My variables
    var mySudoku = Sudoku(cells: [Cell]())
    var solvedSudoku = Sudoku(cells: [Cell]())
    
    // Variables to generate random sudoku
    var counter = 0
    var sudokuArray = [Sudoku]()
    var solutionsArray = [[Int]()]
    var solveOnlyOneNumber = false

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
    
    // Passo il sudoku alla prossima schermata
    override func prepareForSegue(segue: NSStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "segue2") {
            let svc = segue.destinationController as! secondViewController;
            
            svc.mySudoku = mySudoku
            svc.solvedSudoku = solvedSudoku
            
            if choseDifficulty.indexOfSelectedItem == 1 { svc.difficulty = "easy" }
            else if choseDifficulty.indexOfSelectedItem == 2 { svc.difficulty = "medium" }
            else if choseDifficulty.indexOfSelectedItem == 3 { svc.difficulty = "hard" }
            

        }
    }
    
    
    
    
    
    
    // Solve sudoku, first method
    func solveSudoku1(sudoku: Sudoku) -> Sudoku {
        var tempSudoku = sudoku
        var emptyCells = sudoku.getEmptyCells()
        
        for i in 0...(emptyCells.count-1) {
            let tempCell = emptyCells[i]
            if tempSudoku.canEnterInCell(tempCell).count == 1 {
                let number = tempSudoku.canEnterInCell(tempCell)[0]
                // print("Method 1 added \(number) in cell \(tempCell.getRow())-\(tempCell.getColumn())")
                tempSudoku = tempSudoku.changeCellValue(tempCell.getIndex(), assignValue: number)
                if solveOnlyOneNumber == true { return tempSudoku }
            }
        }
        return tempSudoku
    }
    
    
    
    // Solve sudoku, second method
    func solveSudoku2(sudoku: Sudoku) -> Sudoku {
        var tempSudoku = sudoku
        
        for feature in ["row","column","square"] {
            for i in 1...9 {
                for number in 1...9 {
                    var tempCells = tempSudoku.possibleCells(number, featureNumber: i, featureName: feature)
                    if tempCells.count == 1 {
                        let tempCell = tempCells[0]
                        // print("Method 2 added \(number) in cell \(tempCell.getRow())-\(tempCell.getColumn())")
                        tempSudoku = tempSudoku.changeCellValue(tempCell.getIndex(), assignValue: number)
                        if solveOnlyOneNumber == true { return tempSudoku }
                    }
                }
            }
        }
        return tempSudoku
    }
    
    
    
    
    
    // Check if a sudoku can be solved using method 1 and 2
    func IcanSolve(sudoku: Sudoku, easyOnly: Bool) -> Bool {
        var tempSudoku = sudoku
        
        var newCellsSolved = true
        while newCellsSolved == true {
            let emptyCells = tempSudoku.getEmptyCells().count
            if easyOnly == false { tempSudoku = solveSudoku1(tempSudoku) }
            tempSudoku = solveSudoku2(tempSudoku)
            if tempSudoku.getEmptyCells().count == 0 || tempSudoku.getEmptyCells().count == emptyCells {newCellsSolved = false}
        }
        
        return tempSudoku.solved()
    }
    
    
    
    
    
    
    // Generates and empty sudoku
    func emptySudoku() -> Sudoku {
        var tempCells = [Cell]()
        
        // Creates and empty sudoku
        var dex = 0
        for i in 0...80 {
            if i%9 == 0 { dex = dex+1 }
            tempCells.append(Cell(row: dex, column: i%9+1, value: 0))
        }
        
        return Sudoku(cells: tempCells)
        
    }
    
    
    
    
    
    // Generates a random full sudoku
    func randomFullSudoku(sudoku: Sudoku) -> Sudoku {
        var tempSudoku = sudoku
        
        if solutionsArray[counter].count == 0 {
            sudokuArray[counter] = tempSudoku
            solutionsArray[counter] = tempSudoku.canEnterInCell(tempSudoku.getCells()[counter])
        }
        
        let randomInt = Int(arc4random_uniform(UInt32(solutionsArray[counter].count - 1)))
        let lastEntry = solutionsArray[counter][randomInt]
        print("I try number \(lastEntry) in cell \(counter)")
        
        
        // I try a cell and remove it from the possible solutions
        tempSudoku = tempSudoku.changeCellValue(counter, assignValue: lastEntry)
        solutionsArray[counter].removeAtIndex(randomInt)
        
        
        // Se è risolto, termino
        if tempSudoku.solved() == true { return tempSudoku }
        
        
        // Se non posso piu andare avanti, torno indietro
        if tempSudoku.countEntryCells() < tempSudoku.getEmptyCells().count {
            
            while solutionsArray[counter].count == 0 {
                print("Vicolo cieco, torno indietro\n")
                counter = counter - 1
            }
            tempSudoku = sudokuArray[counter]
            counter = counter - 1
        }
        
        // Sennò procedo
        counter = counter + 1
        tempSudoku = randomFullSudoku(tempSudoku)
        
        return tempSudoku
    }
    
    
    
    
    // Remove numbers from a full sudoku
    func removeNumbers(sudoku: Sudoku) -> Sudoku {
        var tempSudoku = sudoku
        var allNumbers = [Int]()
        for i in 0...80 { allNumbers.append(i) }
        var difficulty = 0
        if choseDifficulty.indexOfSelectedItem == 1 { difficulty = 60 }
        if choseDifficulty.indexOfSelectedItem == 2 { difficulty = 20 }
        
        
        while allNumbers.count > difficulty {
            let randomInt = Int(arc4random_uniform(UInt32(allNumbers.count - 1)))
            let tempSudoku2 = tempSudoku.changeCellValue(allNumbers[randomInt], assignValue: 0)
            
            print("Rimuovo dalla cella \(allNumbers[randomInt]). Tentativi rimasti: \(allNumbers.count)")
            allNumbers.removeAtIndex(randomInt)
            if choseDifficulty.indexOfSelectedItem == 1 {
                if IcanSolve(tempSudoku2, easyOnly: true) { tempSudoku = tempSudoku2 }
            }
            else { if IcanSolve(tempSudoku2, easyOnly: false) { tempSudoku = tempSudoku2 } }
        }
        
        return tempSudoku
    }
    
    
    
    
    
    // Difficulty button
    @IBAction func chooseDifficulty(sender: AnyObject) {
        if sender.indexOfSelectedItem() > 0 {
            generateButton.enabled = true
            subtitleString.stringValue = "The process will take a few seconds\n Please wait..."
        }
        else {
            generateButton.enabled = false
            subtitleString.stringValue = ""
        }
    }
    
    
    
    
    // Button that generates the sudoku
    @IBAction func generateSudoku(sender: AnyObject) {
        // Create empty arrays for the generation of the sudoku
        counter = 0
        sudokuArray = [Sudoku]()
        solutionsArray = [[Int]()]
        for _ in 0...81 {
            sudokuArray.append(Sudoku(cells: [Cell]()))
            solutionsArray.append([Int]())
        }
        
        // Generate random sudoku
        mySudoku = randomFullSudoku(emptySudoku())
        solvedSudoku = mySudoku
        
        // Remove numbers from sudoku
        mySudoku = removeNumbers(mySudoku)
        
        
        titleString.stringValue = "Random sudoku generated!"
        subtitleString.stringValue = ""
        choseDifficulty.enabled = false
        generateButton.enabled = false
        playButton.enabled = true
    }

    
}
