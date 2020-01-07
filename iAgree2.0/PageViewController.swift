//
//  PageViewController.swift
//  iAgree2.0
//
//  Created by RAMKIRAN on 3 - 03 - 2017.
//  Copyright © 2020 vwits. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource{

    lazy var orderedViewControllers: [UIViewController] = {
        return [self.newVC(viewcontroller: "firstPage"),
                self.newVC(viewcontroller: "secondPage"),
                self.newVC(viewcontroller: "thirdPage")]
    }()
    
    var pageControl = UIPageControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
        self.delegate = self
        configurePageControl()
    }
    
    
    func configurePageControl() {
        pageControl = UIPageControl(frame: CGRect(x: 0, y: UIScreen.main.bounds.maxY - 50, width: UIScreen.main.bounds.width , height: 50 ))
        pageControl.numberOfPages = orderedViewControllers.count
        pageControl.currentPage = 0
        pageControl.tintColor = UIColor.black
        pageControl.pageIndicatorTintColor = UIColor.black
        pageControl.currentPageIndicatorTintColor = #colorLiteral(red: 0, green: 0.6901960784, blue: 0.9411764706, alpha: 1)
        self.view.addSubview(pageControl)
        
    }
    
    func newVC(viewcontroller: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: viewcontroller)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {
            return nil
            
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
//            return orderedViewControllers.last
            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {
            return nil
            
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard orderedViewControllers.count != nextIndex else {
//            return orderedViewControllers.first
            return nil
        }
        
        guard orderedViewControllers.count > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
        
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        let pageContentViewController = pageViewController.viewControllers![0]
        self.pageControl.currentPage = orderedViewControllers.firstIndex(of: pageContentViewController)!
        
        
        
    }

}

