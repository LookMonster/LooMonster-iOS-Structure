import RIBs

public protocol QuestionBuildable: Buildable {
    // Interface 로 보내주세요
    func build(withListener listener: QuestionListener , cuttentImageIndex: Int?) -> ViewableRouting
}
