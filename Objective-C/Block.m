/*
 Block Code
 Platform : iOS / OSX
 Language : Objective-C
 Completion Scope : Code Expression
 */

#pragma mark - Code Expression

// Define a block as a type
typedef <#returnType#>(^<#name#>)(<#arguments#>);

// Block variable
<#returnType#>(^<#blockName#>)(<#parameterTypes#>) = ^(<#parameters#>) {
    <#statements#>
};

<#returnType#>(^<#blockName#>)(<#parameterTypes#>)) = ^{
    <#Block Code#>
};

// Block Parameter Function
- (void)init:(NSString *)parameter1 callbackBlock:(<#returnType#>(^)(<#parameterTypes#>))callback;