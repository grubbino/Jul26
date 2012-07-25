//
//  TableViewController.h
//  Jul26
//
//  Created by NYU User on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.

#import <UIKit/UIKit.h>
@class Model;

@interface TableViewController: UITableViewController {
	Model *model;
	NSIndexPath *indexPath;	//indicates currently displayed tree
}

- (id) initWithStyle: (UITableViewStyle) style
	model: (Model *) m
	indexPath: (NSIndexPath *) p;
@end
