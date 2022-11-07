//
//  NearbyView.swift
//  LittleRedBook
//
//  Created by 刘奇 on 2022/11/5.
//

import SwiftUI

/**
 附近视图
 */
struct NearbyView: View {
    var body: some View {
        
        // 创建轴视图 ScrollView滚动视图
            ScrollView{
                // 设置留白
                Color.clear.frame(height: 0)
                // 设置 body内容
                    // 创建水平堆栈视图
                    HStack(alignment: .top){ // 对齐方式 顶部对齐
                        /**
                         两栏布局
                         */
                        
                        // 调取卡片视图
                        VStack{
                            Card(text: "哈哈哈😄",image: "壁纸1",username: "风吹屁屁凉",locate: "33km")
                        }
                        
                        VStack{
                            Card(text: "乡村小镇 好美啊😄",image: "壁纸2",username: "滑不溜秋",locate: "45km")
                            
                        }
                        
                    }
            }
            // 设置灰色的背景色 0.0.5透明度
            .background(.gray.opacity(0.05))
        
    }
}

struct NearbyView_Previews: PreviewProvider {
    static var previews: some View {
        NearbyView()
    }
}
