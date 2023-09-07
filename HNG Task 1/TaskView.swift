//
//  TaskView.swift
//  HNG Task 1
//
//  Created by Yusuf Akeem on 07/09/2023.
//

import UIKit

class TaskView: UIView {
    
    lazy var mainView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var slackNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Slack Name:"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .light)
        label.textAlignment = .center
        return label
    }()
    
    lazy var fullnameLabel: UILabel = {
        let label = UILabel()
        label.text = "Yusuf Akeem"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 25, weight: .bold)
        return label
    }()
    
    lazy var trackLabel: UILabel = {
        let label = UILabel()
        label.text = "Track:"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .light)
        label.textAlignment = .center
        return label
    }()
    
    lazy var trackTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "iOS Mobile Developer Intern, HNG."
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 12, weight: .medium)
        return label
    }()
    
    lazy var displayPictureLabel: UILabel = {
        let label = UILabel()
        label.text = "Slack Display Picture"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .medium)
        label.textAlignment = .center
        return label
    }()
    
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "profilePicture")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var githubButton: UIButton = {
        let button = UIButton()
        button.setTitle("Open GitHub", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.tintColor = .white
        button.layer.cornerRadius = 15
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 2)
        button.layer.shadowOpacity = 0.5
        button.layer.shadowRadius = 4
        button.addTarget(self, action: #selector(handleGithubAction), for: .touchUpInside)
        return button
    }()
    
    var didTapWebPage: (() -> ())?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TaskView {
    private func setupViews() {
        prepareViews()
        prepareConstraints()
    }
    
    private func prepareViews() {
        addSubview(mainView)
        mainView.addSubview(slackNameLabel)
        mainView.addSubview(fullnameLabel)
        mainView.addSubview(trackLabel)
        mainView.addSubview(trackTitleLabel)
        mainView.addSubview(displayPictureLabel)
        mainView.addSubview(profileImageView)
        mainView.addSubview(githubButton)
    }
    
    private func prepareConstraints() {
        mainView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mainView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        mainView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        slackNameLabel.topAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        slackNameLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
        fullnameLabel.topAnchor.constraint(equalTo: slackNameLabel.bottomAnchor, constant: 1).isActive = true
        fullnameLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
        trackLabel.topAnchor.constraint(equalTo: fullnameLabel.bottomAnchor, constant: 10).isActive = true
        trackLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
        trackTitleLabel.topAnchor.constraint(equalTo: trackLabel.bottomAnchor).isActive = true
        trackTitleLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
        displayPictureLabel.topAnchor.constraint(equalTo: trackTitleLabel.bottomAnchor, constant: 100).isActive = true
        displayPictureLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
        profileImageView.topAnchor.constraint(equalTo: displayPictureLabel.bottomAnchor, constant: 10).isActive = true
        profileImageView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        githubButton.bottomAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.bottomAnchor, constant: -40).isActive = true
        githubButton.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        githubButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
        githubButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    @objc func handleGithubAction() {
        didTapWebPage?()
    }
}

