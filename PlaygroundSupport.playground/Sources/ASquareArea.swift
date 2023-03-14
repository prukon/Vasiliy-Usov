import UIKit

protocol squareAreaProtocol{
    init(size:CGSize, color: UIColor)
        //установить шарик в область
        func setBalls(withColors: [UIColor], andRadius: Int)
}

public class SquareArea: UIView, squareAreaProtocol {
    //коллекция всех шариков
    
}

private var balls: [Ball] = []
//аниматор графических объектов
private var animator: UIDynamicAnimator?
//обработчик перемещений объектов
private var snapBihavior: UISnapBehavior?
//обработчи столкновений
private var collisionBehavior: UICollisionBehavior


required public init(Size: CGSize, color: UIColor) {
    //создание обработчика столкновений
    collisionBehavior = UICollisionBehavior(item: [])
    //Строим прямоугольную графическую облась
    super.init(frame:
                CGRect(x: 0, y: 0, width: size.width, height: size.height))
    //изменяем цвет фона
    self.background = color
    //указываем границы прямоугольной области как объекты взаимодействия, чтобы о них могли ударяться шарики
    collisionBehavior.setTranslatesReferenceBoundsIntoBoundary(
        with: UIEdgeinsets(top: 1, left: 1, bottom: 1, right: 1))
    //подключаем аниматор с указанием на сам класс
    animator = UIDynamicAnimator(referenceView: self)
    //подключаем к аниматору обработчик столкновений
    animator?.addBehavior(collisionBehavior)
}
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }

public func setBalls(withColors ballsColor: [UIColor], andRadius radius: Int) {}
