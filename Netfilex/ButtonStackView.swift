//
//  ButtonStackView.swift
//  Netfilex
//
//  Created by 서승우 on 2023/08/24.
//

import SnapKit
import UIKit

final class ButtonStackView: UIStackView {
    let jjimButton: UIButton = {
        if #available(iOS 15.0, *) {
            var config = UIButton.Configuration.plain()
            config.image = UIImage(named: "check")
            config.imagePlacement = .top
            config.imagePadding = 8
            config.attributedTitle = AttributedString.init(
                "내가 찜한 컨텐츠",
                attributes: AttributeContainer(
                    [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13)]
                )
            )
            config.baseForegroundColor = .white
            let button = UIButton(configuration: config)

            return button

        } else {
            fatalError("그냥 하지마!")
        }
    }()

    let playButton: UIButton = {
        if #available(iOS 15.0, *) {
            var config = UIButton.Configuration.plain()
            config.image = UIImage(named: "play_normal")
            config.baseForegroundColor = .white
            let button = UIButton(configuration: config)

            return button

        } else {
            fatalError("그냥 하지마!")
        }
    }()

    let infoButton: UIButton = {
        if #available(iOS 15.0, *) {
            var config = UIButton.Configuration.plain()
            config.image = UIImage(named: "info")
            config.baseForegroundColor = .white
            config.imagePlacement = .top
            config.imagePadding = 8
            config.title = "정보"
            let button = UIButton(configuration: config)

            return button

        } else {
            fatalError("그냥 하지마!")
        }
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        configureHierarchy()
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

private extension ButtonStackView {

    func configureHierarchy() {
        [
            jjimButton,
            playButton,
            infoButton
        ].forEach { addArrangedSubview($0) }

    }

}
