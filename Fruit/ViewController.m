//
//  ViewController.m
//  Fruit
//
//  Created by Build User on 1/28/14.
//  Copyright (c) 2014 Pitt. All rights reserved.
//

#import "ViewController.h"
#import "Potato.h"
#import "Onion.h"
#import "Pumpkin.h"


@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *cart;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.cart = [[NSMutableArray alloc] init];
//    NSString *itemName;
//    NSString *potatoName;
//    NSString *onionName = @"Onions";
//    NSString *pumpkinName = @"Pumpkin";
    

    Potato *potatoOne = [[Potato alloc] init];
    Onion *onionOne = [[Onion alloc]init];
    Pumpkin *pumpkinOne = [[Pumpkin alloc] init];
    
        
        [self.cart addObject:potatoOne];
        [self.cart addObject:onionOne];
        [self.cart addObject:pumpkinOne];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.cart count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *identifier = @"fruitCell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    
    cell.textLabel.text = [[self.cart objectAtIndex:[indexPath row]] name];
    return cell;
    
}




@end
