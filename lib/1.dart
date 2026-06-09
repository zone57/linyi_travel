// 临沂旅行推荐应用 — 主页面（四页导航版）
// 임기 여행 추천 앱 — 메인 페이지 (4페이지 탭 네비게이션)
// lib/1.dart

import 'package:flutter/material.dart';

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 全局主题色 / 전역 테마 색상
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

class AppColors {
  static const Color primary   = Color(0xFF2E7D32); // 蒙山绿 / 몽산 녹색
  static const Color accent    = Color(0xFFF57F17); // 暖橙色 / 따뜻한 오렌지
  static const Color bg        = Color(0xFFF5F5F5); // 页面背景 / 페이지 배경
  static const Color card      = Colors.white;       // 卡片背景 / 카드 배경
  static const Color textMain  = Color(0xFF212121); // 主文字 / 주 텍스트
  static const Color textSub   = Color(0xFF757575); // 副文字 / 보조 텍스트
  static const Color textHint  = Color(0xFFBDBDBD); // 提示文字 / 힌트 텍스트
  static const Color border    = Color(0xFFE0E0E0); // 边框色 / 테두리색
  static const Color heroStart = Color(0xFF1B5E20); // 封面渐变起点 / 커버 그라디언트 시작
  static const Color heroEnd   = Color(0xFF66BB6A); // 封面渐变终点 / 커버 그라디언트 끝
}

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 数据模型 / 데이터 모델
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

// 景点模型 / 관광지 모델
class Attraction {
  final String name;        // 中文名 / 중국어 이름
  final String nameKo;      // 韩文名 / 한국어 이름
  final String desc;        // 中文描述 / 중국어 설명
  final String descKo;      // 韩文描述 / 한국어 설명
  final String emoji;       // 图标 / 아이콘
  final String? imageAsset; // 图片路径 / 이미지 경로
  final double rating;      // 评分 / 평점

  const Attraction({
    required this.name, required this.nameKo,
    required this.desc, required this.descKo,
    required this.emoji, required this.rating,
    this.imageAsset,
  });
}

// 美食模型 / 음식 모델
class Food {
  final String name;        // 中文名 / 중국어 이름
  final String nameKo;      // 韩文名 / 한국어 이름
  final String desc;        // 中文描述 / 중국어 설명
  final String descKo;      // 韩文描述 / 한국어 설명
  final String emoji;       // 图标 / 아이콘
  final String? imageAsset; // 图片路径 / 이미지 경로
  final double rating;      // 评分 / 평점

  const Food({
    required this.name, required this.nameKo,
    required this.desc, required this.descKo,
    required this.emoji, required this.rating,
    this.imageAsset,
  });
}

// 旅行路线步骤模型 / 여행 코스 단계 모델
class TourStep {
  final String time;        // 时间 / 시간
  final String place;       // 地点中文名 / 장소 중국어 이름
  final String placeKo;     // 地点韩文名 / 장소 한국어 이름
  final String activity;    // 活动中文描述 / 활동 중국어 설명
  final String activityKo;  // 活动韩文描述 / 활동 한국어 설명

  const TourStep({
    required this.time,
    required this.place, required this.placeKo,
    required this.activity, required this.activityKo,
  });
}

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 静态数据 / 정적 데이터
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

// 代表景点列表 / 대표 관광지 목록
const List<Attraction> attractions = [
  Attraction(
    name: '蒙山风景区', nameKo: '몽산 풍경구',
    desc: '山东第二高峰，素有"岱宗之亚"美称，自然风光绝美',
    descKo: '산동성 두 번째 높은 봉우리, 아름다운 자연경관으로 유명',
    emoji: '⛰️', rating: 4.8,
    imageAsset: 'assets/mengshan.jpg',
  ),
  Attraction(
    name: '沂蒙红嫂纪念馆', nameKo: '이몽 홍소 기념관',
    desc: '革命历史教育基地，展示沂蒙红嫂的感人故事',
    descKo: '혁명 역사 교육 기지, 이몽 홍소의 감동적인 이야기를 전시',
    emoji: '🏛️', rating: 4.7,
    imageAsset: 'assets/hosao.jpg', // 红嫂博物馆图片 / 홍소 박물관 사진
  ),
  Attraction(
    name: '临沂竹泉村', nameKo: '임기 죽천촌',
    desc: '明代古村落，竹林泉水相依，被誉为"中国最美乡村"之一',
    descKo: '명나라 시대 고대 마을, 대나무 숲과 샘물이 어우러진 아름다운 마을',
    emoji: '🎋', rating: 4.6,
    imageAsset: 'assets/zhuquan.jpg',
  ),
  Attraction(
    name: '王羲之故居', nameKo: '왕희지 고거',
    desc: '书圣王羲之的出生地，展示书法艺术与历史文化',
    descKo: '서예의 성인 왕희지의 출생지, 서예 예술과 역사문화 전시',
    emoji: '✍️', rating: 4.5,
    imageAsset: 'assets/wangxizhi.jpg',
  ),
];

// 代表美食列表 / 대표 음식 목록
const List<Food> foods = [
  Food(
    name: '糁汤', nameKo: '산탕',
    desc: '临沂传统早餐，以骨头汤为底，加入面粉制成，浓郁香醇',
    descKo: '임기 전통 아침 식사, 사골 육수에 밀가루를 넣어 만든 진한 수프',
    emoji: '🍲', rating: 4.9,
    imageAsset: 'assets/santangsantang.jpg',
  ),
  Food(
    name: '炒鸡', nameKo: '임기 볶음 닭',
    desc: '临沂特色菜，用农家土鸡爆炒，香辣鲜嫩，名扬全国',
    descKo: '임기의 명물 요리, 농가 토종닭을 센 불에 볶은 매콤하고 부드러운 닭 요리',
    emoji: '🍗', rating: 4.8,
    imageAsset: 'assets/chaoji.jpg',
  ),
  Food(
    name: '煎饼', nameKo: '전병',
    desc: '沂蒙山区传统主食，以玉米或小麦为原料，薄脆香甜',
    descKo: '이몽산 지역 전통 주식, 옥수수나 밀로 만든 얇고 바삭한 전통 전병',
    emoji: '🫓', rating: 4.6,
    imageAsset: 'assets/jianbing.jpg',
  ),
  Food(
    name: '八宝豆豉', nameKo: '팔보두시',
    desc: '临沂特产，以多种豆类及香料精制而成，味道鲜美独特',
    descKo: '임기 특산품, 여러 콩류와 향신료로 정성껏 만든 독특한 맛의 발효 음식',
    emoji: '🫘', rating: 4.5,
    imageAsset: 'assets/douchi.jpg',
  ),
];

// 推荐路线步骤（1日游）/ 추천 코스 단계 (당일치기)
const List<TourStep> tourSteps = [
  TourStep(time: '08:00', place: '糁汤老店', placeKo: '산탕 노포',
      activity: '品尝正宗临沂糁汤，开启美食之旅',
      activityKo: '정통 임기 산탕으로 미식 여행 시작'),
  TourStep(time: '09:30', place: '王羲之故居', placeKo: '왕희지 고거',
      activity: '参观书圣故居，感受书法文化魅力',
      activityKo: '서성 고거 관람, 서예 문화의 매력 체험'),
  TourStep(time: '12:00', place: '临沂老街', placeKo: '임기 구시가지',
      activity: '午餐品尝炒鸡，逛特色小吃街',
      activityKo: '볶음 닭으로 점심 식사, 특색 먹거리 거리 구경'),
  TourStep(time: '14:00', place: '竹泉村', placeKo: '죽천촌',
      activity: '漫步古村落，体验竹林泉水之美',
      activityKo: '고대 마을 산책, 대나무 숲과 샘물의 아름다움 체험'),
  TourStep(time: '17:00', place: '蒙山风景区', placeKo: '몽산 풍경구',
      activity: '登山赏景，欣赏日落美景',
      activityKo: '등산 및 경치 감상, 일몰 풍경 감상'),
  TourStep(time: '19:00', place: '临沂夜市', placeKo: '임기 야시장',
      activity: '夜市品尝煎饼和各类小吃',
      activityKo: '야시장에서 전병과 각종 간식 맛보기'),
];

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 根组件（带底部导航）/ 루트 위젯 (하단 탭 네비게이션 포함)
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

class LinyiPage extends StatefulWidget {
  const LinyiPage({super.key});

  @override
  State<LinyiPage> createState() => _LinyiPageState();
}

class _LinyiPageState extends State<LinyiPage> {
  // 当前选中的底部导航索引 / 현재 선택된 하단 탭 인덱스
  int _currentIndex = 0;

  // 四个页面列表 / 4개 페이지 목록
  final List<Widget> _pages = const [
    _IntroPage(),       // 家乡介绍 / 고향 소개
    _AttractionsPage(), // 旅游景点 / 관광지
    _FoodsPage(),       // 代表美食 / 대표 음식
    _TourRoutePage(),   // 推荐路线 / 추천 코스
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      // 底部导航栏 / 하단 탭 네비게이션 바
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i), // 切换页面 / 페이지 전환
        type: BottomNavigationBarType.fixed,              // 固定宽度标签 / 고정 너비 탭
        selectedItemColor: AppColors.primary,             // 选中颜色：蒙山绿 / 선택 색상: 몽산 녹색
        unselectedItemColor: AppColors.textSub,           // 未选中颜色 / 미선택 색상
        backgroundColor: Colors.white,
        elevation: 8,                                     // 阴影高度 / 그림자 높이
        // 底部导航项（中韩双语）/ 하단 탭 항목 (중한 이중언어)
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: '家乡介绍 · 고향 소개',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.landscape_outlined),
            activeIcon: Icon(Icons.landscape),
            label: '旅游景点 · 관광지',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_outlined),
            activeIcon: Icon(Icons.restaurant),
            label: '代表美食 · 대표 음식',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            activeIcon: Icon(Icons.map),
            label: '推荐路线 · 추천 코스',
          ),
        ],
      ),
      // 当前页面内容 / 현재 페이지 내용
      body: _pages[_currentIndex],
    );
  }
}

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 页面一：家乡介绍 / 페이지1: 고향 소개
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

class _IntroPage extends StatelessWidget {
  const _IntroPage();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // 顶部封面 / 상단 커버
        SliverAppBar(
          expandedHeight: 200,
          pinned: true,
          backgroundColor: AppColors.primary,
          flexibleSpace: FlexibleSpaceBar(
            // 标题（中韩双语）/ 제목 (중한 이중언어)
            title: const Text('临沂 · 임기',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
            background: Stack(
              fit: StackFit.expand,
              children: [
                // 封面图片 / 커버 이미지
                Image.asset('assets/mengshan.jpg', fit: BoxFit.cover),
                // 渐变遮罩 / 그라디언트 오버레이
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter, end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Color(0xCC1B5E20)],
                    ),
                  ),
                ),
                // 封面标语（中韩双语）/ 커버 슬로건
                const Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 20),
                      Text('沂蒙山水 · 革命圣地',
                          style: TextStyle(color: Colors.white, fontSize: 15,
                              fontWeight: FontWeight.bold, letterSpacing: 2,
                              shadows: [Shadow(blurRadius: 8, color: Colors.black54)])),
                      SizedBox(height: 4),
                      Text('이몽 산수 · 혁명 성지',
                          style: TextStyle(color: Colors.white70, fontSize: 12,
                              shadows: [Shadow(blurRadius: 6, color: Colors.black45)])),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 城市介绍区块 / 도시 소개 섹션
                _SectionTitle(zh: '城市介绍', ko: '도시 소개'),
                const SizedBox(height: 8),
                _InfoCard(
                  child: const Text(
                    '临沂市位于山东省东南部，是沂蒙山区的中心城市，也是著名的革命老区。'
                        '这里山清水秀，人杰地灵，孕育了王羲之、诸葛亮等历史名人。\n\n'
                        '임기시는 산동성 동남부에 위치하며 이몽산 지역의 중심 도시이자 유명한 혁명 노구입니다. '
                        '아름다운 산수와 뛰어난 인재를 배출한 곳으로 왕희지, 제갈량 등 역사적 명인의 고향입니다.',
                    style: TextStyle(fontSize: 13, height: 1.7, color: AppColors.textSub),
                  ),
                ),

                const SizedBox(height: 16),

                // 文化特色标签 / 문화 특색 태그
                _SectionTitle(zh: '文化特色', ko: '문화 특색'),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8, runSpacing: 8,
                  children: const [
                    _Tag(zh: '革命文化', ko: '혁명 문화'),
                    _Tag(zh: '书法文化', ko: '서예 문화'),
                    _Tag(zh: '沂蒙民俗', ko: '이몽 민속'),
                    _Tag(zh: '山水文化', ko: '산수 문화'),
                  ],
                ),

                const SizedBox(height: 16),

                // 基本信息卡片 / 기본 정보 카드
                _SectionTitle(zh: '基本信息', ko: '기본 정보'),
                const SizedBox(height: 8),
                _InfoCard(
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 3,
                    children: const [
                      _StatItem(label: '人口 · 인구',    value: '1126万'),
                      _StatItem(label: '面积 · 면적',    value: '17191km²'),
                      _StatItem(label: '建城史 · 역사', value: '2400+年'),
                      _StatItem(label: '景区 · 관광지', value: '100+处'),
                    ],
                  ),
                ),

                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 页面二：旅游景点 / 페이지2: 관광지
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

class _AttractionsPage extends StatelessWidget {
  const _AttractionsPage();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // 页面标题AppBar / 페이지 제목 앱바
        SliverAppBar(
          pinned: true,
          backgroundColor: AppColors.primary,
          title: const Text('旅游景点 · 관광지',
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, i) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: _AttractionCard(attraction: attractions[i]),
              ),
              childCount: attractions.length,
            ),
          ),
        ),
      ],
    );
  }
}

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 页面三：代表美食 / 페이지3: 대표 음식
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

class _FoodsPage extends StatelessWidget {
  const _FoodsPage();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          backgroundColor: AppColors.primary,
          title: const Text('代表美食 · 대표 음식',
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, i) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: _FoodCard(food: foods[i]),
              ),
              childCount: foods.length,
            ),
          ),
        ),
      ],
    );
  }
}

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 页面四：推荐路线 / 페이지4: 추천 코스
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

class _TourRoutePage extends StatelessWidget {
  const _TourRoutePage();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          backgroundColor: AppColors.primary,
          title: const Text('推荐路线（1日游）· 추천 코스 (당일치기)',
              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.card,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.06),
                    blurRadius: 12, offset: const Offset(0, 4))],
              ),
              padding: const EdgeInsets.all(16),
              // 时间轴列表 / 타임라인 목록
              child: Column(
                children: List.generate(tourSteps.length, (i) =>
                    _TourStepTile(step: tourSteps[i], isLast: i == tourSteps.length - 1),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 通用小组件 / 공통 소형 위젯
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

// 区块标题（中韩双语）/ 섹션 제목 (중한 이중언어)
class _SectionTitle extends StatelessWidget {
  final String zh; // 中文标题 / 중국어 제목
  final String ko; // 韩文标题 / 한국어 제목
  const _SectionTitle({required this.zh, required this.ko});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(zh, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.textMain)),
        const SizedBox(width: 6),
        Text('· $ko', style: const TextStyle(fontSize: 11, color: AppColors.primary)),
      ],
    );
  }
}

// 通用信息卡片 / 공통 정보 카드
class _InfoCard extends StatelessWidget {
  final Widget child;
  const _InfoCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 8, offset: const Offset(0, 2))],
      ),
      child: child,
    );
  }
}

// 文化特色标签 / 문화 특색 태그
class _Tag extends StatelessWidget {
  final String zh; // 中文标签 / 중국어 태그
  final String ko; // 韩文标签 / 한국어 태그
  const _Tag({required this.zh, required this.ko});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFE8F5E9), // 浅绿背景 / 연녹색 배경
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFA5D6A7)),
      ),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(fontSize: 12),
          children: [
            TextSpan(text: zh, style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w500)),
            TextSpan(text: ' · $ko', style: const TextStyle(color: Color(0xFF66BB6A))),
          ],
        ),
      ),
    );
  }
}

// 统计数据项 / 통계 데이터 항목
class _StatItem extends StatelessWidget {
  final String label; // 标签（中韩双语）/ 라벨 (중한 이중언어)
  final String value; // 数值 / 수치
  const _StatItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label, style: const TextStyle(fontSize: 11, color: AppColors.textSub)),
        const SizedBox(height: 2),
        Text(value, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.textMain)),
      ],
    );
  }
}

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 景点卡片组件 / 관광지 카드 위젯
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

class _AttractionCard extends StatelessWidget {
  final Attraction attraction; // 景点数据 / 관광지 데이터
  const _AttractionCard({required this.attraction});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 3))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 景点图片（有图片时显示，否则显示渐变占位）/ 관광지 이미지 (없으면 그라디언트 플레이스홀더)
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(13)),
            child: attraction.imageAsset != null
                ? Image.asset(attraction.imageAsset!, width: double.infinity, height: 120, fit: BoxFit.cover)
                : Container(
              width: double.infinity, height: 120,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.heroStart, AppColors.heroEnd],
                  begin: Alignment.topLeft, end: Alignment.bottomRight,
                ),
              ),
              child: Center(child: Text(attraction.emoji, style: const TextStyle(fontSize: 40))),
            ),
          ),
          // 景点信息区 / 관광지 정보 영역
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 景点名称（中韩双语）/ 관광지 이름 (중한 이중언어)
                Row(
                  children: [
                    Text(attraction.name,
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.textMain)),
                    const SizedBox(width: 6),
                    Text(attraction.nameKo,
                        style: const TextStyle(fontSize: 11, color: AppColors.textSub)),
                  ],
                ),
                const SizedBox(height: 4),
                // 中文描述 / 중국어 설명
                Text(attraction.desc,
                    style: const TextStyle(fontSize: 12, color: AppColors.textSub, height: 1.5)),
                // 韩文描述 / 한국어 설명
                Text(attraction.descKo,
                    style: const TextStyle(fontSize: 11, color: AppColors.textHint, height: 1.4)),
                const SizedBox(height: 6),
                // 评分显示 / 평점 표시
                Row(
                  children: [
                    const Icon(Icons.star_rounded, color: Colors.orange, size: 14),
                    const SizedBox(width: 3),
                    Text('${attraction.rating}',
                        style: const TextStyle(fontSize: 12, color: AppColors.textSub, fontWeight: FontWeight.w500)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 美食卡片组件 / 음식 카드 위젯
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

class _FoodCard extends StatelessWidget {
  final Food food; // 美食数据 / 음식 데이터
  const _FoodCard({required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 3))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 美食图片（有图片时显示，否则显示渐变占位）/ 음식 이미지 (없으면 그라디언트 플레이스홀더)
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(13)),
            child: food.imageAsset != null
                ? Image.asset(food.imageAsset!, width: double.infinity, height: 120, fit: BoxFit.cover)
                : Container(
              width: double.infinity, height: 120,
              color: const Color(0xFFFFF8E1),
              child: Center(child: Text(food.emoji, style: const TextStyle(fontSize: 40))),
            ),
          ),
          // 美食信息区 / 음식 정보 영역
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 名称（中韩双语）/ 이름 (중한 이중언어)
                Row(
                  children: [
                    Text(food.name,
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.textMain)),
                    const SizedBox(width: 6),
                    Text(food.nameKo,
                        style: const TextStyle(fontSize: 11, color: AppColors.textSub)),
                  ],
                ),
                const SizedBox(height: 4),
                // 中文描述 / 중국어 설명
                Text(food.desc,
                    style: const TextStyle(fontSize: 12, color: AppColors.textSub, height: 1.5)),
                // 韩文描述 / 한국어 설명
                Text(food.descKo,
                    style: const TextStyle(fontSize: 11, color: AppColors.textHint, height: 1.4)),
                const SizedBox(height: 6),
                // 评分显示 / 평점 표시
                Row(
                  children: [
                    const Icon(Icons.star_rounded, color: Colors.orange, size: 14),
                    const SizedBox(width: 3),
                    Text('${food.rating}',
                        style: const TextStyle(fontSize: 12, color: AppColors.textSub, fontWeight: FontWeight.w500)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 旅行路线时间轴条目 / 여행 코스 타임라인 아이템
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

class _TourStepTile extends StatelessWidget {
  final TourStep step;  // 步骤数据 / 단계 데이터
  final bool isLast;    // 是否最后一步 / 마지막 단계 여부
  const _TourStepTile({required this.step, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 时间列 / 시간 열
        SizedBox(
          width: 52,
          child: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(step.time,
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.accent),
                textAlign: TextAlign.center),
          ),
        ),
        // 时间轴：圆点 + 连接线 / 타임라인: 점 + 연결선
        Column(
          children: [
            Container(width: 12, height: 12,
                decoration: const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle)),
            if (!isLast) // 最后一步不画连接线 / 마지막 단계에는 연결선 없음
              Container(width: 2, height: 72, color: const Color(0xFFC8E6C9)),
          ],
        ),
        const SizedBox(width: 12),
        // 步骤内容（地点+活动，中韩双语）/ 단계 내용 (장소+활동, 중한 이중언어)
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 地点名称（中韩双语）/ 장소 이름 (중한 이중언어)
                Text(step.place,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.textMain)),
                Text(step.placeKo,
                    style: const TextStyle(fontSize: 11, color: AppColors.textSub)),
                const SizedBox(height: 4),
                // 活动描述（中韩双语）/ 활동 설명 (중한 이중언어)
                Text(step.activity,
                    style: const TextStyle(fontSize: 12, color: Color(0xFF616161), height: 1.5)),
                Text(step.activityKo,
                    style: const TextStyle(fontSize: 11, color: AppColors.textHint, height: 1.4)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}