// 临沂家乡旅行推荐页面 / 임기 고향 여행 추천 페이지
// lib/linyi_page.dart

import 'package:flutter/material.dart';

// ── 데이터 모델 / 数据模型 ──────────────────────────────

// 관광지 모델 / 景点模型
class Attraction {
  final String name;        // 景点名称 / 관광지 이름
  final String nameKo;      // 韩文名称 / 한국어 이름
  final String desc;        // 景点描述 / 설명
  final String descKo;
  final String emoji;
  final String? imageAsset; // 图片路径 / 이미지 경로 (optional)

  const Attraction({
    required this.name,
    required this.nameKo,
    required this.desc,
    required this.descKo,
    required this.emoji,
    this.imageAsset,
  });
}

// 음식 모델 / 美食模型
class Food {
  final String name;
  final String nameKo;
  final String desc;
  final String descKo;
  final String emoji;
  final String? imageAsset; // 图片路径 / 이미지 경로 (optional)

  const Food({
    required this.name,
    required this.nameKo,
    required this.desc,
    required this.descKo,
    required this.emoji,
    this.imageAsset,
  });
}

// 여행 코스 단계 모델 / 旅行路线步骤模型
class TourStep {
  final String time;    // 时间 / 시간
  final String place;   // 地点 / 장소
  final String placeKo;
  final String activity;  // 活动 / 활동
  final String activityKo;

  const TourStep({
    required this.time,
    required this.place,
    required this.placeKo,
    required this.activity,
    required this.activityKo,
  });
}

// ── 정적 데이터 / 静态数据 ──────────────────────────────

const List<Attraction> attractions = [
  Attraction(
    name: '蒙山风景区',
    nameKo: '몽산 풍경구',
    desc: '山东第二高峰，素有"岱宗之亚"美称，自然风光绝美',
    descKo: '산동성 두 번째 높은 봉우리, 아름다운 자연경관으로 유명',
    emoji: '⛰️',
    imageAsset: 'assets/mengshan.jpg',
  ),
  Attraction(
    name: '沂蒙红嫂纪念馆',
    nameKo: '이몽 홍소 기념관',
    desc: '革命历史教育基地，展示沂蒙红嫂的感人故事',
    descKo: '혁명 역사 교육 기지, 이몽 홍소의 감동적인 이야기를 전시',
    emoji: '🏛️',
  ),
  Attraction(
    name: '临沂竹泉村',
    nameKo: '임기 죽천촌',
    desc: '明代古村落，竹林泉水相依，被誉为"中国最美乡村"之一',
    descKo: '명나라 시대 고대 마을, 대나무 숲과 샘물이 어우러진 아름다운 마을',
    emoji: '🎋',
    imageAsset: 'assets/zhuquan.jpg',
  ),
  Attraction(
    name: '王羲之故居',
    nameKo: '왕희지 고거',
    desc: '书圣王羲之的出生地，展示书法艺术与历史文化',
    descKo: '서예의 성인 왕희지의 출생지, 서예 예술과 역사문화 전시',
    emoji: '✍️',
    imageAsset: 'assets/wangxizhi.jpg',
  ),
];

const List<Food> foods = [
  Food(
    name: '糁汤',
    nameKo: '산탕',
    desc: '临沂传统早餐，以骨头汤为底，加入面粉制成，浓郁香醇',
    descKo: '임기 전통 아침 식사, 사골 육수에 밀가루를 넣어 만든 진한 수프',
    emoji: '🍲',
    imageAsset: 'assets/santangsantang.jpg',
  ),
  Food(
    name: '炒鸡',
    nameKo: '임기 볶음 닭',
    desc: '临沂特色菜，用农家土鸡爆炒，香辣鲜嫩，名扬全国',
    descKo: '임기의 명물 요리, 농가 토종닭을 센 불에 볶은 매콤하고 부드러운 닭 요리',
    emoji: '🍗',
    imageAsset: 'assets/chaoji.jpg',
  ),
  Food(
    name: '煎饼',
    nameKo: '전병',
    desc: '沂蒙山区传统主食，以玉米或小麦为原料，薄脆香甜',
    descKo: '이몽산 지역 전통 주식, 옥수수나 밀로 만든 얇고 바삭한 전통 전병',
    emoji: '🫓',
  ),
  Food(
    name: '八宝豆豉',
    nameKo: '팔보두시',
    desc: '临沂特产，以多种豆类及香料精制而成，味道鲜美独特',
    descKo: '임기 특산품, 여러 콩류와 향신료로 정성껏 만든 독특한 맛의 발효 음식',
    emoji: '🫘',
  ),
];

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

// ── AI 활용 내용 / AI使用内容 ──────────────────────────
const String aiUsageZh = '''本页面借助 AI 工具完成以下内容：
• 景点介绍文案润色与翻译（中↔韩）
• 美食描述内容生成
• 推荐旅行路线规划建议
• Flutter 代码结构设计与优化''';

const String aiUsageKo = '''이 페이지는 AI 도구를 활용하여 다음 내용을 완성했습니다:
• 관광지 소개 문구 다듬기 및 번역 (중↔한)
• 음식 설명 내용 생성
• 추천 여행 코스 기획 제안
• Flutter 코드 구조 설계 및 최적화''';

// ── 메인 페이지 위젯 / 主页面组件 ──────────────────────

class LinyiPage extends StatelessWidget {
  const LinyiPage({super.key});

  // 테마 색상 / 主题颜色
  static const Color primaryColor = Color(0xFF2E7D32);    // 蒙山绿 / 몽산 녹색
  static const Color accentColor  = Color(0xFFF57F17);    // 暖橙色 / 따뜻한 오렌지
  static const Color bgColor      = Color(0xFFF9F6F0);    // 米白色 / 미색 배경
  static const Color cardColor    = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: CustomScrollView(
        slivers: [
          // ── 헤더 / 顶部封面 ──────────────────────────
          SliverAppBar(
            expandedHeight: 240,
            pinned: true,
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
                  // 封面图片 / 커버 이미지
                  Image.asset(
                    'assets/mengshan.jpg',
                    fit: BoxFit.cover,
                  ),
                  // 渐变遮罩 / 그라디언트 오버레이
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Color(0xCC1B5E20),
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
                  // ── 지역 소개 / 地区介绍 ──────────────────
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

                  // ── 관광지 / 代表景点 ──────────────────────
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

                  // ── 음식 / 代表美食 ────────────────────────
                  _SectionCard(
                    icon: '🍽️',
                    titleZh: '代表美食',
                    titleKo: '대표 음식',
                    child: GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1.1,
                      children: foods.map((f) => _FoodCard(food: f)).toList(),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ── 여행 코스 / 推荐旅行路线 ───────────────
                  _SectionCard(
                    icon: '🗓️',
                    titleZh: '推荐旅行路线（1日游）',
                    titleKo: '추천 여행 코스 (당일치기)',
                    child: Column(
                      children: List.generate(tourSteps.length, (i) {
                        return _TourStepTile(
                          step: tourSteps[i],
                          isLast: i == tourSteps.length - 1,
                        );
                      }),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ── AI 활용 / AI使用内容 ───────────────────
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
                        const Divider(height: 20),
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

                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── 공통 섹션 카드 / 通用区块卡片 ───────────────────────

class _SectionCard extends StatelessWidget {
  final String icon;
  final String titleZh;
  final String titleKo;
  final Widget child;

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
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 섹션 헤더 / 区块标题
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: const BoxDecoration(
              color: Color(0xFFE8F5E9),
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Row(
              children: [
                Text(icon, style: const TextStyle(fontSize: 20)),
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
          // 섹션 본문 / 区块内容
          Padding(
            padding: const EdgeInsets.all(16),
            child: child,
          ),
        ],
      ),
    );
  }
}

// ── 관광지 타일 / 景点列表项 ────────────────────────────

class _AttractionTile extends StatelessWidget {
  final Attraction attraction;
  const _AttractionTile({required this.attraction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 景点图片（有图片时显示）/ 관광지 이미지 (있을 때만 표시)
          if (attraction.imageAsset != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                attraction.imageAsset!,
                width: double.infinity,
                height: 130,
                fit: BoxFit.cover,
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

// ── 음식 카드 / 美食卡片 ────────────────────────────────

class _FoodCard extends StatelessWidget {
  final Food food;
  const _FoodCard({required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFF8E1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFFFE082), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 美食图片（有图片时显示）/ 음식 이미지 (있을 때만 표시)
          if (food.imageAsset != null)
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(11)),
              child: Image.asset(
                food.imageAsset!,
                width: double.infinity,
                height: 80,
                fit: BoxFit.cover,
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
                Text(
                  food.desc,
                  style: const TextStyle(
                      fontSize: 11, color: Color(0xFF757575), height: 1.5),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ── 여행 코스 타임라인 타일 / 旅行路线时间轴条目 ──────────

class _TourStepTile extends StatelessWidget {
  final TourStep step;
  final bool isLast;
  const _TourStepTile({required this.step, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 타임라인 / 时间轴
          SizedBox(
            width: 56,
            child: Text(
              step.time,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: LinyiPage.accentColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: const BoxDecoration(
                  color: LinyiPage.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    color: const Color(0xFFC8E6C9),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  const SizedBox(height: 2),
                  Text(
                    step.activity,
                    style: const TextStyle(
                        fontSize: 12, color: Color(0xFF616161), height: 1.5),
                  ),
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
      ),
    );
  }
}

// ── 앱 진입점 (단독 테스트용) / 应用入口（独立测试用）──────

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LinyiPage(),
  ));
}