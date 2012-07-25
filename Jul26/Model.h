//
//  Model.h
//  Jul26
//
//  Created by NYU User on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.

#import <Foundation/Foundation.h>

@interface Model: NSObject {
	NSArray *tree;
}

//Each item in the Model is identified by an NSIndexPath.
//These methoods take an NSIndexPath and return informatioon about that item.

- (NSString *) name: (NSIndexPath *) indexPath;
- (NSUInteger) numberOfRows: (NSIndexPath *) indexPath;
- (NSString *) text: (NSIndexPath *) indexPath row: (NSUInteger) row;
@end
