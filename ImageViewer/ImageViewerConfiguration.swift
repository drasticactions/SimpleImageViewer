import Foundation
import UIKit

public typealias ImageCompletion = (UIImage?) -> Void
public typealias ImageBlock = (@escaping ImageCompletion) -> Void

@objc(ImageViewerConfiguration)
public final class ImageViewerConfiguration : NSObject {
    @objc(image)
    public var image: UIImage?
    @objc(imageView)
    public var imageView: UIImageView?
    public var imageBlock: ImageBlock?
    
    public typealias ConfigurationClosure = (ImageViewerConfiguration) -> ()
    
    @objc public init(configurationClosure: ConfigurationClosure) {
        super.init()
        configurationClosure(self)
    }
}
