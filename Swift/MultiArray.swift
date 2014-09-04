/*
 Initializing multidimensional array
 Platform : iOS / OSX
 Language : Swift
 */

#pragma mark - Literal

var array2d = Array<Array<<#Type#>>>()
for column in 0 ... <#Row Length#> {
    array2d.append(Array(count: <#Column Length#>, repeatedValue: <#Initial Value#>))
}

#pragma mark - Shortand Literal

var array2d = [[<#Type#>]]()

#paragma mark - Shrotand Literal and Optional

var array2d :[[<#Type#>]?]

#pragma mark - Shrtand Literal and Initalizing variable from Values

var array2d: = [ [<#Type Value#>], [<#Type Value#>]]

#pragma mark - Subscript in Structure

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
    func indexIsValidForRow(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValidForRow(row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValidForRow(row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}
