//
//  LabelStackView.swift
//  Netfilex
//
//  Created by 서승우 on 2023/08/24.
//
import SnapKit
import UIKit

final class LabelStackView: UIStackView {
    // MARK: - View
    private let nLabel: UILabel = {
        let label = UILabel()
        label.text = "N"
        label.textColor = .white
        label.font = .systemFont(
            ofSize: 50,
            weight: .heavy
        )
        return label
    }()

    private let tvProgramLabel: UILabel = {
        let label = UILabel()
        label.text = "TV 프로그램"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 17)

        return label
    }()

    private let movieLabel: UILabel = {
        let label = UILabel()
        label.text = "영화"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 17)

        return label
    }()

    private let jjimLabel: UILabel = {
        let label = UILabel()
        label.text = "내가 찜한 콘텐츠"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 17)

        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        configureHierarchy()
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

private extension LabelStackView {

    func configureHierarchy() {
        [
            nLabel,
            tvProgramLabel,
            movieLabel,
            jjimLabel
        ].forEach { addArrangedSubview($0) }
    }

}
