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
                    
                    // 导航栏右侧的搜索框按钮
                    Button{

                    }label: {
                        Image(systemName: "magnifyingglass")
                    }
                    // 隐藏按钮
                    .opacity(0)
                    
                    Spacer()
                    
                    HStack{
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
                                    Card(text: "哈哈哈😄",image: "壁纸9",username: "风吹屁屁凉",locate: "33km")
                                }
                                
                                VStack{
                                    Card(text: "乡村小镇 好美啊😄",image: "壁纸2",username: "滑不溜秋",locate: "45km")
                                }
                                
                            }
                    }
                    // 设置灰色的背景色 0.0.5透明度
                    .background(.gray.opacity(0.05))
                    .tag(0)
                    
                    
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
                                        Card(text: "哈哈哈😄",image: "壁纸5",username: "风吹屁屁凉",locate: "33km")
                                        Card(text: "哈哈哈😄",image: "壁纸4",username: "风吹屁屁凉",locate: "33km")
                                    }
                                    
                                    VStack{
                                        Card(text: "乡村小镇 好美啊😄",image: "壁纸7",username: "滑不溜秋",locate: "45km")
                                    }
                                    
                                }
                        }
                    // 设置灰色的背景色 0.05透明度
                        .background(.gray.opacity(0.05))
                        .tag(1)
                    
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
