//
//  ZZCALayer.m
//  ZZUIHelper
//
//  Created by 李伯坤 on 2017/3/5.
//  Copyright © 2017年 李伯坤. All rights reserved.
//

#import "ZZCALayer.h"

@implementation ZZCALayer
@synthesize properties = _properties;

- (NSMutableArray *)properties
{
    if (!_properties) {
        _properties = [super properties];
        ZZProperty *masksToBounds = [[ZZProperty alloc] initWithPropertyName:@"masksToBounds" type:ZZPropertyTypeBOOL defaultValue:@(NO)];
        ZZProperty *cornerRadius = [[ZZProperty alloc] initWithPropertyName:@"cornerRadius" type:ZZPropertyTypeNumber defaultValue:@(0)];
        ZZProperty *borderWidth = [[ZZProperty alloc] initWithPropertyName:@"borderWidth" type:ZZPropertyTypeNumber defaultValue:@(0)];
        ZZProperty *borderColor = [[ZZProperty alloc] initWithPropertyName:@"borderColor" type:ZZPropertyTypeCGColor defaultValue:@"clearColor"];
        ZZProperty *zPosition = [[ZZProperty alloc] initWithPropertyName:@"zPosition" type:ZZPropertyTypeNumber defaultValue:@(0)];
        ZZProperty *anchorPoint = [[ZZProperty alloc] initWithPropertyName:@"anchorPoint" type:ZZPropertyTypePoint defaultValue:@{@"x" : @(0.5), @"y" : @(0.5)}];
        ZZProperty *contentsScale = [[ZZProperty alloc] initWithPropertyName:@"contentsScale" type:ZZPropertyTypeNumber defaultValue:@(1.0)];
        ZZProperty *shadowColor = [[ZZProperty alloc] initWithPropertyName:@"shadowColor" type:ZZPropertyTypeCGColor defaultValue:@"clearColor"];
        ZZProperty *shadowOffset = [[ZZProperty alloc] initWithPropertyName:@"shadowOffset" type:ZZPropertyTypeSize defaultValue:nil selecetd:NO];


        
        
        ZZPropertyGroup *group = [[ZZPropertyGroup alloc] initWithGroupName:@"CALayer" properties:@[masksToBounds, cornerRadius,shadowColor, shadowOffset,ZZ_PROPERTY_LINE, borderWidth, borderColor, ZZ_PROPERTY_LINE, zPosition, anchorPoint, contentsScale]];
        [_properties addObject:group];
    }
    return _properties;
}

@end
