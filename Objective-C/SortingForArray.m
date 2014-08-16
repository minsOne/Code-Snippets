/*
 Custom compare method using os
 Platform : iOS / OSX
 Language : Objective-C
 Completion Scope : Function or Method
*/

#pragma mark - Using NSSortDescriptor Method

NSSortDescriptor *sortDescriptor;
sortDescriptor = [[NSSortDescriptor alloc] initWithKey:<#Sorting key string#> ascending:<#Ascending flag#>];
NSArray *sortDescriptors = [NSMutableArray arrayWithObject:sortDescriptor];
NSArray *sortedArray = [unsortedArray sortedArrayUsingDescriptors:sortDescriptors];


#pragma mark - Using Block

NSArray *sortedArray = [unsortedArray sortedArrayUsingComparator:^NSComparisonResult(id a, id b) {
	// Compare values in a, b object
	return [<#left value#> compare:<#right value#>];
}];