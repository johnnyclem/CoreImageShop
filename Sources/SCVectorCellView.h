//
//  SCVectorCellView.h
//  CoreImageShop
//
//  Created by Simon CORSIN on 02/10/14.
//
//

#import "SCFilterParameterConfigurationCellView.h"

@interface SCVectorCellView : SCFilterParameterConfigurationCellView

@property (weak) IBOutlet NSTextField *xTextField;
@property (weak) IBOutlet NSTextField *yTextField;
@property (weak) IBOutlet NSTextField *zTextField;
@property (weak) IBOutlet NSTextField *wTextField;

@end
