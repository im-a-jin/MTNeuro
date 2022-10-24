#Loads the downloaded pretrained weights into the specified model.
import torch

def load_weights(Model, Mode, Setting, model_object):
    if Mode=='3D':
        if Setting=='4class':
            print('Successfully loaded pre-trained weights into the Model')
            checkpoint = torch.load(str(Model)+'_'+str(Mode)+'_noZI.pt')
            model_object.load_state_dict(checkpoint)
        if Setting=='3class':
            print('Successfully loaded pre-trained weights into the Model')
            checkpoint = torch.load(str(Model)+'_'+str(Mode)+'_3class.pt')
            model_object.load_state_dict(checkpoint)
    if Mode=='2D':
        if Setting=='3class' and Model == "UNet":
            print('Successfully loaded pre-trained weights into the Model')
            checkpoint = torch.load(str(Model)+'_'+str(Mode)+'_'+str(Setting)+'.pt')
            model_object.load_state_dict(checkpoint)
        elif Setting=='3class':
            print('Successfully loaded pre-trained weights into the Model')
            checkpoint = torch.load(str(Model)+'_'+str(Setting)+'.pt')
            model_object.load_state_dict(checkpoint)
        elif Setting=='4class' and Model=="UNet":
            print('Successfully loaded pre-trained weights into the Model')
            checkpoint = torch.load(str(Model)+'_'+str(Mode)+'_noZI.pt')
            model_object.load_state_dict(checkpoint)
        else:
            print('Successfully loaded pre-trained weights into the Model')
            checkpoint = torch.load(str(Model)+'_noZI.pt')
            model_object.load_state_dict(checkpoint)
    return model_object