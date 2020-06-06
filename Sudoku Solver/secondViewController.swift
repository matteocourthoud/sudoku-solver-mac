//
//  secondViewController.swift
//  Sudoku Solver
//
//  Created by Matteo Courthoud on 05/08/16.
//  Copyright © 2016 Matteo Courthoud. All rights reserved.
//

import Cocoa

class secondViewController: NSViewController {
    
    
    @IBOutlet weak var titleString: NSTextField!

    
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
    
    
    // My variables
    var allTextFields = [NSTextField]()
    var mySudoku = Sudoku(cells: [Cell]())
    var solvedSudoku = Sudoku(cells: [Cell]())
    var difficulty = String()
    var readable = true
    

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
        
        
        // Show sudoku
        for i in 0...(allTextFields.count-1) {
            if mySudoku.getCells()[i].getValue()>0 {
                allTextFields[i].stringValue = "\(mySudoku.getCells()[i].getValue())"
            }
            else {
                allTextFields[i].enabled = true
            }
        }
        titleString.stringValue = "Random sudoku, difficulty: "+difficulty
        
        
    }
    
    
    
    // Passo il sudoku alla prossima schermata
    override func prepareForSegue(segue: NSStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "segue3") {
            let svc = segue.destinationController as! mainViewController;
            
            svc.mySudoku = mySudoku
            
        }
    }
    
    
    
    
    // Read the grid
    func readGrid() -> Sudoku {
        var allCells = [Cell]()
        readable = true

        
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
                readable = false
            }
            allCells.append(cell)
        }
        
        return Sudoku(cells: allCells)
    }
    
    
    
    
    
    
    // Checks if the sudoku is correct
    @IBAction func checkSudoku(sender: AnyObject) {
        let tempSudoku = readGrid()
        readable = true
        
        // Check if grid can be read
        if readable == false {
            titleString.stringValue = "ERROR! \n Insert valid numbers only"
            return
        }
        
        // Check if grid can be solved
        let solvable = tempSudoku.canBeSolved()
        if solvable == false {
            titleString.stringValue = "ERROR! \n There are mistakes, check again"
            return
        }
        
    }
    
    
        
    
    
    
    
    
    
}
