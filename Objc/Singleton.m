/*
 Shared Singleton
 Platform : iOS / OSX
 Language : Objective-C
 Completion Scope : Class Implementation
 */

#pragma mark - Method

+ (instancetype)shared<#name#> {
    static <#class#> *_shared<#name#> = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shared<#name#> = <#initializer#>;
    });
    
    return _shared<#name#>;
}