# ExampleSwitchAndScroll App

![apple and dd Logo](https://nick-rodriguez.info/media/appleAndDD.png)

This is a Swift UIScrollView and UISwitch demo done completely programmatically.


## Features
- Completely programmatically (Main.Storyboard deleted) 
- A `UIScrollView` that allows vertical scrolling.
- A series of `UILabels` added programmatically within the scroll view.
- A `UISwitch` with a label ("Test Switch") that triggers a print statement to the terminal whenever toggled.

## Purpose

The main goal of this project is to provide a hands-on example of using `UIScrollView` and handling basic UI interactions with a `UISwitch` in a Swift project.


## As It Pertains to Me

The final result is using UserVC because this will be the frame work used for the UserVC in the WhatSticksiOS app.

The ScrollViewControllerModified02 is the evolution of the class with help from ChatGPT. This started in the ScrollViewController, then ScrollViewModified. Then many iterations in the ScrollViewModified02 file until we reached what we have now.

## Deleting Main.storyboard steps

Do this to build your application completely programmatically. I do this so I can more easily get help from ChatGPT and other AI sources.

- create new project go to Info
- delete the `Main storyboard file base name` row
- In the same Info go to Application Scene Manifest > Scene Configuration > Window Application Session Role > Item 0
    - delete `Storyboard Name` row
- Edit the `SceneDelegate` method to display the `UserVC`

The last bullet point is necessary for building the app completely programmatically, as it allows you to set the root view controller of the window to be the `UserVC` without relying on a storyboard. This allows you to create and manage all of the views and layout of the app programmatically, rather than using a visual interface builder.
