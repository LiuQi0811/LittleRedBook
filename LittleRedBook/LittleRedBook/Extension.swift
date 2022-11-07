//
//  Extension.swift
//  LittleRedBook
//
//  Created by 刘奇 on 2022/11/5.
//

/**
 扩展视图
 */
import SwiftUI


/**
 图片扩展
 */
extension Image{
    /**
     自定义圆形图像样式
     */
    func CircleImage(dimensions: CGFloat) ->some View{
//        self 表示 当前Image对象
        self
        // 设置图片可编辑
            .resizable()
        // 设置图片填充方式
            .aspectRatio(contentMode: .fit)
        // 设置圆形头像
            .mask(Circle())
        // 设置大小
            .frame(width: dimensions,height: dimensions)
    }
}
