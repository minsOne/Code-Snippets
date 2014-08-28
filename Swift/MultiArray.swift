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

