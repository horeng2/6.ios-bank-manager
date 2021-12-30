//
//  BankManagerUIApp - ViewController.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import UIKit

class BankManagerViewController: UIViewController {
  private let menuStackView = UIStackView()
  private let buttonStackView = UIStackView()
  private let addClientButton = UIButton()
  private let resetButton = UIButton()
  private let workTimeLabel = UILabel()
  private let workStatusStackView = UIStackView()
  private let waitStatusLabel = UILabel()
  private let workingStatusLabel = UILabel()
  private let waitingQueueStackView = UIStackView()
  private let workingStackView = UIStackView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setUpStackView()
    setUpButton()
    setUpLabel()
  }

  private func setUpStackView() {
    setUpMenuStackView()
    setUpButtonStackView()
    setUpWorkStatusSatackView()
    setUpwaitingQueueStackView()
    setUpworkingStackView()
  }
  
  private func setUpButton() {
    buttonStackView.addArrangedSubview(addClientButton)
    buttonStackView.addArrangedSubview(resetButton)
    
    setUpAddClientButton()
    setUpResetButton()
  }
  
  private func setUpLabel() {
    setUpworkTimeLabel()
    setUpwaitStatusLabel()
    setUpWorkingStatusLabel()
  }
  
  private func setUpMenuStackView() {
    let safeArea = view.safeAreaLayoutGuide
    view.addSubview(menuStackView)
    menuStackView.addArrangedSubview(buttonStackView)
    menuStackView.addArrangedSubview(workTimeLabel)
    menuStackView.addArrangedSubview(workStatusStackView)
    
    menuStackView.axis = .vertical
    menuStackView.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      menuStackView.topAnchor.constraint(equalTo: safeArea.topAnchor),
      menuStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
      menuStackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor)
    ])
    menuStackView.spacing = 10
  }
  
  private func setUpButtonStackView() {
    buttonStackView.axis = .horizontal
    buttonStackView.distribution = .fillEqually
  }
  
  private func setUpWorkStatusSatackView() {
    workStatusStackView.addArrangedSubview(waitStatusLabel)
    workStatusStackView.addArrangedSubview(workingStatusLabel)
    
    workStatusStackView.axis = .horizontal
    workStatusStackView.distribution = .fillEqually
  }
  
  private func setUpwaitingQueueStackView() {
    let safeArea = view.safeAreaLayoutGuide
    view.addSubview(waitingQueueStackView)
    
    waitingQueueStackView.axis = .vertical
    waitingQueueStackView.distribution = .fillEqually
    waitingQueueStackView.spacing = 10
    waitingQueueStackView.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      waitingQueueStackView.topAnchor.constraint(equalTo: menuStackView.bottomAnchor, constant: 10),
      waitingQueueStackView.leadingAnchor.constraint(equalTo: menuStackView.leadingAnchor),
      waitingQueueStackView.trailingAnchor.constraint(equalTo: safeArea.centerXAnchor)
    ])
  }
  
  private func setUpworkingStackView() {
    let safeArea = view.safeAreaLayoutGuide
    view.addSubview(workingStackView)
    
    workingStackView.axis = .vertical
    workingStackView.distribution = .fillEqually
    workingStackView.spacing = 10
    workingStackView.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      workingStackView.topAnchor.constraint(equalTo: menuStackView.bottomAnchor, constant: 10),
      workingStackView.leadingAnchor.constraint(equalTo: safeArea.centerXAnchor),
      workingStackView.trailingAnchor.constraint(equalTo: menuStackView.trailingAnchor)
    ])
  }
  
  private func setUpResetButton() {
    resetButton.setTitle("초기화", for: .normal)
    resetButton.setTitleColor(.systemRed, for: .normal)
  }
  
  private func setUpAddClientButton() {
    addClientButton.setTitle("고객 10명 추가", for: .normal)
    addClientButton.setTitleColor(.systemBlue, for: .normal)
  }
  
  private func setUpworkTimeLabel() {
    workTimeLabel.text = "업무시간 - 04:25:999"
    workTimeLabel.textAlignment = .center
    workTimeLabel.font = UIFont.preferredFont(forTextStyle: .title2)
    workTimeLabel.adjustsFontForContentSizeCategory = true
  }
  
  private func setUpwaitStatusLabel() {
    waitStatusLabel.text = "대기중"
    waitStatusLabel.textAlignment = .center
    waitStatusLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
    waitStatusLabel.textColor = .white
    waitStatusLabel.adjustsFontForContentSizeCategory = true
    waitStatusLabel.backgroundColor = .systemGreen
  }
  
  private func setUpWorkingStatusLabel() {
    workingStatusLabel.text = "업무중"
    workingStatusLabel.textAlignment = .center
    workingStatusLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
    workingStatusLabel.textColor = .white
    workingStatusLabel.adjustsFontForContentSizeCategory = true
    workingStatusLabel.backgroundColor = .systemIndigo
  }
}
