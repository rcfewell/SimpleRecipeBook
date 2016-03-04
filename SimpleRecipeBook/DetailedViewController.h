//
//  DetailedViewController.h
//  SimpleRecipeBook
//
//  Created by Julia Foster on 3/4/16.
//  Copyright © 2016 Riley Fewell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailedViewController : UIViewController

@property (nonatomic, strong) NSString *recipeName;
@property (nonatomic, strong) IBOutlet UILabel *recipeLabel;

@end
