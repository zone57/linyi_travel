// 临沂家乡旅行推荐页面 / 임기 고향 여행 추천 페이지
// lib/1.dart

import 'package:flutter/material.dart';

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 数据模型定义 / 데이터 모델 정의
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

// 景点数据模型 / 관광지 데이터 모델
class Attraction {
  final String name;        // 景点中文名称 / 관광지 중국어 이름
  final String nameKo;      // 景点韩文名称 / 관광지 한국어 이름
  final String desc;        // 景点中文描述 / 관광지 중국어 설명
  final String descKo;      // 景点韩文描述 / 관광지 한국어 설명
  final String emoji;
  final String? imageAsset; // 本地图片路径（可选）/ 로컬 이미지 경로 (선택사항)

  const Attraction({
    required this.name,
    required this.nameKo,
    required this.desc,
    required this.descKo,
    required this.emoji,
    this.imageAsset,
  });
}

// 美食数据模型 / 음식 데이터 모델
class Food {
  final String name;
  final String nameKo;
  final String desc;
  final String descKo;      // 景点韩文描述 / 관광지 한국어 설명
  final String emoji;
  final String? imageAsset; // 本地图片路径（可选）/ 로컬 이미지 경로 (선택사항)

  const Food({
    required this.name,
    required this.nameKo,
    required this.desc,
    required this.descKo,
    required this.emoji,
    this.imageAsset,
  });
}

// 旅行路线步骤模型 / 여행 코스 단계 모델
class TourStep {
  final String time;        // 出发时间 / 출발 시간
  final String place;       // 目的地中文名 / 목적지 중국어 이름
  final String placeKo;     // 目的地韩文名 / 목적지 한국어 이름
  final String activity;    // 活动中文描述 / 활동 중국어 설명
  final String activityKo;  // 活动韩文描述 / 활동 한국어 설명

  const TourStep({
    required this.time,
    required this.place,
    required this.placeKo,
    required this.activity,
    required this.activityKo,
  });
}

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 静态数据 / 정적 데이터
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

// 代表景点列表 / 대표 관광지 목록

const List<Attraction> attractions = [
  Attraction(
    name: '蒙山风景区',
    nameKo: '몽산 풍경구',
    desc: '山东第二高峰，素有"岱宗之亚"美称，自然风光绝美',
    descKo: '산동성 두 번째 높은 봉우리, 아름다운 자연경관으로 유명',
    emoji: '⛰️',
    imageAsset: 'assets/mengshan.jpg', // 蒙山风景图 / 몽산 풍경 사진
  ),
  Attraction(
    name: '沂蒙红嫂纪念馆',
    nameKo: '이몽 홍소 기념관',
    desc: '革命历史教育基地，展示沂蒙红嫂的感人故事',
    descKo: '혁명 역사 교육 기지, 이몽 홍소의 감동적인 이야기를 전시',
    emoji: '🏛️',
    // 暂无本地图片 / 로컬 이미지 없음
  ),
  Attraction(
    name: '临沂竹泉村',
    nameKo: '임기 죽천촌',
    desc: '明代古村落，竹林泉水相依，被誉为"中国最美乡村"之一',
    descKo: '명나라 시대 고대 마을, 대나무 숲과 샘물이 어우러진 아름다운 마을',
    emoji: '🎋',
    imageAsset: 'assets/zhuquan.jpg', // 竹泉村风景图 / 죽천촌 풍경 사진
  ),
  Attraction(
    name: '王羲之故居',
    nameKo: '왕희지 고거',
    desc: '书圣王羲之的出生地，展示书法艺术与历史文化',
    descKo: '서예의 성인 왕희지의 출생지, 서예 예술과 역사문화 전시',
    emoji: '✍️',
    imageAsset: 'assets/wangxizhi.jpg', // 王羲之故居图 / 왕희지 고거 사진
  ),
];

// 代表美食列表 / 대표 음식 목록
const List<Food> foods = [
  Food(
    name: '糁汤',
    nameKo: '산탕',
    desc: '临沂传统早餐，以骨头汤为底，加入面粉制成，浓郁香醇',
    descKo: '임기 전통 아침 식사, 사골 육수에 밀가루를 넣어 만든 진한 수프',
    emoji: '🍲',
    imageAsset: 'assets/santangsantang.jpg', // 糁汤图片 / 산탕 사진
  ),
  Food(
    name: '炒鸡',
    nameKo: '임기 볶음 닭',
    desc: '临沂特色菜，用农家土鸡爆炒，香辣鲜嫩，名扬全国',
    descKo: '임기의 명물 요리, 농가 토종닭을 센 불에 볶은 매콤하고 부드러운 닭 요리',
    emoji: '🍗',
    imageAsset: 'assets/chaoji.jpg', // 炒鸡图片 / 볶음닭 사진
  ),
  Food(
    name: '煎饼',
    nameKo: '전병',
    desc: '沂蒙山区传统主食，以玉米或小麦为原料，薄脆香甜',
    descKo: '이몽산 지역 전통 주식, 옥수수나 밀로 만든 얇고 바삭한 전통 전병',
    emoji: '🫓',
    imageAsset: 'assets/jianbing.jpg', // 煎饼图片 / 전병 사진
  ),
  Food(
    name: '八宝豆豉',
    nameKo: '팔보두시',
    desc: '临沂特产，以多种豆类及香料精制而成，味道鲜美独特',
    descKo: '임기 특산품, 여러 콩류와 향신료로 정성껏 만든 독특한 맛의 발효 음식',
    emoji: '🫘',
    imageAsset: 'assets/douchi.jpg', // 豆豉图片 / 두시 사진
  ),
];

// 推荐旅行路线（1日游）/ 추천 여행 코스 (당일치기)
const List<TourStep> tourSteps = [
  TourStep(
    time: '08:00',
    place: '糁汤老店',
    placeKo: '산탕 노포',
    activity: '品尝正宗临沂糁汤，开启美食之旅',
    activityKo: '정통 임기 산탕으로 미식 여행 시작',
  ),
  TourStep(
    time: '09:30',
    place: '王羲之故居',
    placeKo: '왕희지 고거',
    activity: '参观书圣故居，感受书法文化魅力',
    activityKo: '서성 고거 관람, 서예 문화의 매력 체험',
  ),
  TourStep(
    time: '12:00',
    place: '临沂老街',
    placeKo: '임기 구시가지',
    activity: '午餐品尝炒鸡，逛特色小吃街',
    activityKo: '볶음 닭으로 점심 식사, 특색 먹거리 거리 구경',
  ),
  TourStep(
    time: '14:00',
    place: '竹泉村',
    placeKo: '죽천촌',
    activity: '漫步古村落，体验竹林泉水之美',
    activityKo: '고대 마을 산책, 대나무 숲과 샘물의 아름다움 체험',
  ),
  TourStep(
    time: '17:00',
    place: '蒙山风景区',
    placeKo: '몽산 풍경구',
    activity: '登山赏景，欣赏日落美景',
    activityKo: '등산 및 경치 감상, 일몰 풍경 감상',
  ),
  TourStep(
    time: '19:00',
    place: '临沂夜市',
    placeKo: '임기 야시장',
    activity: '夜市品尝煎饼和各类小吃',
    activityKo: '야시장에서 전병과 각종 간식 맛보기',
  ),
];

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// AI使用内容说明文字 / AI 활용 내용 설명 텍스트
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

// 中文说明 / 중국어 설명
const String aiUsageZh = '''本页面借助 AI 工具完成以下内容：
• 景点介绍文案润色与翻译（中↔韩）
• 美食描述内容生成
• 推荐旅行路线规划建议
• Flutter 代码结构设计与优化''';

// 韩文说明 / 한국어 설명
const String aiUsageKo = '''이 페이지는 AI 도구를 활용하여 다음 내용을 완성했습니다:
• 관광지 소개 문구 다듬기 및 번역 (중↔한)
• 음식 설명 내용 생성
• 추천 여행 코스 기획 제안
• Flutter 코드 구조 설계 및 최적화''';

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 主页面组件 / 메인 페이지 위젯
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

class LinyiPage extends StatelessWidget {
  const LinyiPage({super.key});

  // 主题色定义 / 테마 색상 정의
  static const Color primaryColor = Color(0xFF2E7D32); // 蒙山绿 / 몽산 녹색
  static const Color accentColor  = Color(0xFFF57F17); // 暖橙色 / 따뜻한 오렌지색
  static const Color bgColor      = Color(0xFFF9F6F0); // 米白背景色 / 미색 배경색
  static const Color cardColor    = Colors.white;       // 卡片白色背景 / 카드 흰색 배경


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: CustomScrollView(
        slivers: [
          // ── 顶部封面栏 / 상단 커버 앱바 ──────────────
          SliverAppBar(
            expandedHeight: 240,  // 展开高度 / 펼쳐진 높이
            pinned: true,          // 滚动时固定标题栏 / 스크롤 시 타이틀 고정
            backgroundColor: primaryColor,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                '临沂 · 임기',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // 封面背景图片 / 커버 배경 이미지
                  Image.asset(
                    'assets/mengshan.jpg',
                    fit: BoxFit.cover,
                  ),
                  // 渐变遮罩层（增强文字可读性）/ 그라디언트 오버레이 (텍스트 가독성 향상)
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Color(0xCC1B5E20), // 半透明深绿 / 반투명 짙은 녹색
                        ],
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 40),
                        Text(
                          '沂蒙山水·革命圣地',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            shadows: [Shadow(blurRadius: 8, color: Colors.black54)],
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '이몽 산수 · 혁명 성지',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                            shadows: [Shadow(blurRadius: 6, color: Colors.black45)],
                          ),
                        ),
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
                  // ── 地区介绍区块 / 지역 소개 섹션 ──────────
                  _SectionCard(
                    icon: '📍',
                    titleZh: '地区介绍',
                    titleKo: '지역 소개',
                    child: const Text(
                      '临沂市位于山东省东南部，是沂蒙山区的中心城市，也是著名的革命老区。'
                          '这里山清水秀，人杰地灵，孕育了王羲之、诸葛亮等历史名人。'
                          '现为全国最大的商品集散中心之一，素有"商城临沂"之美誉。\n\n'
                          '임기시는 산동성 동남부에 위치하며 이몽산 지역의 중심 도시이자 '
                          '유명한 혁명 노구입니다. 아름다운 산수와 뛰어난 인재를 배출한 곳으로 '
                          '왕희지, 제갈량 등 역사적 명인의 고향입니다. '
                          '현재는 전국 최대 상품 집산지 중 하나로 "상업도시 임기"라는 미명을 가지고 있습니다.',
                      style: TextStyle(
                        fontSize: 13,
                        height: 1.7,
                        color: Color(0xFF424242),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ── 代表景点区块 / 대표 관광지 섹션 ──────────
                  _SectionCard(
                    icon: '🗺️',
                    titleZh: '代表旅游景点',
                    titleKo: '대표 관광지',
                    child: Column(
                      children: attractions
                          .map((a) => _AttractionTile(attraction: a))
                          .toList(),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ── 代表美食区块 / 대표 음식 섹션 ────────────
                  _SectionCard(
                    icon: '🍽️',
                    titleZh: '代表美食',
                    titleKo: '대표 음식',
                    child: GridView.builder(
                      shrinkWrap: true,         // 收缩适配内容高度 / 내용 높이에 맞게 축소
                      physics: const NeverScrollableScrollPhysics(), // 禁用内部滚动 / 내부 스크롤 비활성화
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,       // 每行2列 / 행당 2열
                        crossAxisSpacing: 10,    // 横向间距 / 가로 간격
                        mainAxisSpacing: 10,     // 纵向间距 / 세로 간격
                        childAspectRatio: 0.72,  // 卡片宽高比（加高容纳双语描述）/ 카드 비율 (이중언어 설명 수용)
                      ),
                      itemCount: foods.length,   // 美食总数 / 음식 총 개수
                      itemBuilder: (context, index) => _FoodCard(food: foods[index]),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ── 推荐旅行路线区块 / 추천 여행 코스 섹션 ────
                  _SectionCard(
                    icon: '🗓️',
                    titleZh: '推荐旅行路线（1日游）',
                    titleKo: '추천 여행 코스 (당일치기)',
                    child: Column(
                      children: List.generate(tourSteps.length, (i) {
                        return _TourStepTile(
                          step: tourSteps[i],
                          isLast: i == tourSteps.length - 1, // 判断是否最后一步 / 마지막 단계 여부 판단
                        );
                      }),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ── AI使用内容区块 / AI 활용 내용 섹션 ─────────
                  _SectionCard(
                    icon: '🤖',
                    titleZh: 'AI 使用内容',
                    titleKo: 'AI 활용 내용',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          aiUsageZh,
                          style: const TextStyle(
                            fontSize: 13,
                            height: 1.8,
                            color: Color(0xFF424242),
                          ),
                        ),
                        const Divider(height: 20), // 分隔线 / 구분선
                        Text(
                          aiUsageKo,
                          style: const TextStyle(
                            fontSize: 13,
                            height: 1.8,
                            color: Color(0xFF424242),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 32), // 底部留白 / 하단 여백
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 通用区块卡片组件 / 공통 섹션 카드 위젯
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

class _SectionCard extends StatelessWidget {
  final String icon;      // 区块图标 / 섹션 아이콘
  final String titleZh;  // 区块中文标题 / 섹션 중국어 제목
  final String titleKo;  // 区块韩文标题 / 섹션 한국어 제목
  final Widget child;    // 区块内容组件 / 섹션 본문 위젯

  const _SectionCard({
    required this.icon,
    required this.titleZh,
    required this.titleKo,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: LinyiPage.cardColor,
        borderRadius: BorderRadius.circular(16), // 圆角卡片 / 둥근 모서리 카드
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06), // 轻微阴影 / 가벼운 그림자
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 区块标题头部（绿色背景）/ 섹션 타이틀 헤더 (녹색 배경)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: const BoxDecoration(
              color: Color(0xFFE8F5E9), // 浅绿色背景 / 연녹색 배경
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Row(
              children: [
                Text(icon, style: const TextStyle(fontSize: 20)), // 图标 / 아이콘
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titleZh,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: LinyiPage.primaryColor,
                      ),
                    ),
                    Text(
                      titleKo,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Color(0xFF66BB6A),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // 区块正文内容 / 섹션 본문 내용
          Padding(
            padding: const EdgeInsets.all(16),
            child: child,
          ),
        ],
      ),
    );
  }
}

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// 景点列表项组件 / 관광지 리스트 아이템 위젯
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

class _AttractionTile extends StatelessWidget {
  final Attraction attraction; // 景点数据 / 관광지 데이터
  const _AttractionTile({required this.attraction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 景点图片（有图片时才显示）/ 관광지 이미지 (이미지가 있을 때만 표시)
          if (attraction.imageAsset != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(10), // 圆角图片 / 둥근 모서리 이미지
              child: Image.asset(
                attraction.imageAsset!,
                width: double.infinity,
                height: 130,           // 固定图片高度 / 이미지 고정 높이
                fit: BoxFit.cover,     // 裁剪填满 / 잘라서 채우기
              ),
            ),
          if (attraction.imageAsset != null) const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: const Color(0xFFE8F5E9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(attraction.emoji,
                      style: const TextStyle(fontSize: 22)),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          attraction.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xFF212121),
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          attraction.nameKo,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Color(0xFF9E9E9E),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      attraction.desc,
                      style: const TextStyle(
                          fontSize: 12, color: Color(0xFF757575), height: 1.5),
                    ),
                    Text(
                      attraction.descKo,
                      style: const TextStyle(
                          fontSize: 11, color: Color(0xFFBDBDBD), height: 1.4),
                    ),
                  ],
                ),
              ),
            ],
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
        color: const Color(0xFFFFF8E1),           // 暖黄色背景 / 따뜻한 노란색 배경
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFFFE082), width: 1), // 黄色边框 / 노란색 테두리
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 美食图片（有图片时才显示）/ 음식 이미지 (이미지가 있을 때만 표시)
          if (food.imageAsset != null)
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(11)),
              child: Image.asset(
                food.imageAsset!,
                width: double.infinity,
                height: 80,           // 固定图片高度 / 이미지 고정 높이
                fit: BoxFit.cover,    // 裁剪填满 / 잘라서 채우기
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(food.emoji, style: const TextStyle(fontSize: 20)),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            food.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Color(0xFF212121),
                            ),
                          ),
                          Text(
                            food.nameKo,
                            style: const TextStyle(
                                fontSize: 10, color: Color(0xFF9E9E9E)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                // 中文描述 / 중국어 설명
                Text(
                  food.desc,
                  style: const TextStyle(
                      fontSize: 11, color: Color(0xFF757575), height: 1.5),
                ),
                // 韩文描述 / 한국어 설명
                Text(
                  food.descKo,
                  style: const TextStyle(
                      fontSize: 10, color: Color(0xFFBDBDBD), height: 1.4),
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
// 旅行路线时间轴条目组件 / 여행 코스 타임라인 아이템 위젯
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

class _TourStepTile extends StatelessWidget {
  final TourStep step;  // 路线步骤数据 / 코스 단계 데이터
  final bool isLast;    // 是否最后一步（控制连接线显示）/ 마지막 단계 여부 (연결선 표시 제어)
  const _TourStepTile({required this.step, required this.isLast});

  @override
  Widget build(BuildContext context) {
    // 使用Row+Stack实现自适应高度时间轴 / Row+Stack으로 자동 높이 타임라인 구현
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 时间显示列 / 시간 표시 열
        SizedBox(
          width: 56,
          child: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              step.time, // 时间文字 / 시간 텍스트
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: LinyiPage.accentColor, // 橙色时间 / 오렌지색 시간
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        // 时间轴：圆点 + 连接线 / 타임라인: 점 + 연결선
        SizedBox(
          width: 12,
          child: Column(
            children: [
              // 圆形节点 / 원형 노드
              Container(
                width: 12,
                height: 12,
                decoration: const BoxDecoration(
                  color: LinyiPage.primaryColor, // 绿色节点 / 녹색 노드
                  shape: BoxShape.circle,
                ),
              ),
              // 连接线（最后一步不显示）/ 연결선 (마지막 단계에는 미표시)
              if (!isLast)
                Container(
                  width: 2,
                  height: 80, // 固定高度连接线 / 고정 높이 연결선
                  color: const Color(0xFFC8E6C9), // 浅绿色连接线 / 연한 녹색 연결선
                ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        // 步骤内容（自动换行，无高度限制）/ 단계 내용 (자동 줄바꿈, 높이 제한 없음)
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 地点名称（中韩双语）/ 장소 이름 (중한 이중언어)
                Text(
                  step.place,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xFF212121),
                  ),
                ),
                Text(
                  step.placeKo,
                  style: const TextStyle(
                      fontSize: 11, color: Color(0xFF9E9E9E)),
                ),
                const SizedBox(height: 4),
                // 中文活动描述 / 중국어 활동 설명
                Text(
                  step.activity,
                  style: const TextStyle(
                      fontSize: 12, color: Color(0xFF616161), height: 1.5),
                ),
                // 韩文活动描述 / 한국어 활동 설명
                Text(
                  step.activityKo,
                  style: const TextStyle(
                      fontSize: 11, color: Color(0xFFBDBDBD), height: 1.4),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}