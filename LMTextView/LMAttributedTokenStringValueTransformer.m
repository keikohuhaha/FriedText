//
//  LMAttributedTokenStringValueTransformer.m
//  LMTextView
//
//  Created by Micha Mazaheri on 4/14/13.
//  Copyright (c) 2013 Lucky Marmot. All rights reserved.
//

#import "LMAttributedTokenStringValueTransformer.h"

@implementation LMAttributedTokenStringValueTransformer

+ (BOOL)allowsReverseTransformation
{
	return YES;
}

+ (Class)transformedValueClass
{
	return [NSAttributedString class];
}

- (id)transformedValue:(id)value
{
	return [NSKeyedUnarchiver unarchiveObjectWithData:value];
}

- (id)reverseTransformedValue:(id)value
{
	return [NSKeyedArchiver archivedDataWithRootObject:value];
}

@end
