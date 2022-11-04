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
            // 创建轴视图 ScrollView滚动视图
            ScrollView{
                // 让上面的空白更加合理
                // 让上面和工具栏按钮 隔出一定距离
                Color.clear.frame(height: 90)
                // 设置 body内容
                // 创建选项卡视图
                TabView(selection:self.$select){
                    
                    VStack{
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
                            
                            // HStack无论什么情况下都撑满屏幕 加上 Spacer()
                            Spacer()
                            
                        }
                        Spacer()
                    }
                    .tag(0)
                    
                    
                    VStack{
                        // 创建水平堆栈视图
                        HStack(alignment: .top){ // 对齐方式 顶部对齐
                            /**
                                                        两栏布局
                             */
                       
                            // 调取卡片视图
                            VStack{
                                Card(text: "哈哈哈😄",image: "壁纸3",username: "风吹屁屁凉",locate: "33km")
                                Card(text: "哈哈哈😄",image: "壁纸4",username: "风吹屁屁凉",locate: "33km")
                            }
                            
                            VStack{
                                Card(text: "乡村小镇 好美啊😄",image: "壁纸8",username: "滑不溜秋",locate: "45km")
                            }
                            
                            // HStack无论什么情况下都撑满屏幕 加上 Spacer()
                            Spacer()
                            
                        }
                        Spacer()
                    }
                    .tag(1)
                    
                    
                    VStack{
                        // 创建水平堆栈视图
                        HStack(alignment: .top){ // 对齐方式 顶部对齐
                            /**
                                                        两栏布局
                             */
                       
                            // 调取卡片视图
                            VStack{
                                Card(text: "哈哈哈😄",image: "壁纸5",username: "风吹屁屁凉",locate: "33km")
                                Card(text: "哈哈哈😄",image: "壁纸6",username: "风吹屁屁凉",locate: "33km")
                            }
                            
                            VStack{
                                Card(text: "乡村小镇 好美啊😄",image: "壁纸7",username: "滑不溜秋",locate: "45km")
                            }
                            
                            // HStack无论什么情况下都撑满屏幕 加上 Spacer()
                            Spacer()
                            
                        }
                        Spacer()
                    }
                    .tag(2)

                }
                // 设置选项卡视图样式 分页
                .tabViewStyle(.page)
                // 添加 frame框架 最小高度 根据屏幕高度
                .frame(minHeight: UIScreen.main.bounds.height)
                
            }
            // 设置灰色背景 0.2透明度
            .background(.black.opacity(0.2))
            // 忽略安全区域
            .ignoresSafeArea()
            // 创建工具栏
            .toolbar{
                // 添加工具栏项 principal居中
                ToolbarItem(placement: .principal){
                    // 创建水平堆栈视图
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
                }
                
                // 添加搜索栏工具栏项
                ToolbarItem(placement: .navigationBarTrailing){
                    // 导航栏右侧的搜索框按钮
                    Button{
                        
                    }label: {
                        Image(systemName: "magnifyingglass")
                    }
                    // 设置黑色前景色
                    .foregroundColor(.black)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
