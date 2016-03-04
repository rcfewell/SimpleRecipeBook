//
//  ViewController.m
//  SimpleRecipeBook
//
//  Created by Riley Fewell on 2/18/16.
//  Copyright (c) 2016 Riley Fewell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray * recipes;
}

@end

@implementation ViewController
@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    recipes = [NSArray arrayWithObjects: @"Eggs Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle With Egg", @"Noodle With BBQ Pork", @"Japanese Noodle With Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham And Cheese Panini", nil];
}

// UITABLEVIEW DATASOURCE METHODS
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"RecipeCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showRecipeDetail"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailedViewController *destViewController = [segue destinationViewController];
        destViewController.recipeName = [recipes objectAtIndex:indexPath.row];
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
