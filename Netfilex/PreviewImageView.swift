//
//  PreviewImageView.swift
//  Netfilex
//
//  Created by 서승우 on 2023/08/24.
//

import UIKit

final class PreviewImageView: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        configureAttributes()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

private extension PreviewImageView {

    func configureAttributes() {
        contentMode = .scaleAspectFill
        backgroundColor = .clear
        layer.borderColor = UIColor.gray.cgColor
        layer.borderWidth = 2
        layer.cornerRadius = frame.width / 2
        clipsToBounds = true
    }

}
