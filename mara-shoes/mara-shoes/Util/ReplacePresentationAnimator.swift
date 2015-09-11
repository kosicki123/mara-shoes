//
//  ReplacePresentationAnimator.swift
//  mara-shoes
//
//  Created by Renan Kosicki on 9/10/15.
//  Copyright © 2015 Renan Kosicki | K-Mobi. All rights reserved.
//

import Cocoa

class ReplacePresentationAnimator: NSObject, NSViewControllerPresentationAnimator {
    func animatePresentationOfViewController(viewController: NSViewController, fromViewController: NSViewController) {
        if let window = fromViewController.view.window {
            NSAnimationContext.runAnimationGroup({ (context) -> Void in
                fromViewController.view.animator().alphaValue = 0
                }, completionHandler: { () -> Void in
                    viewController.view.alphaValue = 0
                    window.contentViewController = viewController
                    viewController.view.animator().alphaValue = 1.0
            })
        }
    }
    
    func animateDismissalOfViewController(viewController: NSViewController, fromViewController: NSViewController) {
        if let window = viewController.view.window {
            NSAnimationContext.runAnimationGroup({ (context) -> Void in
                viewController.view.animator().alphaValue = 0
                }, completionHandler: { () -> Void in
                    fromViewController.view.alphaValue = 0
                    window.contentViewController = fromViewController
                    fromViewController.view.animator().alphaValue = 1.0
            })
        }
    }
}