//
//  Model.m
//  Jul26
//
//  Created by NYU User on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.

#import "Model.h"

/*
The model consists of a big tree containing little trees.
The little trees have even smaller ones inside them.
At the very bottom are trees that contain no smaller trees.
We call them the "leaves".

An NSIndexPath identifies a tree.  For example,
0 represents the United States.
0.0 represents Connecticut.
0.1 represents New York.
0.2 represents New Jersey.
0.1.1 represents Putnam County.
0.1.1.2 represents Cold Spring.

Each tree is implemented as an NSArray.  The first object in the NSArray is an NSString
giving the name of the tree.  The remaining objects, if any, are the subtrees inside of
the tree.
*/

#define BEGIN [NSArray arrayWithObjects:
#define END , nil]

@implementation Model

- (id) init {
	self = [super init];
	if (self) {
		tree = BEGIN @"Universe",
			BEGIN @"Marathon Training",
				BEGIN @"Week 1",
					BEGIN @"Monday: 3 miles (easy)"
                    END,
                    BEGIN @"Tuesday: 7 miles (hills)"
                    END,
                    BEGIN @"Wednesday: 3 miles (easy)"
                    END,
                    BEGIN @"Thursday: 4 miles (speed)"
                    END,
                    BEGIN @"Friday: 0 miles (rest)"
                    END,
                    BEGIN @"Saturday: 5 miles (pace)"
                    END,
                    BEGIN @"Sunday: 14 miles (long)"
					END
				END,
                
                BEGIN @"Week 2",
					BEGIN @"Monday: 3 miles (easy)"
                    END,
                    BEGIN @"Tuesday: 7 miles (hills)"
                    END,
                    BEGIN @"Wednesday: 3 miles (easy)"
                    END,
                    BEGIN @"Thursday: 6.5 miles (speed)"
                    END,
                    BEGIN @"Friday: 0 miles (rest)"
                    END,
                    BEGIN @"Saturday: 6 miles (pace)"
                    END,
                    BEGIN @"Sunday: 12 miles (long)"
					END
				END,
                    BEGIN @"Week 3",
					BEGIN @"Monday: 0 miles (rest)"
                    END,
                    BEGIN @"Tuesday: 7 miles (hills)"
                    END,
                    BEGIN @"Wednesday: 3 miles (easy)"
                    END,
                    BEGIN @"Thursday: 4 miles (speed)"
                    END,
                    BEGIN @"Friday: 0 miles (rest)"
                    END,
                    BEGIN @"Saturday: 5 miles (pace)"
                    END,
                    BEGIN @"Sunday: 16 miles (long)"
					END
				END,
        
                BEGIN @"Week 4",
					BEGIN @"Monday: 0 miles (rest)"
                    END,
                    BEGIN @"Tuesday: 7 miles (hills)"
                    END,
                    BEGIN @"Wednesday: 3 miles (easy)"
                    END,
                    BEGIN @"Thursday: 6 miles (speed)"
                    END,
                    BEGIN @"Friday: 3 miles (easy)"
                    END,
                    BEGIN @"Saturday: 7 miles (pace)"
                    END,
                    BEGIN @"Sunday: 13 miles (long)"
					END
				END,
        
                BEGIN @"Week 5",
					BEGIN @"Monday: 0 miles (rest)"
                    END,
                    BEGIN @"Tuesday: 7.5 miles (hills)"
                    END,
                    BEGIN @"Wednesday: 3 miles (easy)"
                    END,
                    BEGIN @"Thursday: 6 miles (speed)"
                    END,
                    BEGIN @"Friday: 3 miles (easy)"
                    END,
                    BEGIN @"Saturday: 7 miles (pace)"
                    END,
                    BEGIN @"Sunday: 16 miles (long)"
					END
				END,
        
                BEGIN @"Week 6",
					BEGIN @"Monday: 0 miles (rest)"
                    END,
                    BEGIN @"Tuesday: 6.5 miles (hills)"
                    END,
                    BEGIN @"Wednesday: 4 miles (easy)"
                    END,
                    BEGIN @"Thursday: 6.5 miles (speed)"
                    END,
                    BEGIN @"Friday: 3 miles (easy)"
                    END,
                    BEGIN @"Saturday: 8 miles (pace)"
                    END,
                    BEGIN @"Sunday: 18 miles (long)"
					END
				END,
        
                BEGIN @"Week 7",
					BEGIN @"Monday: 0 miles (rest)"
                    END,
                    BEGIN @"Tuesday: 6.5 miles (hills)"
                    END,
                    BEGIN @"Wednesday: 4 miles (easy)"
                    END,
                    BEGIN @"Thursday: 8 miles (pace)"
                    END,
                    BEGIN @"Friday: 3 miles (easy)"
                    END,
                    BEGIN @"Saturday: 0 miles (rest)"
                    END,
                    BEGIN @"Sunday: 13.1 miles (race)"
					END
				END,
        
                BEGIN @"Week 8",
					BEGIN @"Monday: 0 miles (rest)"
                    END,
                    BEGIN @"Tuesday: 6.5 miles (hills)"
                    END,
                    BEGIN @"Wednesday: 4 miles (easy)"
                    END,
                    BEGIN @"Thursday: 7.5 miles (speed)"
                    END,
                    BEGIN @"Friday: 3 miles (easy)"
                    END,
                    BEGIN @"Saturday: 8 miles (pace)"
                    END,
                    BEGIN @"Sunday: 17 miles (long)"
					END
				END,
        
                BEGIN @"Week 9",
					BEGIN @"Monday: 0 miles (rest)"
                    END,
                    BEGIN @"Tuesday: 7.5 miles (hills)"
                    END,
                    BEGIN @"Wednesday: 5 miles (easy)"
                    END,
                    BEGIN @"Thursday: 6.5 miles (speed)"
                    END,
                    BEGIN @"Friday: 3 miles (easy)"
                    END,
                    BEGIN @"Saturday: 9 miles (pace)"
                    END,
                    BEGIN @"Sunday: 20 miles (long)"
					END
				END,
        
                 BEGIN @"Week 10",
					BEGIN @"Monday: 0 miles (rest)"
                    END,
                    BEGIN @"Tuesday: 7.5 miles (hills)"
                    END,
                    BEGIN @"Wednesday: 5 miles (easy)"
                    END,
                    BEGIN @"Thursday: 6 miles (speed)"
                    END,
                    BEGIN @"Friday: 4 miles (easy)"
                    END,
                    BEGIN @"Saturday: 6 miles (pace)"
                    END,
                    BEGIN @"Sunday: 12 miles (long)"
					END
				END,
        
                BEGIN @"Week 11",
					BEGIN @"Monday: 0 miles (rest)"
                    END,
                    BEGIN @"Tuesday: 7.5 miles (hills)"
                    END,
                    BEGIN @"Wednesday: 5 miles (easy)"
                    END,
                    BEGIN @"Thursday: 6 miles (speed)"
                    END,
                    BEGIN @"Friday: 4 miles (easy)"
                    END,
                    BEGIN @"Saturday: 10 miles (pace)"
                    END,
                    BEGIN @"Sunday: 18 miles (long)"
					END
				END,
        
                BEGIN @"Week 12",
					BEGIN @"Monday: 0 miles (rest)"
                    END,
                    BEGIN @"Tuesday: 7.5 miles (hills)"
                    END,
                    BEGIN @"Wednesday: 5 miles (easy)"
                    END,
                    BEGIN @"Thursday: 6 miles (speed)"
                    END,
                    BEGIN @"Friday: 4 miles (easy)"
                    END,
                    BEGIN @"Saturday: 8 miles (pace)"
                    END,
                    BEGIN @"Sunday: 13 miles (long)"
					END
				END,
        
                BEGIN @"Week 13",
					BEGIN @"Monday: 0 miles (rest)"
                    END,
                    BEGIN @"Tuesday: 7.5 miles (hills)"
                    END,
                    BEGIN @"Wednesday: 5 miles (easy)"
                    END,
                    BEGIN @"Thursday: 7.5 miles (speed)"
                    END,
                    BEGIN @"Friday: 5 miles (easy)"
                    END,
                    BEGIN @"Saturday: 6 miles (pace)"
                    END,
                    BEGIN @"Sunday: 20 miles (long)"
					END
				END,
        
                BEGIN @"Week 14",
					BEGIN @"Monday: 0 miles (rest)"
                    END,
                    BEGIN @"Tuesday: 7.5 miles (hills)"
                    END,
                    BEGIN @"Wednesday: 5 miles (easy)"
                    END,
                    BEGIN @"Thursday: 5 miles (speed)"
                    END,
                    BEGIN @"Friday: 5 miles (easy)"
                    END,
                    BEGIN @"Saturday: 0 miles (rest)"
                    END,
                    BEGIN @"Sunday: 13 miles (long)"
					END
				END,
        
                BEGIN @"Week 15",
					BEGIN @"Monday: 0 miles (rest)"
                    END,
                    BEGIN @"Tuesday: 6 miles (hills)"
                    END,
                    BEGIN @"Wednesday: 5 miles (easy)"
                    END,
                    BEGIN @"Thursday: 6 miles (speed)"
                    END,
                    BEGIN @"Friday: 0 miles (rest)"
                    END,
                    BEGIN @"Saturday: 5 miles (pace)"
                    END,
                    BEGIN @"Sunday: 22 miles (long)"
					END
				END,
        
                BEGIN @"Week 16",
					BEGIN @"Monday: 4 miles (easy)"
                    END,
                    BEGIN @"Tuesday: 0 miles (rest)"
                    END,
                    BEGIN @"Wednesday: 6 miles (easy)"
                    END,
                    BEGIN @"Thursday: 0 miles (rest)"
                    END,
                    BEGIN @"Friday: 0 miles (rest)"
                    END,
                    BEGIN @"Saturday: 4 miles (easy)"
                    END,
                    BEGIN @"Sunday: 10 miles (long)"
					END
				END,

				BEGIN @"Week 17",
					BEGIN @"Monday: 3 miles (easy)"
                    END,
                    BEGIN @"Tuesday: 0 miles (rest)"
                    END,
                    BEGIN @"Wednesday: 3 miles (easy)"
                    END,
                    BEGIN @"Thursday: 0 miles (rest)"
                    END,
                    BEGIN @"Friday: 0 miles (rest)"
                    END,
                    BEGIN @"Saturday: 2 miles (easy)"
                    END,
                    BEGIN @"Sunday: 26.2 miles (race)"
					END
				END			
            END
		END;
	}

	return self;
}


//Return the tree to which the index path leads.

- (NSArray *) tree: (NSIndexPath *) indexPath
{
	NSArray *a = tree;

	for (NSUInteger p = 0; p < indexPath.length; ++p) {
		NSUInteger i = [indexPath indexAtPosition: p];
		a = [a objectAtIndex: i + 1];
	}

	return a;
}

//Return the name of the tree to which the indexPath leads.

- (NSString *) name: (NSIndexPath *) indexPath
{
	NSArray *a = [self tree: indexPath];
	return [a objectAtIndex: 0];
}

//Return the number of subtrees of the tree to which the indexPath leads.

- (NSUInteger) numberOfRows: (NSIndexPath *) indexPath
{
	NSArray *a = [self tree: indexPath];
	return a.count - 1;
}

//Return the line of text that should go in the specified row
//of the tree to which the indexPath leads.

- (NSString *) text: (NSIndexPath *) indexPath row: (NSUInteger) row
{
	indexPath = [indexPath indexPathByAddingIndex: row];
	return [self name: indexPath];
}

@end
