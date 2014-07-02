/*
 CALayer optional methods and Code Snippets
 Platform : iOS / OSX
 Language : Objective-C
 Completion Scope : Function or Method
 */

// CALayer shadow effective method
- (CALayer *)Shadow:(CALayer *)layer
{
    layer.shadowOffset = CGSizeMake(<#width#>, <#height#>);
    layer.shadowRadius = <#radius#>;
    layer.shadowOpacity = <#opacity#>;
 
    return layer;
}

