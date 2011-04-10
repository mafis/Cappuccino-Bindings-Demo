@implementation PersonValueTransformer : NSValueTransformer
{
}

+ (Class)transformedValueClass { return [NSString class]; }
+ (BOOL)allowsReverseTransformation { return YES; }
- (id)transformedValue:(id)item {
	console.log(item);
    return [item valueForKey:@"firstName"] + " " + [item valueForKey:@"lastName"];
}

@end

