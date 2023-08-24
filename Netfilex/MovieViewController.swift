//
//  MovieViewController.swift
//  Netfilex
//
//  Created by 서승우 on 2023/07/19.
//

import SnapKit
import UIKit

final class MovieViewController: UIViewController {
    // MARK: - View
    private let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(
            named: "어벤져스엔드게임"
        )

        return imageView
    }()

    private let gradationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "background")
        return imageView
    }()

    private let labelStackView: LabelStackView = {
        let stackView = LabelStackView(frame: .zero)
        stackView.axis = .horizontal
        stackView.alignment = .lastBaseline
        stackView.distribution = .fillProportionally
        stackView.spacing = 16

        return stackView
    }()

    private let previewImageStackView: PreviewImageStackView = {
        let stackView = PreviewImageStackView(frame: .zero)
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 16

        return stackView
    }()

    private let previewLabel: UILabel = {
        let label = UILabel()
        label.text = "미리보기"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 20)

        return label
    }()

    private let buttonStackView: ButtonStackView = {
        let stackView = ButtonStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 8

        return stackView
    }()

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        configureHierarhcy()
    }

}

private extension MovieViewController {

    func configureHierarhcy() {
        [
            posterImageView,
            gradationImageView,
            labelStackView,
            buttonStackView,
            previewLabel,
            previewImageStackView
        ].forEach { view.addSubview($0) }

        let inset: CGFloat = 16
        posterImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        gradationImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        labelStackView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.horizontalEdges.equalToSuperview().inset(inset)
        }

        previewImageStackView.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide)
            make.horizontalEdges.equalToSuperview().inset(inset)
        }

        previewLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(inset)
            make.bottom.equalTo(previewImageStackView.snp.top).offset(-inset)
        }

        buttonStackView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.horizontalEdges.equalToSuperview().inset(inset)
            make.bottom.equalTo(previewLabel.snp.top).offset(-inset)
        }
    }

}
