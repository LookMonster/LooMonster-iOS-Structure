import Foundation
import DesignSystem
import UIKit
import SnapKit
import RxCocoa
import RxSwift
import ResourceKit

enum TestCategoryCell {
    case category(model: MonsterBannerModel)
}

public class CategoryViewController: UIViewController {
    
    private var viewModel: MonsterBannerModel?
    private var cellList: [UITableViewCell] = []
    private var cells: [TestCategoryCell] = []
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .systemBackground
        tableView.showsHorizontalScrollIndicator = false
        tableView.register(
            MonsterCategoryTableViewCell.self,
            forCellReuseIdentifier: MonsterCategoryTableViewCell.identifier
        )
        return tableView
    }()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = MonsterBannerModel()
        self.configureUI()
        self.addCells()
        
        view.backgroundColor = .white
    }
}

extension CategoryViewController {
    private func configureUI() {
        self.view.addSubview(self.tableView)
        self.tableView.snp.makeConstraints {
            $0.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
        }
    }
    private func addCells() {
        guard let viewModel = self.viewModel else { return }
        self.cells.append(.category(model: viewModel))
    }
}

extension CategoryViewController: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.height / 3.55
    }

    public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        switch self.cells[indexPath.item] {
        case .category:
            cell.separatorInset = UIEdgeInsets(top: 0, left: self.tableView.bounds.width, bottom: 0, right: 0)
        }
    }
}

extension CategoryViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cells.count
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let viewModel = self.viewModel else { return UITableViewCell() }
        switch self.cells[indexPath.item] {
        case .category:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MonsterCategoryTableViewCell.identifier) as? MonsterCategoryTableViewCell else {
                return UITableViewCell()
            }
            cell.setUp(viewModel)
            return cell
        }
    }
}
