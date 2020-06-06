//
//  Sudoku.swift
//  Sudoku Solver
//
//  Created by Matteo Courthoud on 01/08/16.
//  Copyright © 2016 Matteo Courthoud. All rights reserved.
//

import Foundation



class Sudoku {
    
    var cells: [Cell]
    
    init (cells: [Cell]) {
        self.cells = cells
    }
    
    
    
    func getCells() -> [Cell] {
        return self.cells
    }
    
    
    
    // Get a row/column or square of the sudoku
    func getFeature(featureNumber: Int, feature: String) -> [Cell] {
        var Array = [Cell]()
        
        for cell in cells {
            if feature == "row" {
                if cell.getRow() == featureNumber {
                    Array.append(cell)
                }
            }
            else if feature == "column" {
                if cell.getColumn() == featureNumber {
                    Array.append(cell)
                }
            }
            else if feature == "square" {
                if cell.getSquare() == featureNumber {
                    Array.append(cell)
                }
            }
            else { print("WRONG FEATURE!!") }
        }
       return Array
    }
    
    
    
    // Check if the sudoku can be solved
    func canBeSolved() -> Bool {
        var solvable = true
        
        for cell in cells {
            for otherCell in cells {
                if cell.isEqualTo(otherCell)==false && cell.getValue()==otherCell.getValue() && cell.getValue()>0 && (cell.getRow()==otherCell.getRow() || cell.getColumn()==otherCell.getColumn() || cell.getSquare()==otherCell.getSquare()) {
                    print("The sudoku is not solvable because of a conflict between cell \(cell.getRow())-\(cell.getColumn()) and cell \(otherCell.getRow())-\(otherCell.getColumn())")
                    solvable = false
                }
            }
        }
        return solvable
    }
    
    
    
    // Check if I solved the sudoku
    func solved() -> Bool {
        var solved = true
        for cell in cells {
            if cell.getValue()==0 {
                solved = false
            }
        }
        return solved
    }
    
    
    
    // Check which numbers I can insert in a cell
    func canEnterInCell(cell: Cell) -> [Int] {
        var possibleNumbers = [Int]()
        
        if cell.getValue()>0 {
            return [Int]()
        }
        
        for i in 1...9 {
            var canBeAdded = true
            for otherCell in cells {
                if cell.isEqualTo(otherCell)==false && otherCell.getValue()==i && (cell.getRow()==otherCell.getRow() || cell.getColumn()==otherCell.getColumn() || cell.getSquare()==otherCell.getSquare()) {
                    canBeAdded = false
                }
            }
            if canBeAdded == true {
                possibleNumbers.append(i)
            }
        }
        return possibleNumbers
    }
    
    
    
    // Check in which cells a number can enter in a row/column/square
    func possibleCells(number: Int, featureNumber: Int, featureName: String) -> [Cell] {
        let feature = self.getFeature(featureNumber, feature: featureName)
        var checkCells = [Cell]()
        
        for cell in feature {
            if cell.getValue() == number {
                return [Cell]()
            }

            if self.canEnterInCell(cell).contains(number) {
                checkCells.append(cell)
            }
        }
        return checkCells
    }
    

    
    
    // Check if a sudoku is euqal to another sudoku
    func isEqualTo(otherSudoku: Sudoku) -> Bool {
        let sudokuCells = otherSudoku.getCells()
    
        for i in 0...(sudokuCells.count - 1) {
            if !( cells[i].getValue() == sudokuCells[i].getValue() ) {
                return false
            }
        }
        return true
    }
    
    
    
    // Get empty cells of a sudoku
    func getEmptyCells() -> [Cell] {
        var emptyCells = [Cell]()
        for cell in cells {
            if cell.getValue()==0 {
                emptyCells.append(cell)
            }
        }
        return emptyCells
    }
    
    
    
    // Gets all possible entries in a sudoku
    func allEntries() -> [Cell] {
        let emptyCells = self.getEmptyCells()
        var entries = [Cell]()
        
        for cell in emptyCells {
            for i in self.canEnterInCell(cell) {
                entries.append(Cell(row: cell.getRow(), column: cell.getColumn(), value: i))
            }
        }
        return entries
    }
    
    
    
    // Counts the number of cells in which I can enter a number
    func countEntryCells() -> Int {
        var emptyCellsN = 0
        let emptyCells = self.getEmptyCells()
        
        for cell in emptyCells {
            if canEnterInCell(cell).count > 0 {
                emptyCellsN = emptyCellsN + 1
            }
        }
        return emptyCellsN
    }
    
    
    
    // Change a cell value
    func changeCellValue(cellNumber: Int, assignValue: Int) -> Sudoku {
        var newCells = self.getCells()
        let tempRow = Int((cellNumber)/9) + 1
        let tempCol = cellNumber%9 + 1
            
        newCells[cellNumber] = Cell(row: tempRow, column: tempCol, value: assignValue)
        return Sudoku(cells: newCells)
    }
    
    
    
    // Finds the cell with least possible entries and returns the entries
    func getLeastEntries() -> [Cell] {
        var leastEntries = [Cell]()
        var countEntries = 10
        
        for cell in self.getEmptyCells() {
            if canEnterInCell(cell).count < countEntries {
                countEntries = canEnterInCell(cell).count
                leastEntries = [Cell]()
                
                for number in canEnterInCell(cell) {
                    leastEntries.append(Cell(row: cell.getRow(), column: cell.getColumn(), value: number))
                }
            }
        }
        return leastEntries
    }
    
    
    
    // Count numbers in the sudoku
    func countNumbers() -> Int {
        var count = 0
        for cell in cells {
            if cell.getValue() > 0 {
                count = count + 1
            }
        }
        return count
    }
    
    
}








