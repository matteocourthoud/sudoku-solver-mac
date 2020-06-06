//
//  Cell.swift
//  Sudoku Solver
//
//  Created by Matteo Courthoud on 29/07/16.
//  Copyright © 2016 Matteo Courthoud. All rights reserved.
//

import Foundation


class Cell {
    
    var row: Int
    var column: Int
    var value: Int
    
    init(row: Int, column: Int, value: Int) {
        
        self.column = column
        self.row = row
        self.value = value
    }
    
    // Gets the row
    func getRow() -> Int {
        return self.row
    }
    
    // Gets the column
    func getColumn() -> Int {
        return self.column
    }
    
    // Gets the value
    func getValue() -> Int {
        return self.value
    }
    
    
    // Gets the index of a cell
    func getIndex() -> Int {
        return (self.getRow()-1)*9 + self.getColumn()-1
    }
    
    
    
    // Gets the big square
    func getSquare() -> Int {
        var square = 0
        if self.getRow()==1 || self.getRow()==2 || self.getRow()==3  {
            if self.getColumn()==1 || self.getColumn()==2 || self.getColumn()==3 {
                square = 1
            }
            if self.getColumn()==4 || self.getColumn()==5 || self.getColumn()==6 {
                square = 2
            }
            if self.getColumn()==7 || self.getColumn()==8 || self.getColumn()==9 {
                square = 3
            }
        }
        if self.getRow()==4 || self.getRow()==5 || self.getRow()==6  {
            if self.getColumn()==1 || self.getColumn()==2 || self.getColumn()==3 {
                square = 4
            }
            if self.getColumn()==4 || self.getColumn()==5 || self.getColumn()==6 {
                square = 5
            }
            if self.getColumn()==7 || self.getColumn()==8 || self.getColumn()==9 {
                square = 6
            }
        }
        if self.getRow()==7 || self.getRow()==8 || self.getRow()==9  {
            if self.getColumn()==1 || self.getColumn()==2 || self.getColumn()==3 {
                square = 7
            }
            if self.getColumn()==4 || self.getColumn()==5 || self.getColumn()==6 {
                square = 8
            }
            if self.getColumn()==7 || self.getColumn()==8 || self.getColumn()==9 {
                square = 9
            }
        }
        
        return square
    }
    
    
    
    // Check if two cells are equal
    func isEqualTo(tempCell: Cell) -> Bool {
        var equal = false
        if self.getRow()==tempCell.getRow() && self.getColumn()==tempCell.getColumn() {
            equal = true
        }
        return equal
    }
    
    
    
    
    
    
    
    
}
