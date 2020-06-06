//
//  mainViewController.swift
//  Sudoku Solver
//
//  Created by Matteo Courthoud on 29/07/16.
//  Copyright © 2016 Matteo Courthoud. All rights reserved.
//

import Cocoa

class mainViewController: NSViewController {
    
    
    @IBOutlet weak var leadText: NSTextField!
    @IBOutlet weak var analyzeButton: NSButton!
    @IBOutlet weak var addNumberButton: NSButton!
    @IBOutlet weak var solveButton: NSButton!
    @IBOutlet weak var goBack: NSButton!
    

    @IBOutlet weak var Cell_11: NSTextField!
    @IBOutlet weak var Cell_12: NSTextField!
    @IBOutlet weak var Cell_13: NSTextField!
    @IBOutlet weak var Cell_14: NSTextField!
    @IBOutlet weak var Cell_15: NSTextField!
    @IBOutlet weak var Cell_16: NSTextField!
    @IBOutlet weak var Cell_17: NSTextField!
    @IBOutlet weak var Cell_18: NSTextField!
    @IBOutlet weak var Cell_19: NSTextField!
    
    @IBOutlet weak var Cell_21: NSTextField!
    @IBOutlet weak var Cell_22: NSTextField!
    @IBOutlet weak var Cell_23: NSTextField!
    @IBOutlet weak var Cell_24: NSTextField!
    @IBOutlet weak var Cell_25: NSTextField!
    @IBOutlet weak var Cell_26: NSTextField!
    @IBOutlet weak var Cell_27: NSTextField!
    @IBOutlet weak var Cell_28: NSTextField!
    @IBOutlet weak var Cell_29: NSTextField!
    
    @IBOutlet weak var Cell_31: NSTextField!
    @IBOutlet weak var Cell_32: NSTextField!
    @IBOutlet weak var Cell_33: NSTextField!
    @IBOutlet weak var Cell_34: NSTextField!
    @IBOutlet weak var Cell_35: NSTextField!
    @IBOutlet weak var Cell_36: NSTextField!
    @IBOutlet weak var Cell_37: NSTextField!
    @IBOutlet weak var Cell_38: NSTextField!
    @IBOutlet weak var Cell_39: NSTextField!
    
    @IBOutlet weak var Cell_41: NSTextField!
    @IBOutlet weak var Cell_42: NSTextField!
    @IBOutlet weak var Cell_43: NSTextField!
    @IBOutlet weak var Cell_44: NSTextField!
    @IBOutlet weak var Cell_45: NSTextField!
    @IBOutlet weak var Cell_46: NSTextField!
    @IBOutlet weak var Cell_47: NSTextField!
    @IBOutlet weak var Cell_48: NSTextField!
    @IBOutlet weak var Cell_49: NSTextField!
    
    @IBOutlet weak var Cell_51: NSTextField!
    @IBOutlet weak var Cell_52: NSTextField!
    @IBOutlet weak var Cell_53: NSTextField!
    @IBOutlet weak var Cell_54: NSTextField!
    @IBOutlet weak var Cell_55: NSTextField!
    @IBOutlet weak var Cell_56: NSTextField!
    @IBOutlet weak var Cell_57: NSTextField!
    @IBOutlet weak var Cell_58: NSTextField!
    @IBOutlet weak var Cell_59: NSTextField!
    
    @IBOutlet weak var Cell_61: NSTextField!
    @IBOutlet weak var Cell_62: NSTextField!
    @IBOutlet weak var Cell_63: NSTextField!
    @IBOutlet weak var Cell_64: NSTextField!
    @IBOutlet weak var Cell_65: NSTextField!
    @IBOutlet weak var Cell_66: NSTextField!
    @IBOutlet weak var Cell_67: NSTextField!
    @IBOutlet weak var Cell_68: NSTextField!
    @IBOutlet weak var Cell_69: NSTextField!
    
    @IBOutlet weak var Cell_71: NSTextField!
    @IBOutlet weak var Cell_72: NSTextField!
    @IBOutlet weak var Cell_73: NSTextField!
    @IBOutlet weak var Cell_74: NSTextField!
    @IBOutlet weak var Cell_75: NSTextField!
    @IBOutlet weak var Cell_76: NSTextField!
    @IBOutlet weak var Cell_77: NSTextField!
    @IBOutlet weak var Cell_78: NSTextField!
    @IBOutlet weak var Cell_79: NSTextField!
    
    @IBOutlet weak var Cell_81: NSTextField!
    @IBOutlet weak var Cell_82: NSTextField!
    @IBOutlet weak var Cell_83: NSTextField!
    @IBOutlet weak var Cell_84: NSTextField!
    @IBOutlet weak var Cell_85: NSTextField!
    @IBOutlet weak var Cell_86: NSTextField!
    @IBOutlet weak var Cell_87: NSTextField!
    @IBOutlet weak var Cell_88: NSTextField!
    @IBOutlet weak var Cell_89: NSTextField!
    
    @IBOutlet weak var Cell_91: NSTextField!
    @IBOutlet weak var Cell_92: NSTextField!
    @IBOutlet weak var Cell_93: NSTextField!
    @IBOutlet weak var Cell_94: NSTextField!
    @IBOutlet weak var Cell_95: NSTextField!
    @IBOutlet weak var Cell_96: NSTextField!
    @IBOutlet weak var Cell_97: NSTextField!
    @IBOutlet weak var Cell_98: NSTextField!
    @IBOutlet weak var Cell_99: NSTextField!
    
    
    // Variables
    var allTextFields = [NSTextField]()
    var mySudoku = Sudoku(cells: [Cell]())
    
    // Variables for solution 3
    var counter = 0
    var sudokuArray = [Sudoku]()
    var solutionsArray = [[Cell]()]
    var solveOnlyOneNumber = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create array of textfields
        allTextFields.append(Cell_11)
        allTextFields.append(Cell_12)
        allTextFields.append(Cell_13)
        allTextFields.append(Cell_14)
        allTextFields.append(Cell_15)
        allTextFields.append(Cell_16)
        allTextFields.append(Cell_17)
        allTextFields.append(Cell_18)
        allTextFields.append(Cell_19)
        allTextFields.append(Cell_21)
        allTextFields.append(Cell_22)
        allTextFields.append(Cell_23)
        allTextFields.append(Cell_24)
        allTextFields.append(Cell_25)
        allTextFields.append(Cell_26)
        allTextFields.append(Cell_27)
        allTextFields.append(Cell_28)
        allTextFields.append(Cell_29)
        allTextFields.append(Cell_31)
        allTextFields.append(Cell_32)
        allTextFields.append(Cell_33)
        allTextFields.append(Cell_34)
        allTextFields.append(Cell_35)
        allTextFields.append(Cell_36)
        allTextFields.append(Cell_37)
        allTextFields.append(Cell_38)
        allTextFields.append(Cell_39)
        allTextFields.append(Cell_41)
        allTextFields.append(Cell_42)
        allTextFields.append(Cell_43)
        allTextFields.append(Cell_44)
        allTextFields.append(Cell_45)
        allTextFields.append(Cell_46)
        allTextFields.append(Cell_47)
        allTextFields.append(Cell_48)
        allTextFields.append(Cell_49)
        allTextFields.append(Cell_51)
        allTextFields.append(Cell_52)
        allTextFields.append(Cell_53)
        allTextFields.append(Cell_54)
        allTextFields.append(Cell_55)
        allTextFields.append(Cell_56)
        allTextFields.append(Cell_57)
        allTextFields.append(Cell_58)
        allTextFields.append(Cell_59)
        allTextFields.append(Cell_61)
        allTextFields.append(Cell_62)
        allTextFields.append(Cell_63)
        allTextFields.append(Cell_64)
        allTextFields.append(Cell_65)
        allTextFields.append(Cell_66)
        allTextFields.append(Cell_67)
        allTextFields.append(Cell_68)
        allTextFields.append(Cell_69)
        allTextFields.append(Cell_71)
        allTextFields.append(Cell_72)
        allTextFields.append(Cell_73)
        allTextFields.append(Cell_74)
        allTextFields.append(Cell_75)
        allTextFields.append(Cell_76)
        allTextFields.append(Cell_77)
        allTextFields.append(Cell_78)
        allTextFields.append(Cell_79)
        allTextFields.append(Cell_81)
        allTextFields.append(Cell_82)
        allTextFields.append(Cell_83)
        allTextFields.append(Cell_84)
        allTextFields.append(Cell_85)
        allTextFields.append(Cell_86)
        allTextFields.append(Cell_87)
        allTextFields.append(Cell_88)
        allTextFields.append(Cell_89)
        allTextFields.append(Cell_91)
        allTextFields.append(Cell_92)
        allTextFields.append(Cell_93)
        allTextFields.append(Cell_94)
        allTextFields.append(Cell_95)
        allTextFields.append(Cell_96)
        allTextFields.append(Cell_97)
        allTextFields.append(Cell_98)
        allTextFields.append(Cell_99)
        
        // Set a sudoku as test
        let easySudoku = ["","","3","9","","","","5","1","5","4","6","","1","8","3","","","","","","","","7","4","2","","","","9","","5","","","3","","2","","","6","","3","","","4","","8","","","7","","2","","","","9","7","3","","","","","","","","1","8","2","","9","4","7","8","5","","","","4","6","",""]
        let hardSudoku = ["4","","5","","","8","","2","","","","","1","","","","","","","2","","","6","7","","9","","","","8","","","","","3","","5","","6","","","","2","","1","","1","","","","","4","","","","8","","9","7","","","6","","","","","","","1","","","","","9","","8","","","5","","7"]
        let veryHardSudoku = ["","2","","","","6","","9","","4","","6","","","","","","","5","","","","8","","2","","1","","5","9","2","","1","","","","","","","","","","","","","","","","4","","7","6","5","","3","","2","","5","","","","4","","","","","","","3","","5","","1","","9","","","","2",""]
        let impossibleSudoku = ["8","","","","","","","","","","","3","6","","","","","","","7","","","9","","2","","","","5","","","","7","","","","","","","","4","5","7","","","","","","1","","","","3","","","","1","","","","","6","8","","","8","5","","","","1","","","9","","","","","4","",""]
        /*
        for i in 0...80 {
            allTextFields[i].stringValue = impossibleSudoku[i]
        }
        */
        
        
        // Show sudoku if there is one
        if mySudoku.countNumbers() > 0 {
            for i in 0...(allTextFields.count-1) {
                if mySudoku.getCells()[i].getValue()>0 {
                    allTextFields[i].stringValue = "\(mySudoku.getCells()[i].getValue())"
                }
            }
        }
 
    }
    
    
    
    
    
    
    // Read the grid
    func readGrid() -> Bool {
        
        leadText.stringValue = "Insert the numbers into the grid"
        var allCells = [Cell]()
        
        
        // Create array of cells' content
        var dex = 0
        for i in 0...(allTextFields.count - 1) {
            if i%9 == 0 { dex = dex+1 }
            let text = allTextFields[i]
            var cell = Cell(row: dex, column: i%9+1, value: 0)
            
            if (text.stringValue=="") || (text.stringValue==" ") || (text.stringValue=="1") || (text.stringValue=="2") || (text.stringValue=="3") || (text.stringValue=="4") || (text.stringValue=="5") || (text.stringValue=="6") || (text.stringValue=="7") || (text.stringValue=="8") || (text.stringValue=="9") {
                if !(text.stringValue=="") && !(text.stringValue==" ") {
                    cell = Cell(row: cell.getRow(), column: cell.getColumn(), value: Int(text.stringValue)!)
                }
            }
            // If the string is not empty or a number, sudoku cannot be solved
            else {
                allTextFields[i].stringValue = ""
                return false
            }
            allCells.append(cell)
        }
        
        mySudoku = Sudoku(cells: allCells)
        return true
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
    
    
    
    
    // Read the possible outcomes for metod 3
    func readOutcomes() -> String {
        var tempString = "AVANTI! Siamo al livello \(counter).\n\n"
        
        for i in 0...counter {
            tempString = tempString+"Il livello \(i) ha ancora \(solutionsArray[i].count) possibilità left \n"
        }
        return tempString
    }
    
    
    
    
    
    // Third method 
    func solveSudoku3(sudoku: Sudoku) -> Sudoku {
        var tempSudoku = sudoku

        
        // I save the current sudoku
        
        if solutionsArray[counter].count == 0 {
            sudokuArray[counter] = tempSudoku
            solutionsArray[counter] = tempSudoku.getLeastEntries()
        }
        let lastEntry = solutionsArray[counter][solutionsArray[counter].count - 1]
        print(readOutcomes())
        
        // I try a cell and remove it from the possible solutions
        tempSudoku = tempSudoku.changeCellValue(lastEntry.getIndex(), assignValue: lastEntry.getValue())
        // print("METHOD 3 added \(lastEntry.getValue()) in cell \(lastEntry.getRow())-\(lastEntry.getColumn())")
        solutionsArray[counter].removeLast()
        
        var newCellsSolved = true
        while newCellsSolved == true {
            let emptyCells = tempSudoku.getEmptyCells().count
            tempSudoku = solveSudoku1(tempSudoku)
            tempSudoku = solveSudoku2(tempSudoku)
            if tempSudoku.getEmptyCells().count == 0 || tempSudoku.getEmptyCells().count == emptyCells {newCellsSolved = false}
        }
        
        
        // Se è risolto, termino
        if tempSudoku.solved() == true {
            return tempSudoku
        }
        
        
        // Se non posso piu andare avanti, torno indietro
        if tempSudoku.countEntryCells() < tempSudoku.getEmptyCells().count {

            while solutionsArray[counter].count == 0 {
                // print("Vicolo cieco, torno indietro")
                counter = counter - 1
            }
            tempSudoku = sudokuArray[counter]
            counter = counter - 1
        }
            
        
        
        // Sennò procedo
        counter = counter + 1
        tempSudoku = solveSudoku3(tempSudoku)
        
        return tempSudoku
    }
    
    
    
    
    
    
    
    
    // "SOLVE" button solves the sudoku
    @IBAction func solveIT(sender: NSButton) {
        
        
        // First and second method
        var newCellsSolved = true
        while newCellsSolved == true {
            let emptyCells = mySudoku.getEmptyCells().count
            mySudoku = solveSudoku1(mySudoku)
            mySudoku = solveSudoku2(mySudoku)
            if mySudoku.getEmptyCells().count == 0 || mySudoku.getEmptyCells().count == emptyCells {newCellsSolved = false}
        }
        
        
        // If sudoku is solved, end the game
        if mySudoku.solved()==true {
            leadText.stringValue = "Sudoku solved!"
        }
         
        
        // Third method
        else {
            
            // Create empty arrays for solution 3
            counter = 0
            sudokuArray = [Sudoku]()
            solutionsArray = [[Cell]()]
            for _ in 0...81 {
                sudokuArray.append(Sudoku(cells: [Cell]()))
                solutionsArray.append([Cell]())
            }
            
            // Launch solution 3
            mySudoku = solveSudoku3(mySudoku)
        }
        
        
        // If sudoku is solved, end the game
        if mySudoku.solved()==true {
            leadText.stringValue = "Sudoku solved!"
        }
        
        
        // Show solution
        for i in 0...(allTextFields.count-1) {
            if mySudoku.getCells()[i].getValue()>0 {
                allTextFields[i].stringValue = "\(mySudoku.getCells()[i].getValue())"
            }
        }
        
        analyzeButton.enabled = false
        addNumberButton.enabled = false
        solveButton.enabled = false
    }
    
    
    
    
    
    
    
    
    
    // Wen ANALYZE button is pressed
    @IBAction func analyzeIT(sender: NSButton) {
        
        // Check if grid can be read
        let readable = readGrid()
        if readable == false {
            leadText.stringValue = "ERROR! \n Insert valid numbers only"
            return
        }
        
        // Check if grid can be solved
        let solvable = mySudoku.canBeSolved()
        if solvable == false {
            leadText.stringValue = "ERROR! \n The sudoku cannot be solved"
            return
        }
        
        // Check if there are enough numbers
        let enoughNumbers = mySudoku.countNumbers() > 16
        if enoughNumbers == false {
            leadText.stringValue = "ERROR! \n There are not enough numbers"
            return
        }
        
        
        // Analyzes the sudoku
        var tempSudoku = mySudoku
        if solvable == true && readable == true && enoughNumbers == true {
            
            // Tries to solve the sudoku, second method only
            var newCellsSolved = true
            var countSteps = 0
            while newCellsSolved == true {
                let emptyCells = tempSudoku.getEmptyCells().count
                tempSudoku = solveSudoku2(tempSudoku)
                if tempSudoku.getEmptyCells().count == 0 || tempSudoku.getEmptyCells().count == emptyCells {newCellsSolved = false}
                countSteps = countSteps + 1
            }
            
            
            // If sudoku is solved, end the game
            if tempSudoku.solved()==true {
                if countSteps < 3 {
                    leadText.stringValue = "VERY EASY \n Sudoku difficulty is 1 (out of 5)"
                }
                else {
                    leadText.stringValue = "EASY \n Sudoku difficulty is 2 (out of 5)"
                }
            }
            
            else {
                // Tries to solve the sudoku, first and second method only
                newCellsSolved = true
                countSteps = 0
                while newCellsSolved == true {
                    let emptyCells = tempSudoku.getEmptyCells().count
                    tempSudoku = solveSudoku1(tempSudoku)
                    tempSudoku = solveSudoku2(tempSudoku)
                    if tempSudoku.getEmptyCells().count == 0 || tempSudoku.getEmptyCells().count == emptyCells {newCellsSolved = false}
                    print("NEW ROUND")
                    countSteps = countSteps + 1
                }
            
            
                // If sudoku is solved, it is not extremely difficult
                if tempSudoku.solved()==true {
                    if countSteps < 3 {
                        leadText.stringValue = "MEDIUM \n Sudoku difficulty is 3 (out of 5)"
                    }
                    else {
                        leadText.stringValue = "DIFFICULT \n Sudoku difficulty is 4 (out of 5)"
                    }
                }
                else {
                    leadText.stringValue = "VERY DIFFICULT (5+) \n It may take a few minutes to solve it"
                }
            }
            
            
            solveButton.enabled = true
            addNumberButton.enabled = true
        }
        
    }
    
    
    
    @IBAction func addNumber(sender: NSButton) {
        let tempSudoku = mySudoku
        solveOnlyOneNumber = true
        
        // Add one cell to sudoku
        mySudoku = solveSudoku2(mySudoku)
        if mySudoku.isEqualTo(tempSudoku) == true {
            mySudoku = solveSudoku1(mySudoku)
        }
        if mySudoku.isEqualTo(tempSudoku) == true {
            print("IMPLEMENT THIRD METHOD")
        }
        
        
        // If sudoku is solved, end the game
        if mySudoku.solved()==true {
            leadText.stringValue = "Sudoku solved!"
            analyzeButton.enabled = false
            addNumberButton.enabled = false
            solveButton.enabled = false
        }
        
        
        // Show solution
        for i in 0...(allTextFields.count-1) {
            if mySudoku.getCells()[i].getValue()>0 {
                allTextFields[i].stringValue = "\(mySudoku.getCells()[i].getValue())"
            }
        }
        
        solveOnlyOneNumber = false
    }
    
    
    
}
