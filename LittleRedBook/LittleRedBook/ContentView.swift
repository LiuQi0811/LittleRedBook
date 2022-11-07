//
//  ContentView.swift
//  LittleRedBook
//
//  Created by 刘奇 on 2022/11/2.
//

import SwiftUI

struct ContentView: View {
    @State var select = 0
    var body: some View {
        // 创建导航栏视图
        NavigationView{
            // 创建垂直堆栈视图
            VStack{
                
                // 顶部内容
                HStack{
                    
                    // 导航栏左侧的相机按钮
                    Button{

                    }label: {
                        Image("home_tab_camera_yellow")
                    }
                    // 设置黑色的前景色
                    .foregroundColor(.black)
                    
                    Spacer()
                    
                    HStack(spacing: 25){ //导航按钮设置 25 的间距
                        /**
                         导航栏三个按钮
                         */
                        
                        // 添加附近按钮
                        Button{
                            // 选中第一个选项卡
                            self.select = 0
                        }label: {
                            // 添加文本框
                            Text("附近")
                            // 三目运算符 如果是选中的选项卡下标 变黑色 不是变灰色
                                .foregroundColor(select == 0 ? .black : .gray)
                        }
                        
                        // 添加发现按钮
                        Button{
                            // 选中第二个选项卡
                            self.select = 1
                        }label: {
                            // 添加文本框
                            Text("发现")
                            // 三目运算符 如果是选中的选项卡下标 变黑色 不是变灰色
                                .foregroundColor(select == 1 ? .black : .gray)
                        }
                        
                        // 添加关注按钮
                        Button{
                            // 选中第三个选项卡
                            self.select = 2
                        }label: {
                            // 添加文本框
                            Text("关注")
                            // 三目运算符 如果是选中的选项卡下标 变黑色 不是变灰色
                                .foregroundColor(select == 2 ? .black : .gray)
                        }
                    }
                    
                    Spacer()
                    
                    // 导航栏右侧的搜索框按钮
                    Button{

                    }label: {
                        Image(systemName: "magnifyingglass")
                    }
                    // 设置黑色前景色
                    .foregroundColor(.black)
                }
                .padding()
                
                // 主题内容
                // 创建选项卡视图
                TabView(selection: self.$select){
            
                    // 调取附近视图
                    NearbyView()
                        .tag(0)
                    // 调取发现视图
                    DiscoveryView()
                        .tag(1)
                    // 调取关注视图
                    FollowView()
                        .tag(2)
                  
                    
                }
                    // 添加选项卡视图分页样式
                    // page 属性的indexDisplayMode 设置.never 隐藏小圆点
                .tabViewStyle(.page(indexDisplayMode: .never))
                
                
                    // 底部内容
                    // 调取 Tabbar 菜单视图
                    Tabbar()
            }
            // 导航栏隐藏
            .navigationBarHidden(true)
            
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
