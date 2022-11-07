//
//  FollowView.swift
//  LittleRedBook
//
//  Created by 刘奇 on 2022/11/5.
//

import SwiftUI


/**
 关注视图
 */

struct FollowView: View {
    @State var comment: String = ""
    var body: some View {
        // 创建轴视图 ScrollView滚动视图
        ScrollView{
              
                ScrollView(.horizontal,showsIndicators: false){ //showsIndicators false 隐藏滚动边框
                    // 创建水平堆栈视图
                    HStack{
                        ForEach(1...10,id: \.self){ item in
                            VStack(spacing: 0){
                                HStack{
                                    // 关注的人的信息
                                    Image("美女\(item)")
                                    // 调取自定义图片扩展接口
                                        .CircleImage(dimensions: 100)
                                    Image("hey_followfeed_plus")
                                        .padding(.top,50)
                                        .padding(.horizontal,-43)
                                    // 添加Spacer 让其他部分向左
                                }
                                Text("作者空间")
                                    .font(.caption)
                                    .padding(.vertical,-13)
                            }
                            
                            Spacer()
                            
                        }
                       
                       
                    }
                }
                
                
                
                
                
       
            // 关注的人发布的内容
            // 创建垂直堆栈视图
            VStack{
                // 创建水平堆栈视图
                HStack{
                    //  导航头像信息内容
                    
                    // 发表人的头像
                    Image("美女300")
                        .CircleImage(dimensions: 50)
                    // 发表人昵称
                    Text("uername")
                    // 发表时间
                    Text("5小时前")
                        .font(.caption2)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    // 省略图标
                    Button{
                        
                    }label: {
                        Image(systemName: "ellipsis")
                    }
                }
                .foregroundColor(.black)
                // 省略图标的边距位置
                .padding(.trailing,15)
               
                
                // 发布的图片内容
                Image("壁纸9")
                    .resizable()
                // frame 放在 scaledToFit 前面 是因为 这样可以改变框架的尺寸 如果放在scaledToFit 后面 frame框架的width height 不起作用
                    .frame(width: 400,height: 400)
                    .scaledToFit()
                    
                    
                
                
                // 创建水平堆栈视图
                // 社交功能  喜爱 收藏 评论
                HStack(spacing: 15){
                    //分享
                    Button{
                        
                    }label: {
                        Image(systemName: "square.and.arrow.up")
                            .font(.system(size: 20))
                       
                    }
                    
                    Spacer()
                    
                    //喜爱
                    Button{
                        
                    }label: {
                        HStack(spacing: 0){
                            Image(systemName: "heart")
                                .font(.system(size: 20))
                            Text("11")
                        }
                    }
                    //收藏
                    Button{
                        
                    }label: {
                        HStack(spacing:0){
                            Image(systemName: "star.circle")
                                .font(.system(size: 20))
                            Text("110")
                        }
                    }
                    
                    //评论
                    Button{
                        
                    }label: {
                        HStack(spacing: 0){
                            Image(systemName: "ellipsis.bubble")
                                .font(.system(size: 20))
                            Text("101")
                        }
                    }
                   
                }
                .foregroundColor(.black)
                .padding(.horizontal,15)
                .padding(.vertical,8)
                
                // 创建水平堆栈视图
                HStack{
                    // 发表的信息内容
                    Text("女孩子对于姨妈巾的选择是有误区的，很多人没有找到适合自己的卫生巾，那么这就是最大的一个隐患。")
                        .font(.caption)
                }
                // 创建水平堆栈视图
                HStack{
                    // 评论的功能
                    // 评论的人头像
                    HStack{
                        Image("美女45")
                            .CircleImage(dimensions: 50)
                        TextField("喜欢就给个评论支持一下",text: self.$comment)
                    }
                    // 内容填充 头像靠左边
                    Spacer()
                }
                .background(.gray.opacity(0.1),in: RoundedRectangle(cornerRadius: 20))
                .padding(.horizontal,20)
               
            }
            .padding(.vertical)
            
            
            
            
            
            
                
            }
        // 设置灰色的背景色 0.05透明度
            .background(.gray.opacity(0.05))
    }
}

struct FollowView_Previews: PreviewProvider {
    static var previews: some View {
        FollowView()
    }
}
