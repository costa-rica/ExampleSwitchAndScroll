//
//  ComponentViews.swift
//  ExampleSwitchAndScroll
//
//  Created by Nick Rodriguez on 08/07/2024.
//

import UIKit


class TestViewWithSwitch: UIView {
    let label1 = UILabel()
    let label2 = UILabel()
    let weatherSwitch = UISwitch()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    func setupView() {
        weatherSwitch.translatesAutoresizingMaskIntoConstraints = false
        weatherSwitch.addTarget(self, action: #selector(switchValueChanged(_:)), for: .valueChanged)
        self.addSubview(weatherSwitch)
        NSLayoutConstraint.activate([
            weatherSwitch.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            weatherSwitch.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    @objc private func switchValueChanged(_ sender: UISwitch) {
        print("Switch value changed: \(sender.isOn)")
    }
}


class TestLabelsView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLabels()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupLabels()
    }
    
    private func setupLabels() {
        var previousLabel: UILabel? = nil
        for i in 1...20 {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Label \(i)"
            label.textAlignment = .center
            label.backgroundColor = UIColor.lightGray.withAlphaComponent(0.5)
            addSubview(label)
            
            // Set up constraints for the label
            NSLayoutConstraint.activate([
                label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
                label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
                label.heightAnchor.constraint(equalToConstant: 50)
            ])
            
            if let previous = previousLabel {
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 16).isActive = true
            } else {
                label.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
            }
            
            previousLabel = label
        }
        
        // Set the bottom constraint of the last label to the bottom anchor of the view
        if let lastLabel = previousLabel {
            lastLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
        }
    }
}

