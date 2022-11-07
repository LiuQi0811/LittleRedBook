//
//  Card.swift
//  LittleRedBook
//
//  Created by 刘奇 on 2022/11/3.
//

import SwiftUI

struct Card: View {
  /**
   卡片变量
   */
    var text = "文案"
    var image = ""
    var username = ""
    var locate = ""
    var body: some View {
        /**
         创建卡片视图
         */
        // 创建垂直堆栈视图
        VStack(alignment: .leading,spacing: 8){ // 左对齐
            // 创建图片
            Image(image)
            // 设置图片可编辑
                .resizable()
            // 设置图片填充方式
                .scaledToFit()
            
            // 添加文本视图
                Text(text)
            // 创建水平堆栈视图
            HStack(spacing: 0){ //设置间距
                // 头像信息
                Image(image)
                // 调取自定义图片扩展接口
                    .CircleImage(dimensions: 40)
                // 用户名
                Text(username)
                Spacer()
                // 定位图标
                Image(systemName: "location")
                // 路程公里数
                Text(locate)
            }
            // 设置 字体
            .font(.footnote)

        }
        // 创建frame 框架
        // 将宽度设置为手机屏幕的一半宽度
        .frame(width: UIScreen.main.bounds.width / 2 - 50)
        // 防止两者超出屏幕 -20 留下空间
        // 设置 水平向上
        .padding()
        // 设置白色背景 圆角矩形 8radius
        .background(.white,in: RoundedRectangle(cornerRadius: 8))
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
