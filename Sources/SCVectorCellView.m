//
//  SCVectorCellView.m
//  CoreImageShop
//
//  Created by Simon CORSIN on 02/10/14.
//
//

#import "SCVectorCellView.h"

@implementation SCVectorCellView

- (void)updateWithParameterValue:(id)parameterValue {
    [super updateWithParameterValue:parameterValue];
    
    CIVector *vector = parameterValue;
    self.xTextField.floatValue = vector.X;
    self.yTextField.floatValue = vector.Y;
    self.zTextField.floatValue = vector.Z;
    self.wTextField.floatValue = vector.W;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (IBAction)xTextFieldChanged:(NSTextField *)sender {
    CIVector *vector =  self.parameterValue;
    self.parameterValue = [CIVector vectorWithX:sender.floatValue Y:vector.Y Z:vector.Z W:vector.W];
}

- (IBAction)yTextFieldChanged:(NSTextField *)sender {
    CIVector *vector =  self.parameterValue;
    self.parameterValue = [CIVector vectorWithX:vector.X Y:sender.floatValue Z:vector.Z W:vector.W];
}

- (IBAction)zTextFieldChanged:(NSTextField *)sender {
    CIVector *vector =  self.parameterValue;
    self.parameterValue = [CIVector vectorWithX:vector.X Y:vector.Y Z:sender.floatValue W:vector.W];
}

- (IBAction)wTextFieldChanged:(NSTextField *)sender {
    CIVector *vector =  self.parameterValue;
    self.parameterValue = [CIVector vectorWithX:vector.X Y:vector.Y Z:vector.Z W:sender.floatValue];
}

@end
