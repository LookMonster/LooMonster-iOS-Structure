## **☝🏿 LookMonster Architecture**

<img width="480" src="https://github.com/LookMonster/LooMonster-iOS-Structure/assets/102890390/fd69ef60-4d35-4870-8105-bd09cb2ed250"/>

## **✌🏿 LookMonster Module Start**
**LookMonster Module 프로젝트 시작 방법**

1. 터미널을 열고 다음 명령어를 차례로 실행하여 "monster" 명령어를 등록합니다:
    
    ```Swift
    cp monster.sh /usr/local/bin/monster
    chmod +x /usr/local/bin/monster
    ```
    
2. 아래 명령어를 실행하여 프로젝트를 실행할 준비를 합니다:
    
    ```Swift
    monster generate
    ```
    

---

**RIB 추가 방법**

1. 터미널을 열고 다음 명령어를 사용하여 RIB을 추가합니다:
    
    ```Swift
    sh monster_create_rib.sh <추가하고 싶은 RIB 이름> "<추가하고 싶은 경로>" <받아야하는 인터페이스>
    ```
    
    - **`<추가하고 싶은 RIB 이름>`**: 추가하려는 RIB의 이름을 입력합니다.
    - **`"<추가하고 싶은 경로>"`**: 새로운 RIB이 생성될 경로를 입력합니다. (예: "/Users/<사용자명>/Desktop/LookMonster/LookMonster-iOS/Features/User/Main/Community/CommunityUserInterface/Implement/AppCommunityImpl/Views")
    - **`<받아야하는 인터페이스>`**: 새로 생성되는 RIB이 받아야 하는 인터페이스의 이름을 입력합니다.
2. 예시:
    
    ```Swift
    sh monster_create_rib.sh Question "/Users/junha/Desktop/LookMonster/LookMonster-iOS/Features/User/Main/Community/CommunityUserInterface/Implement/AppCommunityImpl/Views" Community
    ```

## 👊🏿 Why should I use this module?
- 위 모듈을 RIBs와 Tuist를 기반으로 만든 모듈입니다.
  - RIBs 기반의 모듈화를 원하시면 추천드립니다.
  - 테스트가 빨라지고 기능 단위로 앱을 만들기 편해집니다.
  - 의존성 관리가 편해집니다.
  - 의존성 트리 완벽해짐

