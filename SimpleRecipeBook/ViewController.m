//
//  ViewController.m
//  SimpleRecipeBook
//
//  Created by Riley Fewell on 2/18/16.
//  Copyright (c) 2016 Riley Fewell. All rights reserved.
//

#import "ViewController.h"
#import "Recipe.h"

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
    
    Recipe * recipe1 = [Recipe new];
    recipe1.name = @"Eggs Benedict";
    recipe1.prepTime = @"30 min";
    recipe1.imageFile = @"eggs_benedict.jpg";
    
    Recipe *recipe2 = [Recipe new];
    recipe2.name = @"Mushroom Risotto";
    recipe2.prepTime = @"30 min";
    recipe2.imageFile = @"mushroom_risotto.jpg";
    
    Recipe *recipe3 = [Recipe new];
    recipe3.name = @"Full Breakfast";
    recipe3.prepTime = @"20 min";
    recipe3.imageFile = @"full_breakfast.jpg";
    
    Recipe *recipe4 = [Recipe new];
    recipe4.name = @"Hamburger";
    recipe4.prepTime = @"30 min";
    recipe4.imageFile = @"hamburger.jpg";
    
    Recipe *recipe5 = [Recipe new];
    recipe5.name = @"Ham and Egg Sandwich";
    recipe5.prepTime = @"10 min";
    recipe5.imageFile = @"ham_and_egg_sandwich.jpg";
    
    Recipe *recipe6 = [Recipe new];
    recipe6.name = @"Creme Brelee";
    recipe6.prepTime = @"1 hour";
    recipe6.imageFile = @"creme_brelee.jpg";
    
    Recipe *recipe7 = [Recipe new];
    recipe7.name = @"White Chocolate Donut";
    recipe7.prepTime = @"45 min";
    recipe7.imageFile = @"white_chocolate_donut.jpg";
    
    Recipe *recipe8 = [Recipe new];
    recipe8.name = @"Starbucks Coffee";
    recipe8.prepTime = @"5 min";
    recipe8.imageFile = @"starbucks_coffee.jpg";
    
    Recipe *recipe9 = [Recipe new];
    recipe9.name = @"Vegetable Curry";
    recipe9.prepTime = @"30 min";
    recipe9.imageFile = @"vegetable_curry.jpg";
    
    Recipe *recipe10 = [Recipe new];
    recipe10.name = @"Instant Noodle with Egg";
    recipe10.prepTime = @"8 min";
    recipe10.imageFile = @"instant_noodle_with_egg.jpg";
    
    Recipe *recipe11 = [Recipe new];
    recipe11.name = @"Noodle with BBQ Pork";
    recipe11.prepTime = @"20 min";
    recipe11.imageFile = @"noodle_with_bbq_pork.jpg";
    
    Recipe *recipe12 = [Recipe new];
    recipe12.name = @"Japanese Noodle with Pork";
    recipe12.prepTime = @"20 min";
    recipe12.imageFile = @"japanese_noodle_with_pork.jpg";
    
    Recipe *recipe13 = [Recipe new];
    recipe13.name = @"Green Tea";
    recipe13.prepTime = @"5 min";
    recipe13.imageFile = @"green_tea.jpg";
    
    Recipe *recipe14 = [Recipe new];
    recipe14.name = @"Thai Shrimp Cake";
    recipe14.prepTime = @"1.5 hours";
    recipe14.imageFile = @"thai_shrimp_cake.jpg";
    
    Recipe *recipe15 = [Recipe new];
    recipe15.name = @"Angry Birds Cake";
    recipe15.prepTime = @"4 hours";
    recipe15.imageFile = @"angry_birds_cake.jpg";
    
    Recipe *recipe16 = [Recipe new];
    recipe16.name = @"Ham and Cheese Panini";
    recipe16.prepTime = @"10 min";
    recipe16.imageFile = @"ham_and_cheese_panini.jpg";
    
    recipes = [NSArray arrayWithObjects:recipe1, recipe2, recipe3, recipe4, recipe5, recipe6, recipe7, recipe8, recipe9, recipe10, recipe11, recipe12, recipe13, recipe14, recipe15, recipe16, nil];
    
    
//    recipes = [NSArray arrayWithObjects: @"Eggs Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle With Egg", @"Noodle With BBQ Pork", @"Japanese Noodle With Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham And Cheese Panini", nil];
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
    
    Recipe *recipe = [recipes objectAtIndex:indexPath.row];
    cell.textLabel.text = recipe.name;
//    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showRecipeDetail"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailedViewController *destViewController = [segue destinationViewController];
        Recipe *recipe = [recipes objectAtIndex:indexPath.row];
        destViewController.recipeName = recipe.name;
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
