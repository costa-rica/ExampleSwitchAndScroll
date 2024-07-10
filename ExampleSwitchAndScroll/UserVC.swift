//
//  ViewController.swift
//  ExampleSwitchAndScroll
//
//  Created by Nick Rodriguez on 08/07/2024.
//

import UIKit


class UserVC: TemplateVC {
    //    let lblScreenName = UILabel()
    let scrollView = UIScrollView()
    let contentView = UIView()
    let testLabelsView = TestLabelsView()
    
    let vwUserVcLine01=UIView()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setup_TopSafeBar()
        setupScrollView()
        setupContentView()
        setupTestLabelsView()
        setup_vwUserVcLine01()
        setupSwitchWithLabel()

    }
    func setupScrollView() {
        // Set up the scroll view
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        // Set up constraints for the scroll view
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: vwTopSafeBar.bottomAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func setupContentView() {
        // Set up the content view inside the scroll view
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)
        
        // Set up constraints for the content view
        NSLayoutConstraint.activate([
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor) // This ensures vertical scrolling
        ])
    }
    
    func setupTestLabelsView() {
        // Set up the test labels view
        testLabelsView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(testLabelsView)
        
        // Set up constraints for the test labels view
        NSLayoutConstraint.activate([
            testLabelsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            testLabelsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            testLabelsView.topAnchor.constraint(equalTo: contentView.topAnchor)
        ])
    }
    
    func setup_vwUserVcLine01(){
        vwUserVcLine01.accessibilityIdentifier = "vwUserVcLine01"
        vwUserVcLine01.translatesAutoresizingMaskIntoConstraints = false
        vwUserVcLine01.backgroundColor = UIColor(named: "lineColor")
        contentView.addSubview(vwUserVcLine01)
        NSLayoutConstraint.activate([
            vwUserVcLine01.topAnchor.constraint(equalTo: testLabelsView.bottomAnchor),
            vwUserVcLine01.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            vwUserVcLine01.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            vwUserVcLine01.heightAnchor.constraint(equalToConstant: 1),
            
        ])
    }

    
    
    
    func setupSwitchWithLabel() {
        let testLabel = UILabel()
        testLabel.translatesAutoresizingMaskIntoConstraints = false
        testLabel.text = "Test Switch"
        testLabel.textAlignment = .center
        testLabel.backgroundColor = UIColor.lightGray.withAlphaComponent(0.5)
        
        let testSwitch = UISwitch()
        testSwitch.translatesAutoresizingMaskIntoConstraints = false
        testSwitch.addTarget(self, action: #selector(switchToggled(_:)), for: .valueChanged)
        
        contentView.addSubview(testLabel)
        contentView.addSubview(testSwitch)
        
        // Set up constraints for the test label
        NSLayoutConstraint.activate([
            testLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//            testLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            testLabel.topAnchor.constraint(equalTo: testLabelsView.bottomAnchor, constant: 16),
            testLabel.heightAnchor.constraint(equalToConstant: 50),
//            testLabel.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        // Set up constraints for the test switch
        NSLayoutConstraint.activate([
            testSwitch.leadingAnchor.constraint(equalTo: testLabel.trailingAnchor, constant: 16),
            testSwitch.centerYAnchor.constraint(equalTo: testLabel.centerYAnchor),
            testSwitch.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            testSwitch.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16)
        ])
    }
    
    @objc func switchToggled(_ sender: UISwitch) {
        print("Switch is now \(sender.isOn ? "ON" : "OFF")")
    }
    
}




//class UserVC: UIViewController {
//    let lblTitle = UILabel()
//    let scrollView = UIScrollView()
//    let contentView = UIView()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        setup_scrollView()
//        setup_contentView()
//        setupLabels()
//        view.backgroundColor = .gray
//    }
//    
//    func setup_scrollView(){
//        scrollView.backgroundColor = .red
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        scrollView.accessibilityIdentifier = "scrollView"
//        view.addSubview(scrollView)
//        NSLayoutConstraint.activate([
//            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
//            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//        ])
//    }
//    func setup_contentView(){
//        contentView.backgroundColor = .orange
//        contentView.translatesAutoresizingMaskIntoConstraints = false
//        contentView.accessibilityIdentifier = "contentView"
//        scrollView.addSubview(contentView)
//        NSLayoutConstraint.activate([
//            contentView.topAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.topAnchor),
//            contentView.trailingAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.trailingAnchor),
//            contentView.leadingAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.leadingAnchor),
//            contentView.bottomAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.bottomAnchor),
//            contentView.widthAnchor.constraint(equalTo: view.widthAnchor)
//        ])
//    }
//    
//    private func setupLabels() {
//        var previousLabel: UILabel? = nil
//        for i in 1...30 {
//            let label = UILabel()
//            label.translatesAutoresizingMaskIntoConstraints = false
//            label.text = String(format: "Label%02d", i)
//            label.font = UIFont.systemFont(ofSize: 16)
//            view.addSubview(label)
//
//            NSLayoutConstraint.activate([
//                label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//                label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
//            ])
//            
//            if let previous = previousLabel {
//                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
//            } else {
//                label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
//            }
//
//            previousLabel = label
//        }
//
////        if let lastLabel = previousLabel {
////            lastLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
////        }
//    }
//
//}

