//
//  Tabbar.swift
//  LittleRedBook
//
//  Created by 刘奇 on 2022/11/3.
//

import SwiftUI

struct Tabbar: View {
    @State var menuname: MenuName  = .home
    
    var body: some View {
        
        // 创建水平堆栈视图
        HStack{
            
            HStack{
                
                Spacer()
                
                // 添加首页按钮
                Button{
                    // 选中第一个按钮
                    self.menuname = .home
                }label: {
                    Text("首页")
                }
                // 三目运算符 判断前景色 符合当前枚举值 黑色 不符合 灰色
                .foregroundColor(menuname == .home ? .black : .gray)
                Spacer()
                
                // 添加购物按钮
                Button{
                    // 选中第二个按钮
                    self.menuname = .shopping
                }label: {
                    Text("购物")
                }
                // 三目运算符 判断前景色 符合当前枚举值 黑色 不符合 灰色
                .foregroundColor(menuname == .shopping ? .black : .gray)
                Spacer()
                
            }
            
         // 创建Plus 按钮
            Button{
                
            }label: {
                
                // 创建 Plus图片视图
                Image(systemName: "plus")
                // 设置 白色前景色
                    .foregroundColor(.white)
                // 添加 6边距 vertical 垂直方向扩展
                    .padding(.vertical,6)
                // 添加 12边距 horizontal 水平方向扩展
                    .padding(.horizontal,12)
                // 添加 红色矩形圆角 8 radius
                    .background(.red,in: RoundedRectangle(cornerRadius: 8))
                
            }
            
                
            
            HStack{
                
                Spacer()
            
                // 添加消息按钮
                Button{
                    // 选中第三个按钮
                    self.menuname = .message
                }label: {
                    Text("消息")
                }
                // 三目运算符 判断前景色 符合当前枚举值 黑色 不符合 灰色
                .foregroundColor(menuname == .message ? .black : .gray)
                
                Spacer()
                
                // 添加我按钮
                Button{
                    // 选中第四个按钮
                    self.menuname = .me
                }label: {
                    Text("我")
                }
                // 三目运算符 判断前景色 符合当前枚举值 黑色 不符合 灰色
                .foregroundColor(menuname == .me ? .black : .gray)
                
                Spacer()
                
            }
        }
        // 添加边距
        .padding(.top)
        // 设置白色背景
            .background(.white)
    }
}

/**
 创建菜单名称枚举
 */
enum MenuName{
    // 首页
    case home
    // 购物
    case shopping
    // 消息
    case message
    // 我
    case me
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}
