//
//  TableViewController.m
//  Jul26
//
//  Created by NYU User on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.

#import "TableViewController.h"
#import "Model.h"

@implementation TableViewController

- (id) initWithStyle: (UITableViewStyle) style model: (Model *) m indexPath: (NSIndexPath *) p
{
	self = [super initWithStyle: style];
	if (self) {
		// Custom initialization
		model = m;
		indexPath = [p copy];
		self.title = [model name: indexPath];
		self.navigationItem.backBarButtonItem.title = self.title;
	}
	return self;
}

- (void) didReceiveMemoryWarning
{
	// Releases the view if it doesn't have a superview.
	[super didReceiveMemoryWarning];

	// Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void) viewDidLoad
{
	[super viewDidLoad];

	// Uncomment the following line to preserve selection between presentations.
	// self.clearsSelectionOnViewWillAppear = NO;

	// Uncomment the following line to display an Edit button in the navigation bar for this view controller.
	// self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void) viewDidUnload
{
	[super viewDidUnload];
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (void) viewWillAppear: (BOOL) animated
{
	[super viewWillAppear: animated];
}

- (void) viewDidAppear: (BOOL) animated
{
	[super viewDidAppear: animated];
}

- (void) viewWillDisappear: (BOOL) animated
{
	[super viewWillDisappear: animated];
}

- (void) viewDidDisappear: (BOOL) animated
{
	[super viewDidDisappear: animated];
}

- (BOOL) shouldAutorotateToInterfaceOrientation: (UIInterfaceOrientation) interfaceOrientation
{
	// Return YES for supported orientations
	//return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}

#pragma mark - Table view data source

- (NSInteger) numberOfSectionsInTableView: (UITableView *) tableView
{
	// Return the number of sections.
	return 1;
}

- (NSInteger) tableView: (UITableView *) tableView numberOfRowsInSection: (NSInteger) section
{
	// Return the number of rows in the section.
	return [model numberOfRows: indexPath];;
}

- (UITableViewCell *) tableView: (UITableView *) tableView cellForRowAtIndexPath: (NSIndexPath *) p
{
	static NSString *CellIdentifier = @"Tree";

	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier];
	if (cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: CellIdentifier];
	}

	// Configure the cell...
	cell.textLabel.text = [model text: indexPath row: p.row];
	if ([model numberOfRows: [indexPath indexPathByAddingIndex: p.row]] > 0) {
		cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	} else {
		cell.accessoryType = UITableViewCellAccessoryNone;
	}
	return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL) tableView: (UITableView *) tableView canEditRowAtIndexPath: (NSIndexPath *) indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void) tableView: (UITableView *) tableView commitEditingStyle: (UITableViewCellEditingStyle) editingStyle forRowAtIndexPath: (NSIndexPath *) indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths: [NSArray arrayWithObject: indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView: (UITableView *) tableView moveRowAtIndexPath: (NSIndexPath *) fromIndexPath toIndexPath:(NSIndexPath *) toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL) tableView: (UITableView *) tableView canMoveRowAtIndexPath: (NSIndexPath *) indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate


//- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) p
//{
//    NSIndexPath *newIndexPath = [indexPath indexPathByAddingIndex: p.row];
//    if ([model numberOfRows: newIndexPath] == 0) {
//        UITableViewCell *cell = [tableView cellForRowAtIndexPath: indexPath];
//        
//        if (cell.accessoryType == UITableViewCellAccessoryNone) {
//            cell.accessoryType = UITableViewCellAccessoryCheckmark;
//        } else {
//            cell.accessoryType = UITableViewCellAccessoryNone;
//        }
//    }
//}

- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) p
{
    // Navigation logic may go here. Create and push another view controller.
	NSIndexPath *newIndexPath = [indexPath indexPathByAddingIndex: p.row];

	if ([model numberOfRows: newIndexPath] > 0) {
		TableViewController *tableViewController = [[TableViewController alloc]
			initWithStyle: UITableViewStylePlain
			model: model
			indexPath: newIndexPath
		];

		[self.navigationController pushViewController: tableViewController animated: YES];
	}
	
	else {
		//This tree is a leaf.  Display its Wikipedia article.
        UITableViewCell *cell = [tableView cellForRowAtIndexPath: p];
        
        if (cell.accessoryType == UITableViewCellAccessoryNone) {
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
            cell.selectionStyle= UITableViewCellSelectionStyleGray;
        } else {
            cell.accessoryType = UITableViewCellAccessoryNone;
        }
	}
}

@end
