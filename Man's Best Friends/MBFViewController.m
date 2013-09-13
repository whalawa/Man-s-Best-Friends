//
//  MBFViewController.m
//  Man's Best Friends
//
//  Created by Teddy Wyly on 9/10/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import "MBFViewController.h"
#import "MBFDog.h" // Importing our MBFDog header file so that our ViewController knows about it
#import "MBFPuppy.h"

@interface MBFViewController ()

// A Property of our ViewController that is a container for dogs
@property (strong, nonatomic) NSMutableArray *myDogs;

// Our UI Elements (Views)
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
@property (weak, nonatomic) IBOutlet UILabel *breedLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation MBFViewController

// A method that is automatically callled when the this ViewController's view loads, but has not appeared on screen yet
- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // How to create, or instantiate an object
    MBFDog *myDog = [[MBFDog alloc] init];
    
    // We are not setting the properties of our dog
    // This takes a generic dog from our Dog class and makes it more specific
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 9;
    myDog.picture = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    // We are now checking to see if the dog's properties were set
    // Run the program and look at the debug console to see your dog
    NSLog(@"My Dog is %@ and he is a %i year old %@!", myDog.name, myDog.age, myDog.breed);
    
    
    
    // Demonstartion of a method call on a dog
    [myDog barkANumberOfTimes:3 loudly:NO];
    
    
    
    // Setting our User Interface elements to match the properties on myDog
    self.myImageView.image = myDog.picture;
    self.breedLabel.text = myDog.breed;
    self.nameLabel.text = myDog.name;
    
    
    
    // The creation of three more dogs
    MBFDog *secondDog = [[MBFDog alloc] init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.picture = [UIImage imageNamed:@"JRT.jpg"];
    
    MBFDog *thirdDog = [[MBFDog alloc] init];
    thirdDog.name = @"Lasso";
    thirdDog.breed = @"Collie";
    thirdDog.picture = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    MBFDog *fourthDog = [[MBFDog alloc] init];
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.picture = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    // The creation of a puppy, which is a subclass of a dog
    // Notice that a puppy can be used whenever a dog is used since a puppy is a dog.  However, the reverse
    // is not always true as a dog is not always a puppy
    MBFPuppy *littlePuppy = [[MBFPuppy alloc] init];
    littlePuppy.name = @"Bo O.";
    littlePuppy.breed = @"Portuguese Water Dog";
    littlePuppy.picture = [UIImage imageNamed:@"Bo.jpg"];
    
    // Demonstartion of a method call on a puppy
    // Notice that [myDog givePuppyEyes]; would raise an error as not all dogs are puppies
    // and can givePuppyEyes
    [littlePuppy givePuppyEyes];
    
    
    
    // Filling our NSMutableArray myDogs with our five dogs
    self.myDogs = [[NSMutableArray alloc] initWithObjects:myDog, secondDog, thirdDog, fourthDog, littlePuppy, nil];
    
    
    
}

// This is included by Apple and is called whenever there is a memory warning
// We do not need to "implement" it or write any code here
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// The code that is executed when our barButtonItem is pressed.
- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender
{
    int numberOfDogs = [self.myDogs count]; // Finds the number of dogs in our array
    int randomIndex = arc4random() % numberOfDogs; // Finds a random number between 0 and our numberOfDogs - 1.  In our case either 0, 1, 2, 3, 4
    MBFDog *randomDog = [self.myDogs objectAtIndex:randomIndex]; // Gets a randomDog from our arrayOfDogs
    
    // Set our UI elements to match the randomDog's properties
    // This is either done reguarly below or through animation!
    
    // REGULAR
    
//    self.myImageView.image = randomDog.picture;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    
    // ANIMATION
    
    [UIView transitionWithView:self.view
                      duration:2.5
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        self.myImageView.image = randomDog.picture;
                        self.breedLabel.text = randomDog.breed;
                        self.nameLabel.text = randomDog.name;
                    } completion:nil];
    
    
    // Changing the title on our UIBarButtonItem
    sender.title = @"And Another!";
    
}


@end
