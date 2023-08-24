//
//  PreviewImageStackView.swift
//  Netfilex
//
//  Created by 서승우 on 2023/08/24.
//

import SnapKit
import UIKit

final class PreviewImageStackView: UIStackView {

    let firstImageView: PreviewImageView = {
        let imageView = PreviewImageView(frame: .zero)
        imageView.image = UIImage(named: "2")

        return imageView
    }()

    let secondImageView: PreviewImageView = {
        let imageView = PreviewImageView(frame: .zero)
        imageView.image = UIImage(named: "3")

        return imageView
    }()

    let thirdImageView: PreviewImageView = {
        let imageView = PreviewImageView(frame: .zero)
        imageView.image = UIImage(named: "아바타")

        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        configureHierarchy()
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        firstImageView.layer.cornerRadius = frame.height / 2
        secondImageView.layer.cornerRadius = frame.height / 2
        thirdImageView.layer.cornerRadius = frame.height / 2
    }

}

private extension PreviewImageStackView {

    func configureHierarchy() {
        [
            firstImageView,
            secondImageView,
            thirdImageView
        ].forEach { addArrangedSubview($0) }

        firstImageView.snp.makeConstraints { make in
            make.height.equalTo(firstImageView.snp.width)
        }

        secondImageView.snp.makeConstraints { make in
            make.height.equalTo(secondImageView.snp.width)
        }

        thirdImageView.snp.makeConstraints { make in
            make.height.equalTo(thirdImageView.snp.width)
        }
    }

}
