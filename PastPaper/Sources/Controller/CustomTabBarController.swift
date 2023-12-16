//
//  CustomTabBarController.swift
//  PastPaper
//
//  Created by Rafael on 12/9/23.
//

import UIKit

import SnapKit
import Then

final class CustomTabBarController: UIViewController {
    
    // MARK: - 탭 바 정의
    
    fileprivate enum Tab {
        case home, bookmark, setting
        
        /// 각 탭에 해당하는 뷰 컨트롤러를 반환
        var viewController: UIViewController {
            switch self {
            case .home:
                return HomeViewController()
            case .bookmark:
                return BookmarkViewController()
            case .setting:
                return SettingViewController()
            }
        }
        
        /// 각 탭에 해당하는 이미지를 반환
        var imageName: String {
            switch self {
            case .home: return "house"
            case .bookmark: return "bookmark"
            case .setting: return "gearshape"
            }
        }
    }
    
    // MARK: - 프로퍼티 선언
    
    private lazy var tabs: [Tab] = [.home, .bookmark, .setting]
    private lazy var customTabBarView = UIView()
    private var currentViewController: UIViewController?
    
    // MARK: - 생명주기
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        switchToViewController(tabs[0].viewController)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        customTabBarView.layer.shadowPath = UIBezierPath(
            roundedRect: customTabBarView.bounds,
            cornerRadius: 30
        ).cgPath
    }
    
}

// MARK: - 뷰 설정

private extension CustomTabBarController {
    
    // MARK: 뷰 및 탭 바 UI 초기화
    
    /// 뷰 및 탭 바 UI 초기화
    func setupViews() {
        view.backgroundColor = .white
        setupCustomTabBarView()
        setupTabBarButtons()
    }
    
    // MARK: 탭 바 뷰 설정
    
    /// 탭 바 뷰 설정
    /// - CustomTabBarView의 기본 UI 속성(배경색, 모서리 둥글기, 그림자) 설정
    /// - SnapKit을 사용하여 뷰에 Auto Layout 제약 추가
    func setupCustomTabBarView() {
        view.addSubview(customTabBarView)
        configureTabBarAppearance()
        makeTabBarConstraints()
    }
    
    func configureTabBarAppearance() {
        customTabBarView.backgroundColor = .white
        
        customTabBarView.clipsToBounds = true
        customTabBarView.layer.cornerRadius = 30
        
        customTabBarView.layer.masksToBounds = false
        customTabBarView.layer.shadowColor = UIColor.systemGray.cgColor
        customTabBarView.layer.shadowOpacity = 1
        customTabBarView.layer.shadowOffset = CGSize(width: 0, height: 1)
        customTabBarView.layer.shadowRadius = 2
    }
    
    func makeTabBarConstraints() {
        customTabBarView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.equalTo(20)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(60)
        }
    }
    
    // MARK: 탭 바 버튼 생성
    
    /// 탭 바 버튼 생성
    /// - Parameter tab: 각 탭에 해당되는 이미지와 액션
    /// - Returns: UIButton 객체 반환
    func createTabBarButton(for tab: Tab) -> UIButton {
        let button = UIButton(type: .custom).then {
            $0.setImage(UIImage(systemName: tab.imageName)?
                .withTintColor(.black, renderingMode: .alwaysOriginal)
                .withConfiguration(
                    UIImage.SymbolConfiguration(
                        pointSize: 20.0, weight: .regular
                    )
                ), for: .normal
            )
            
            $0.addTarget(self, action: #selector(tabBarButtonTapped), for: .touchUpInside)
            $0.tag = tabs.firstIndex(of: tab) ?? 0
        }
        return button
    }
    
    // MARK: 탭 바 버튼 설정
    
    /// 탭 바 버튼 설정
    /// - 각 탭에 대한 버튼을 생성하고 이를 수평 스택 뷰에 추가
    /// - 스택 뷰는 customTabBarView에 추가되며, 모든 버튼이 균등하게 분포
    /// - SnapKit을 사용하여 뷰에 Auto Layout 제약 추가
    func setupTabBarButtons() {
        let stackView = createTabBarButtons()
        
        tabs.forEach { tab in
            let button = createTabBarButton(for: tab)
            stackView.addArrangedSubview(button)
        }
        
        customTabBarView.addSubview(stackView)
        makeTabBarButtonsConstraints(stackView)
    }
    
    func createTabBarButtons() -> UIStackView {
        let stackView = UIStackView().then {
            $0.axis = .horizontal
            $0.alignment = .fill
            $0.distribution = .fillEqually
        }
        return stackView
    }
    
    func makeTabBarButtonsConstraints(_ stackView: UIStackView) {
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
}

// MARK: - 탭 전환 및 탭 바 버튼 액션 처리

private extension CustomTabBarController {
    
    // MARK: 현재 표시되는 뷰 컨트롤러를 새로운 뷰 컨트롤러로 전환
    
    /// 현재 표시되는 뷰 컨트롤러를 새로운 뷰 컨트롤러로 전환
    ///
    /// 이 메서드는 현재 활성화된 뷰 컨트롤러를 새로 전달된 뷰 컨트롤러로 교체
    /// - 전환 과정에서 현재 뷰 컨트롤러를 뷰 계층구조에서 제거하고 새로운 뷰 컨트롤러를 자식으로 추가
    /// - 새로운 뷰 컨트롤러의 뷰는 현재 뷰 컨트롤러의 뷰 바운드에 맞게 조정
    /// - 이 과정에서 커스텀 탭 바 뷰는 항상 가장 앞에 위치하도록 보장
    /// - Parameter vc: 화면에 표시될 새로운 뷰 컨트롤러
    func switchToViewController(_ vc: UIViewController) {
        removeCurrentViewController()
        addNewViewController(vc)
    }
    
    func removeCurrentViewController() {
        currentViewController?.willMove(toParent: nil)
        currentViewController?.view.removeFromSuperview()
        currentViewController?.removeFromParent()
    }
    
    func addNewViewController(_ vc: UIViewController) {
        addChild(vc)
        vc.view.frame = view.bounds
        view.addSubview(vc.view)
        vc.didMove(toParent: self)
        view.bringSubviewToFront(customTabBarView)
        currentViewController = vc
    }
    
    // MARK: 탭 바의 버튼이 탭될 때 호출되는 메서드
    
    /// 탭 바의 버튼이 탭될 때 호출되는 메서드
    ///
    /// 이 메서드는 사용자가 탭 바의 버튼 중 하나를 탭할 때마다 호출
    /// 버튼의 `tag` 속성을 사용하여 어떤 탭이 선택되었는지 식별하고 해당 탭에 연결된 뷰 컨트롤러로 UI를 전환
    ///
    /// - Parameter sender: 사용자가 탭한 UIButton 객체
    /// - 사용자가 탭한 버튼에 따라 `tabs` 배열에서 해당하는 `Tab`을 찾아 해당 `Tab`의 `viewController`로 현재 화면을 전환
    @objc func tabBarButtonTapped(_ sender: UIButton) {
        let selectedTab = tabs[sender.tag]
        switchToViewController(selectedTab.viewController)
    }
    
}
