//
//  Tabbar.swift
//  LittleRedBook
//
//  Created by 刘奇 on 2022/11/3.
//

import SwiftUI

struct Tabbar: View {
    var body: some View {
        // 创建水平堆栈视图
        HStack{
            
            HStack{
                
                Spacer()
                
                // 添加首页按钮
                Button{
                    
                }label: {
                    Text("首页")
                }
                
                Spacer()
                
                // 添加购物按钮
                Button{
                    
                }label: {
                    Text("购物")
                }
                Spacer()
                
            }
            
            // 创建 Plus图片视图
            Image(systemName: "plus")
            // 设置 白色前景色
                .foregroundColor(.white)
            // 添加 8边距
                .padding(8)
            // 添加 红色矩形圆角 8 radius
                .background(.red,in: RoundedRectangle(cornerRadius: 8))
            
                
            
            HStack{
                
                Spacer()
            
                // 添加消息按钮
                Button{
                    
                }label: {
                    Text("消息")
                }
                
                Spacer()
                
                // 添加我按钮
                Button{
                    
                }label: {
                    Text("我")
                }
                
                Spacer()
                
            }
        }
        // 设置黑色前景
        .foregroundColor(.black)
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}
