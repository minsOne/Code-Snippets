/*
 Initializing multidimensional array
 Platform : iOS / OSX
 Language : Swift
 */

#pragma mark - Array

var multidimensionalArray = Array<Array<<#Type#>>>()
for column in 0 ... <#Row Length#> {
    multidimensionalArray.append(Array(count: <#Column Length#>, repeatedValue: <#Initial Value#>))
}
