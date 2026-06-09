// 应用程序入口文件 / 앱 진입점 파일
// lib/main.dart

import 'package:flutter/material.dart';
import '1.dart'; // 导入临沂旅行推荐页面 / 임기 여행 추천 페이지 불러오기

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 应用程序入口函数 / 앱 진입점 함수
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

void main() {
  // 启动Flutter应用 / Flutter 앱 시작
  runApp(const MyApp());
}

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 根组件 / 루트 위젯
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // 构建应用根组件 / 앱 루트 위젯 빌드
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 应用标题（中韩双语）/ 앱 제목 (중한 이중언어)
      title: '临沂旅行推荐 · 임기 여행 추천',

      // 隐藏右上角调试角标 / 우측 상단 디버그 배너 숨기기
      debugShowCheckedModeBanner: false,

      // 全局主题配置 / 전역 테마 설정
      theme: ThemeData(
        // 主色调：蒙山绿 / 기본 색상: 몽산 녹색
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E7D32),
        ),
        // 启用Material3现代设计风格 / Material3 현대 디자인 스타일 활성화
        useMaterial3: true,

        // AppBar全局主题 / 앱바 전역 테마
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2E7D32), // 蒙山绿背景 / 몽산 녹색 배경
          foregroundColor: Colors.white,       // 白色文字图标 / 흰색 텍스트 및 아이콘
          elevation: 0,                        // 无底部阴影 / 하단 그림자 없음
        ),
      ),

      // 应用首页：跳转至临沂旅行推荐页 / 앱 홈: 임기 여행 추천 페이지로 이동
      home: const LinyiPage(),
    );
  }
}