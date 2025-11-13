.class public Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$Companion;

.field public static final alphaInterpolator:Landroid/view/animation/PathInterpolator;

.field public static final collapseColorInterpolator:Landroid/view/animation/PathInterpolator;

.field public static final collapseInterpolator:Landroid/view/animation/PathInterpolator;

.field public static final collapseRootInterpolator:Landroid/view/animation/PathInterpolator;

.field public static final expandContentsAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field public static final expandInterpolator:Landroid/view/animation/PathInterpolator;

.field public static final expandRootInterpolator:Landroid/view/animation/PathInterpolator;

.field public static final topAlphaInterpolator:Landroid/view/animation/PathInterpolator;


# instance fields
.field public adapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;

.field public final cardSwipeEndDp:I

.field public final cardSwipeStartDp:I

.field public cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

.field public final centerDp:I

.field public collapseBackCall:Lkotlin/jvm/functions/Function1;

.field public currentIndex:I

.field public final dataObserver:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$dataObserver$1;

.field public decorView:Landroid/view/View;

.field public dismiss:Lkotlin/jvm/functions/Function1;

.field public final displayMetrics:Landroid/util/DisplayMetrics;

.field public final dpToFlot:F

.field public final enableElevation:Z

.field public endViewStatusList:Ljava/util/List;

.field public final gestureDetector:Landroid/view/GestureDetector;

.field public guts:Landroid/view/View;

.field public gutsClosedCheck:Z

.field public gutsContents:Landroid/view/View;

.field public gutsControlState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

.field public gutsDisplay:Z

.field public final gutsPressDelay:J

.field public indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public initialTouchPoint:Landroid/graphics/PointF;

.field public isAnimating:Z

.field public isChildTouchEventIntercepting:Z

.field public isDragging:Z

.field public isMediaPlaying:Lkotlin/jvm/functions/Function1;

.field public isRunningCollapseAnimation:Z

.field public isRunningExpandAnimation:Z

.field public isRunningSwipeDismissTopCardMove:Z

.field public final layoutListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$layoutListener$1;

.field public final longPressRunnable:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$longPressRunnable$1;

.field public onChangeListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;

.field public final originalAllParentsClipChildrenConfig:Ljava/util/Map;

.field public final originalAllParentsClipToPaddingConfig:Ljava/util/Map;

.field public pendingAnimation:Z

.field public pendingHeight:I

.field public pendingOnStartListener:Ljava/lang/Runnable;

.field public pendingWidth:I

.field public removingSbnId:Ljava/lang/String;

.field public final resetAnimationSet:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

.field public final sceneList:Ljava/util/ArrayList;

.field public final stackMaxSize:I

.field public startViewStatusList:Ljava/util/List;

.field public final swipeAnimationSet:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

.field public final swipeHorizontalAnimationSet:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

.field public touchOutTopHeight:Z

.field public touchPoint:Landroid/graphics/PointF;

.field public touchPointerId:I

.field public final viewSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->Companion:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$Companion;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f2b851f    # 0.67f

    const v3, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v3, v1, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->expandContentsAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eae147b    # 0.34f

    const v2, 0x3fb9999a    # 1.45f

    const v4, 0x3f23d70a    # 0.64f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->expandInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e428f5c    # 0.19f

    const v6, 0x3f9c28f6    # 1.22f

    const v7, 0x3ef0a3d7    # 0.47f

    const v8, 0x3f7d70a4    # 0.99f

    invoke-direct {v0, v2, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->expandRootInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v9, 0x3f947ae1    # 1.16f

    invoke-direct {v0, v1, v9, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->collapseInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->collapseRootInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eb851ec    # 0.36f

    const v2, 0x3f7ae148    # 0.98f

    const v4, 0x3e051eb8    # 0.13f

    const v6, 0x3f8147ae    # 1.01f

    invoke-direct {v0, v4, v6, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->collapseColorInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2e147b    # 0.68f

    invoke-direct {v0, v3, v5, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->alphaInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v2, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->topAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->displayMetrics:Landroid/util/DisplayMetrics;

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->stackMaxSize:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->enableElevation:Z

    new-instance p3, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p3, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->initialTouchPoint:Landroid/graphics/PointF;

    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->startViewStatusList:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->endViewStatusList:Ljava/util/List;

    new-instance p3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeAnimationSet$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeAnimationSet$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V

    invoke-direct {p3, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->swipeAnimationSet:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    new-instance p3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeHorizontalAnimationSet$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeHorizontalAnimationSet$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V

    invoke-direct {p3, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->swipeHorizontalAnimationSet:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    new-instance p3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$resetAnimationSet$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$resetAnimationSet$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V

    invoke-direct {p3, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->resetAnimationSet:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->originalAllParentsClipChildrenConfig:Ljava/util/Map;

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->originalAllParentsClipToPaddingConfig:Ljava/util/Map;

    new-instance p3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$dataObserver$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$dataObserver$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->dataObserver:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$dataObserver$1;

    const-string p3, ""

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->removingSbnId:Ljava/lang/String;

    sget-object p3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;->INIT:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->dpToFlot:F

    const/16 p3, 0xb4

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->centerDp:I

    const/16 p3, 0x7e

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeStartDp:I

    const/16 p3, 0x96

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeEndDp:I

    const-wide/16 v1, 0x190

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsPressDelay:J

    new-instance p3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$longPressRunnable$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$longPressRunnable$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->longPressRunnable:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$longPressRunnable$1;

    sget-object p3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;->INIT:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsControlState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->touchPoint:Landroid/graphics/PointF;

    new-instance p3, Landroid/view/GestureDetector;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$SingleTapConfirm;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$SingleTapConfirm;-><init>()V

    invoke-direct {p3, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gestureDetector:Landroid/view/GestureDetector;

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$initializeViews$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$initializeViews$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setScrollContainer(Z)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070c2d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->viewSpacing:F

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isRunningExpandAnimation:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->sceneList:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$layoutListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$layoutListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->layoutListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$layoutListener$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final access$sendDismiss(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const-string/jumbo v1, "{OngoingActivityCardStackView}"

    if-nez v0, :cond_0

    const-string p0, "OngoingActivityDataHelper.getDataSize() == 0"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->removingSbnId:Ljava/lang/String;

    const-string v2, "Card swipe dismiss. removingSbnId:"

    invoke-static {v2, v0, v1}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->dismiss:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$sendDismiss$runnable$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$sendDismiss$runnable$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_2

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static changeLayoutMargin(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static changeLayoutSize(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static getBaseColorView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0a0c03

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Not found stack_pip_layout"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCardInitialScale(I)F
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x3f570a3d    # 0.84f

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Not defined index"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p0, 0x3f6b851f    # 0.92f

    goto :goto_0

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public static getChipBg(I)I
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "{OngoingActivityCardStackView}"

    const-string v0, "getChipBg : ongoingActivity is null ##"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-ltz p0, :cond_1

    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipBackground:I

    return p0
.end method

.method public static isMonochromeCard()V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "{OngoingActivityCardStackView}"

    const-string v1, "isMonochromeCard : ongoingActivity is null ##"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setActionButtonClickable(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a083f

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0a78

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0a79

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0a7a

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0a7b

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0a7c

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->setActionButtonClickable(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public static synthetic showBottomCardShadowIfNeeded$default(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->showBottomCardShadowIfNeeded(I)V

    return-void
.end method

.method public static updateBottomCardShadowLP$default(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Landroid/view/ViewGroup;FLandroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Updating dummy shadow LP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{OngoingActivityCardStackView}"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v0, p2

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int p2, v0

    int-to-float v0, p2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->viewSpacing:F

    cmpl-float v0, v0, p0

    if-lez v0, :cond_0

    const p2, 0x3f4ccccd    # 0.8f

    mul-float/2addr p0, p2

    float-to-int p2, p0

    :cond_0
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p3, p2

    invoke-direct {p0, v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x30

    iput p3, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p3, 0x0

    float-to-int v0, p3

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationZ(F)V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final addItem(IILandroid/view/View;Z)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v2

    sub-int/2addr v1, v3

    const-string v2, "addItem() index = "

    const-string v3, " , order = "

    const-string/jumbo v4, "{OngoingActivityCardStackView}"

    invoke-static {p1, p2, v2, v3, v4}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_0
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v7, v6, :cond_2

    move v4, v5

    :cond_2
    or-int/2addr v0, v3

    or-int/2addr v1, v4

    invoke-virtual {p3, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->layoutItem(Landroid/view/View;II)V

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCardInitialScale(I)F

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setScaleX(F)V

    if-eqz p4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    const/4 p1, 0x1

    invoke-virtual {p0, p3, v6, v2, p1}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final changeCardBg(Landroid/view/View;I)V
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getBaseColorView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->displayMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v1, v2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final colorTransition(IIZ)V
    .locals 7

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo p0, "{OngoingActivityCardStackView}"

    const-string p1, "    colorTransition : view is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getChipBg(I)I

    move-result p2

    :goto_0
    move v3, p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCardBg()I

    move-result p2

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_2

    new-instance p2, Lkotlin/Pair;

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p2, p3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    new-instance p2, Lkotlin/Pair;

    const-wide/16 v0, 0x28a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->collapseColorInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, p3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v6, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->changeCardBg(Landroid/view/View;I)V

    const/4 p3, 0x1

    const/4 v2, 0x0

    filled-new-array {v2, p3}, [I

    move-result-object p3

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    check-cast p2, Landroid/animation/TimeInterpolator;

    invoke-virtual {p3, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-instance p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$colorTransition$1$1;

    move-object v0, p2

    move-object v2, p3

    move v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$colorTransition$1$1;-><init>(Landroid/animation/ArgbEvaluator;Landroid/animation/ValueAnimator;IILcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Landroid/view/View;)V

    invoke-virtual {p3, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final connectCardItem()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->adapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getCount()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->currentIndex:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->stackMaxSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    sub-int v3, v2, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->currentIndex:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    move v6, v1

    :goto_0
    if-ge v6, v3, :cond_2

    sub-int v7, v2, v6

    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_0

    goto :goto_1

    :cond_0
    add-int v8, v5, v6

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    add-int v9, v4, v6

    invoke-virtual {p0, v7, v9, v8, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->addItem(IILandroid/view/View;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :cond_2
    :goto_1
    if-gtz v3, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isRunningExpandAnimation:Z

    if-eqz v0, :cond_4

    :cond_3
    const-string/jumbo v0, "{OngoingActivityCardStackView}"

    const-string/jumbo v2, "reorderItems()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->layoutItem(Landroid/view/View;II)V

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCardInitialScale(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final disableTopCardGuts(Z)V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsDisplay:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v2, 0x7f0a0c03

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0c02

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string/jumbo v4, "{OngoingActivityCardStackView}"

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->guts:Landroid/view/View;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "disableTopCardGuts: change visibility: INVISIBLE. withoutAni:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x7f08108b

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->removeTopCardGuts(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->guts:Landroid/view/View;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_3
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x168

    invoke-virtual {p1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v6, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$disableTopCardGuts$alphaAnimationOut$1$1;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$disableTopCardGuts$alphaAnimationOut$1$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v3, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->guts:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    return-void

    :cond_5
    const-string p0, "disableTopCardGuts: guts is already disabled"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_1
    const-string p0, "disableTopCardGuts: fail"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getCardBg()I
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "{OngoingActivityCardStackView}"

    const-string v0, "getCardBg : ongoingActivity is null ##"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060524

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final getCardInitialY(I)F
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCardInitialScale(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0c03

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->viewSpacing:F

    mul-float/2addr p1, p0

    const p0, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p0

    int-to-float p0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr v1, p0

    const/4 p0, 0x2

    int-to-float p0, p0

    div-float/2addr v1, p0

    add-float/2addr v1, p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final getCurrentViewStatusList()Ljava/util/List;
    .locals 10

    new-instance v0, Lkotlin/ranges/IntRange;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    invoke-direct {v4, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getBaseColorView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;-><init>(Landroid/graphics/PointF;FFFLandroid/content/Context;)V

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->point:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCurrentViewStatusList() : x="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", y="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "{OngoingActivityCardStackView}"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getEndViewStatusList()Ljava/util/List;
    .locals 11

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isMonochromeCard()V

    new-instance v0, Lkotlin/ranges/IntRange;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    rem-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v4

    sub-int/2addr v4, v2

    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    new-instance v6, Landroid/graphics/PointF;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v5, v3

    int-to-float v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCardInitialY(I)F

    move-result v5

    invoke-direct {v6, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$MonochromeAlpha;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$MonochromeAlpha;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$CommonAlpha;->getUnderlayBaseColor(I)F

    move-result v7

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCardInitialScale(I)F

    move-result v8

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCardInitialScale(I)F

    move-result v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;-><init>(Landroid/graphics/PointF;FFFLandroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getStartViewStatusList()Ljava/util/List;
    .locals 11

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isMonochromeCard()V

    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v4

    sub-int/2addr v4, v2

    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    new-instance v6, Landroid/graphics/PointF;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v5, v3

    int-to-float v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCardInitialY(I)F

    move-result v5

    invoke-direct {v6, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$MonochromeAlpha;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$MonochromeAlpha;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$CommonAlpha;->getUnderlayBaseColor(I)F

    move-result v7

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCardInitialScale(I)F

    move-result v8

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCardInitialScale(I)F

    move-result v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;-><init>(Landroid/graphics/PointF;FFFLandroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getTopViewIndex()I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->touchPointerId:I

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p0

    if-ltz p0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final isReadyCollapseAnimation()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isAnimating:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isRunningCollapseAnimation:Z

    or-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isRunningExpandAnimation:Z

    or-int/2addr p0, v0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final layoutItem(Landroid/view/View;II)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCardInitialY(I)F

    move-result p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/view/View;->layout(IIII)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->enableElevation:Z

    if-eqz p0, :cond_0

    int-to-float p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationZ(F)V

    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setY(F)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setX(F)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isChildTouchEventIntercepting:Z

    if-eqz v3, :cond_2

    return v1

    :cond_2
    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isChildTouchEventIntercepting:Z

    return v2

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->initialTouchPoint:Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iget v0, v3, Landroid/graphics/PointF;->x:F

    neg-float v0, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    invoke-virtual {v4, v0, v3}, Landroid/graphics/PointF;->offset(FF)V

    iget v0, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v3, v0

    const/high16 v0, 0x41800000    # 16.0f

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_4

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isChildTouchEventIntercepting:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->startDrag(Landroid/view/MotionEvent;)V

    return v1

    :cond_4
    return v2

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->touchPointerId:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v0, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->initialTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->setActionButtonClickable(Landroid/view/View;Z)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result p1

    move v0, v2

    :goto_0
    if-ge v0, p1, :cond_8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->setActionButtonClickable(Landroid/view/View;Z)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return v2
.end method

.method public final onLayout(ZIIII)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->adapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsClosedCheck:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsClosedCheck:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->disableTopCardGuts(Z)V

    invoke-virtual/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->onLayout(ZIIII)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->connectCardItem()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->updateItemBg()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getStartViewStatusList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->startViewStatusList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getEndViewStatusList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->endViewStatusList:Ljava/util/List;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingAnimation:Z

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->sceneList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    move p3, v1

    move p4, p3

    :goto_0
    const-string p5, "MediaOngoingActivity"

    const/4 v0, 0x0

    const v3, 0x7f0a0c03

    if-ge p3, p2, :cond_4

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->adapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getMediaCardView:Lkotlin/jvm/functions/Function1;

    if-nez v5, :cond_2

    const-string v5, "getMediaCard. lambda is not initialized"

    invoke-static {p5, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object p5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v5, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v0, p5

    check-cast v0, Landroid/view/View;

    :goto_1
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    move p4, v2

    :cond_3
    new-instance p5, Landroid/transition/Scene;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p5, v4, v0}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v0, Landroid/transition/Scene;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->sceneList:Ljava/util/ArrayList;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v0, p5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$expandAnimation$1;

    invoke-direct {p5, p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$expandAnimation$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Landroid/transition/Scene;)V

    invoke-virtual {v0, p5}, Landroid/transition/Scene;->setEnterAction(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Landroid/transition/Scene;->enter()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    if-nez p4, :cond_d

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->adapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getDetachedMediaView()Landroid/view/View;

    move-result-object p2

    goto :goto_2

    :cond_5
    move-object p2, v0

    :goto_2
    if-nez p2, :cond_6

    const-string p2, "expandMediaCard cannot find media card"

    invoke-static {p5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_6
    const p3, 0x7f0a0c02

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    const p5, 0x7f0a08e8

    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    const/4 p5, 0x4

    invoke-virtual {p2, p5}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    if-nez p3, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    if-eqz p4, :cond_9

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_9
    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_5
    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    const/4 p2, -0x2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_6
    if-nez p4, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    :goto_7
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->decorView:Landroid/view/View;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->layoutListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$layoutListener$1;

    invoke-virtual {p2, p3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingAnimation:Z

    :cond_e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v7

    move-object v2, p0

    move v3, p1

    invoke-super/range {v2 .. v7}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void

    :cond_f
    :goto_8
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->currentIndex:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "currentIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->currentIndex:I

    const-string/jumbo v0, "superState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "currentIndex"

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->currentIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "superState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "{OngoingActivityCardStackView}"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v0

    const-string v1, "onTouchEvent() topChildView is null, topViewIndex "

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isRunningCollapseAnimation:Z

    const/4 v5, 0x1

    if-nez v4, :cond_37

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isRunningExpandAnimation:Z

    if-nez v4, :cond_37

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isRunningSwipeDismissTopCardMove:Z

    if-eqz v4, :cond_1

    goto/16 :goto_12

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v6, p1

    invoke-virtual {v4, v6}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsDisplay:Z

    if-nez v4, :cond_7

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->onChangeListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v1, "{OngoingExpandedPipController}"

    const-string/jumbo v2, "startActivityFromCard : ongoingActivity is null ##"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mExpandedView:Landroid/view/ViewGroup;

    const v7, 0x7f0a0876

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object v8, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;

    const/16 v9, 0x22

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x1c

    invoke-static {v8, v6, v9, v10}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;->fromView$default(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;Landroid/view/View;Ljava/lang/Integer;I)Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    move-result-object v6

    invoke-interface {v7, v4, v6}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    :cond_3
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v4

    const-string v6, "SBOA0003"

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v2, v6, v4}, Lcom/android/systemui/util/NotificationSAUtil;->sendOALog(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_4
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onAllowStateChanged(Z)V

    :cond_5
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->resetTouchEvent()V

    return v5

    :cond_6
    move-object/from16 v6, p1

    :cond_7
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->touchOutTopHeight:Z

    if-eqz v4, :cond_8

    return v3

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_9

    return v3

    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v4

    if-nez v4, :cond_a

    return v3

    :cond_a
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->touchPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_b

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->touchOutTopHeight:Z

    return v3

    :cond_b
    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->startDrag(Landroid/view/MotionEvent;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;->INIT:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->startViewStatusList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-ne v1, v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v1

    if-ltz v1, :cond_d

    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->startViewStatusList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    iget-object v8, v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->point:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v6, v8}, Landroid/view/View;->setX(F)V

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->point:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setY(F)V

    if-eq v4, v1, :cond_d

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_c
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->startViewStatusList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onTouchEvent ACTION_DOWN startViewStatusList.size:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != childCount:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-eqz v1, :cond_e

    goto :goto_2

    :cond_e
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsControlState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;->INIT:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

    if-eq v1, v3, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startLongPressTimer stop by GutsControlState:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->longPressRunnable:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$longPressRunnable$1;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->longPressRunnable:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$longPressRunnable$1;

    iget-wide v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsPressDelay:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;->PRESS:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsControlState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

    :goto_2
    return v5

    :cond_12
    const/4 v2, 0x2

    if-ne v4, v2, :cond_33

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isDragging:Z

    if-nez v4, :cond_13

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->startDrag(Landroid/view/MotionEvent;)V

    :cond_13
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    if-nez v1, :cond_14

    return v3

    :cond_14
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->touchPoint:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->initialTouchPoint:Landroid/graphics/PointF;

    new-instance v6, Landroid/graphics/PointF;

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v7, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget v1, v4, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iget v4, v4, Landroid/graphics/PointF;->y:F

    neg-float v4, v4

    invoke-virtual {v6, v1, v4}, Landroid/graphics/PointF;->offset(FF)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;->INIT:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    if-ne v1, v4, :cond_19

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isMediaPlaying:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_15

    goto :goto_3

    :cond_15
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_4

    :cond_16
    :goto_3
    move v1, v3

    :goto_4
    if-nez v1, :cond_18

    iget v1, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v7, 0x5

    int-to-float v7, v7

    add-float/2addr v4, v7

    cmpl-float v1, v1, v4

    if-lez v1, :cond_17

    goto :goto_5

    :cond_17
    iget v1, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v4, v7

    cmpl-float v1, v1, v4

    if-lez v1, :cond_19

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;->HORIZONTAL:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->stopLongPressChecker()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->removeBottomCardShadow()V

    goto :goto_6

    :cond_18
    :goto_5
    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;->VERTICAL:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->stopLongPressChecker()V

    :cond_19
    :goto_6
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;->VERTICAL:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    const/4 v7, 0x0

    if-ne v1, v4, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v8, "BottomCardShadowView"

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget v8, v6, Landroid/graphics/PointF;->y:F

    cmpg-float v9, v7, v8

    if-gez v9, :cond_1b

    iget v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->viewSpacing:F

    cmpg-float v9, v8, v9

    if-gez v9, :cond_1a

    if-eqz v1, :cond_1b

    neg-float v8, v8

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v8, v9

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_7

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->removeBottomCardShadow()V

    :cond_1b
    :goto_7
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v1, v4, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v1

    if-eqz v1, :cond_20

    iget v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->viewSpacing:F

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f070b64

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/2addr v4, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    if-le v9, v4, :cond_1c

    move v4, v9

    :cond_1c
    iget v9, v6, Landroid/graphics/PointF;->y:F

    cmpg-float v10, v9, v7

    if-gez v10, :cond_1d

    new-instance v1, Lkotlin/Pair;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v1, v4, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1d
    int-to-float v10, v1

    cmpg-float v11, v9, v10

    if-gez v11, :cond_1e

    new-instance v1, Lkotlin/Pair;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v1, v4, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1e
    cmpl-float v11, v9, v10

    if-ltz v11, :cond_1f

    int-to-float v11, v4

    cmpg-float v9, v9, v11

    if-gez v9, :cond_1f

    new-instance v9, Lkotlin/Pair;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget v12, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v10

    sub-int/2addr v4, v1

    int-to-float v1, v4

    div-float/2addr v12, v1

    invoke-static {v12, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v9, v11, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v9

    goto/16 :goto_8

    :cond_1f
    new-instance v1, Lkotlin/Pair;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v1, v4, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_20
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;->HORIZONTAL:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    if-ne v1, v4, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->centerDp:I

    iget v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeEndDp:I

    add-int v10, v4, v9

    int-to-float v10, v10

    iget v11, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->dpToFlot:F

    mul-float/2addr v10, v11

    cmpl-float v12, v1, v10

    if-ltz v12, :cond_21

    new-instance v1, Lkotlin/Pair;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v1, v4, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_21
    iget v12, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeStartDp:I

    int-to-float v13, v12

    mul-float/2addr v13, v11

    cmpl-float v13, v1, v13

    if-ltz v13, :cond_22

    sub-float/2addr v10, v1

    sub-int/2addr v4, v12

    add-int/2addr v4, v9

    int-to-float v1, v4

    mul-float/2addr v1, v11

    div-float/2addr v10, v1

    new-instance v1, Lkotlin/Pair;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v1, v4, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_22
    new-instance v4, Lkotlin/Pair;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget v10, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeStartDp:I

    int-to-float v10, v10

    iget v11, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->dpToFlot:F

    mul-float/2addr v10, v11

    div-float/2addr v1, v10

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v4, v9, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v4

    goto :goto_8

    :cond_23
    new-instance v1, Lkotlin/Pair;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v1, v4, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v9

    if-ltz v9, :cond_32

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v11

    sub-int/2addr v11, v3

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->startViewStatusList:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->endViewStatusList:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    sget-object v14, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;->VERTICAL:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    if-ne v13, v14, :cond_2c

    iget v13, v6, Landroid/graphics/PointF;->x:F

    iget-object v14, v12, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->point:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    const v15, 0x3dcccccd    # 0.1f

    const v16, 0x3d4ccccd    # 0.05f

    const-string v8, "Not defined index"

    if-eqz v11, :cond_26

    if-eq v11, v5, :cond_25

    if-ne v11, v2, :cond_24

    const v17, 0x3ccccccd    # 0.025f

    mul-float v13, v13, v17

    goto :goto_a

    :cond_24
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    mul-float v13, v13, v16

    goto :goto_a

    :cond_26
    mul-float/2addr v13, v15

    :goto_a
    add-float/2addr v14, v13

    invoke-virtual {v10, v14}, Landroid/view/View;->setX(F)V

    iget v13, v6, Landroid/graphics/PointF;->y:F

    iget-object v14, v12, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    const/high16 v7, 0x43340000    # 180.0f

    invoke-static {v5, v7, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    iget-object v14, v12, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->point:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    if-eqz v11, :cond_29

    if-eq v11, v5, :cond_28

    if-ne v11, v2, :cond_27

    mul-float v13, v13, v16

    :goto_b
    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_27
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    mul-float/2addr v13, v15

    goto :goto_b

    :cond_29
    const/4 v8, 0x0

    cmpg-float v15, v13, v8

    const v2, 0x3df5c28f    # 0.12f

    if-gez v15, :cond_2a

    mul-float/2addr v13, v2

    goto :goto_b

    :cond_2a
    cmpg-float v15, v13, v7

    if-gtz v15, :cond_2b

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float/2addr v13, v15

    goto :goto_c

    :cond_2b
    const/high16 v15, 0x3f800000    # 1.0f

    mul-float v8, v7, v15

    invoke-static {v13, v7, v2, v8}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v13

    :goto_c
    add-float/2addr v14, v13

    invoke-virtual {v10, v14}, Landroid/view/View;->setY(F)V

    if-lez v11, :cond_2d

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getBaseColorView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_d

    :cond_2c
    move v15, v8

    :cond_2d
    :goto_d
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    sget-object v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;->HORIZONTAL:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    if-ne v2, v7, :cond_31

    if-nez v11, :cond_30

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isMonochromeCard()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$MonochromeAlpha;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$MonochromeAlpha;

    invoke-virtual {v2, v11}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$CommonAlpha;->getUnderlayBaseColor(I)F

    move-result v2

    iget v7, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v10, v7}, Landroid/view/View;->setX(F)V

    const v7, 0x7f0a0c02

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_2e

    goto :goto_e

    :cond_2e
    invoke-virtual {v7, v4}, Landroid/view/View;->setAlpha(F)V

    :goto_e
    mul-float v7, v4, v2

    cmpl-float v8, v7, v2

    if-ltz v8, :cond_2f

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getBaseColorView(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_f

    :cond_2f
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getBaseColorView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_f

    :cond_30
    iget-object v2, v12, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->point:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v10, v2}, Landroid/view/View;->setX(F)V

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getBaseColorView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_f
    iget-object v2, v12, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->point:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v2}, Landroid/view/View;->setY(F)V

    :cond_31
    if-eq v3, v9, :cond_32

    add-int/lit8 v3, v3, 0x1

    move v8, v15

    const/4 v2, 0x2

    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_32
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isAnimating:Z

    return v5

    :cond_33
    if-ne v4, v5, :cond_34

    :goto_10
    move v2, v5

    goto :goto_11

    :cond_34
    const/4 v2, 0x3

    if-ne v4, v2, :cond_35

    goto :goto_10

    :cond_35
    move v2, v3

    :goto_11
    if-eqz v2, :cond_36

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->resetTouchEvent()V

    return v5

    :cond_36
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_37
    :goto_12
    return v5
.end method

.method public final removeBottomCardShadow()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "BottomCardShadowView"

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0c03

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    if-eqz v2, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->viewSpacing:F

    invoke-static {p0, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->updateBottomCardShadowLP$default(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Landroid/view/ViewGroup;FLandroid/view/View;)V

    :cond_1
    if-eq v1, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final removeTopCardGuts(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0c03

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "{OngoingActivityCardStackView}"

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->guts:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->guts:Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsContents:Landroid/view/View;

    const-string p0, "Ongoing activity removeTopCardGuts done"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    const-string/jumbo p0, "removeTopCardGuts fail"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final resetAllParentsClipConfig$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 4

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->originalAllParentsClipChildrenConfig:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->originalAllParentsClipToPaddingConfig:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->originalAllParentsClipChildrenConfig:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->originalAllParentsClipToPaddingConfig:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final resetItemPosition(Z)V
    .locals 17

    move-object/from16 v8, p0

    const-string/jumbo v0, "{OngoingActivityCardStackView}"

    const-string/jumbo v1, "resetItemPosition()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCurrentViewStatusList()Ljava/util/List;

    move-result-object v10

    iget-object v11, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->resetAnimationSet:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    const-string/jumbo v1, "resetAnimationSet run()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v12

    if-ltz v12, :cond_2

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v0, v10

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->startViewStatusList:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    iget v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->scaleX:F

    const v5, 0x3f502c18

    const/high16 v6, 0x43480000    # 200.0f

    move-object v1, v11

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->add(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFF)V

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    const/high16 v6, 0x43480000    # 200.0f

    iget v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->scaleY:F

    const v5, 0x3f502c18

    move-object v1, v11

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->add(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFF)V

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->X:Landroidx/dynamicanimation/animation/DynamicAnimation$9;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->point:Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    const v5, 0x3f47ae14    # 0.78f

    const/high16 v6, 0x43480000    # 200.0f

    move-object v1, v11

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->add(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFF)V

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->Y:Landroidx/dynamicanimation/animation/DynamicAnimation$10;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->point:Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->y:F

    const v5, 0x3f47ae14    # 0.78f

    const/high16 v6, 0x43480000    # 200.0f

    move-object v1, v11

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->add(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFF)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v3, 0x1e0

    invoke-virtual {v6, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v3, v4, v5, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->alphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x258

    invoke-virtual {v6, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_0
    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "BottomCardShadowView"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$resetItemPosition$1$1$1;

    move-object/from16 v16, v0

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v7

    move-object v7, v4

    move-object v4, v15

    move-object v15, v5

    move-object/from16 v5, v16

    move-object v13, v6

    move v6, v14

    move-object v9, v7

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$resetItemPosition$1$1$1;-><init>(Landroid/animation/ValueAnimator;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Landroid/view/View;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;ILkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v13, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v11, v13}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->add(Landroid/animation/ValueAnimator;)V

    if-eq v14, v12, :cond_2

    const/4 v0, 0x1

    add-int/2addr v14, v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final resetTouchEvent()V
    .locals 22

    move-object/from16 v8, p0

    const/4 v9, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->stopLongPressChecker()V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->resetItemPosition(Z)V

    :goto_0
    move v0, v10

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iget v0, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->dpToFlot:F

    iget v1, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeStartDp:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42aa0000    # 85.0f

    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v9, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iget-boolean v2, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isRunningSwipeDismissTopCardMove:Z

    const-string/jumbo v3, "{OngoingActivityCardStackView}"

    if-eqz v2, :cond_1

    const-string v0, "isRunningSwipeDismissTopCardMove is true so resetItemPosition()"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->resetItemPosition(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;->VERTICAL:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    if-ne v2, v4, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->resetItemPosition(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    if-ne v2, v4, :cond_8

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gt v0, v9, :cond_3

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->resetItemPosition(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "swipeItemToBottom()"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v1

    const-string v2, "SBOA0007"

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v0, v2, v1}, Lcom/android/systemui/util/NotificationSAUtil;->sendOALog(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_4
    iget-boolean v0, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsDisplay:Z

    if-eqz v0, :cond_5

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->disableTopCardGuts(Z)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCurrentViewStatusList()Ljava/util/List;

    move-result-object v13

    iget-object v7, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->swipeAnimationSet:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    const-string/jumbo v0, "swipeAnimationSet run()"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v6

    if-ltz v6, :cond_6

    move v5, v10

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v0, v13

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->endViewStatusList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    add-int/lit8 v21, v5, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    rem-int v2, v21, v0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v16, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    iget v0, v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->scaleX:F

    const v18, 0x3f502c18

    const/high16 v19, 0x43480000    # 200.0f

    move-object v14, v7

    move-object v15, v4

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v19}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->add(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFF)V

    sget-object v16, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    const/high16 v19, 0x43480000    # 200.0f

    iget v0, v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->scaleY:F

    const v18, 0x3f502c18

    move-object v14, v7

    move-object v15, v4

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v19}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->add(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFF)V

    sget-object v16, Landroidx/dynamicanimation/animation/DynamicAnimation;->X:Landroidx/dynamicanimation/animation/DynamicAnimation$9;

    iget-object v0, v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->point:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const v18, 0x3f47ae14    # 0.78f

    const/high16 v19, 0x42c80000    # 100.0f

    move-object v14, v7

    move-object v15, v4

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v19}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->add(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFF)V

    sget-object v16, Landroidx/dynamicanimation/animation/DynamicAnimation;->Y:Landroidx/dynamicanimation/animation/DynamicAnimation$10;

    iget-object v0, v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->point:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const v18, 0x3f47ae14    # 0.78f

    const/high16 v19, 0x42c80000    # 100.0f

    move-object v14, v7

    move-object v15, v4

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v19}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->add(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFF)V

    new-instance v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    const-wide/16 v0, 0x258

    invoke-virtual {v15, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->topAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;

    move-object v0, v1

    move-object v11, v1

    move-object v1, v15

    move v10, v2

    move v2, v5

    move-object/from16 v18, v3

    move-object/from16 v3, p0

    move-object/from16 v19, v4

    move-object v4, v14

    move v14, v5

    move-object/from16 v5, v19

    move v9, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v13

    move-object v13, v7

    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;-><init>(Landroid/animation/ValueAnimator;ILcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;)V

    invoke-virtual {v15, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v13, v15}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->add(Landroid/animation/ValueAnimator;)V

    int-to-float v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationZ(F)V

    if-eq v14, v9, :cond_7

    move v6, v9

    move-object v7, v13

    move-object/from16 v13, v20

    move/from16 v5, v21

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_6
    move-object v13, v7

    :cond_7
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->start()V

    const/16 v0, 0x29

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;->HORIZONTAL:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    if-ne v1, v2, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_9

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->swipeItemToHorizontal(Z)V

    goto :goto_2

    :cond_9
    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    if-ne v1, v2, :cond_a

    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v1

    neg-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->swipeItemToHorizontal(Z)V

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->resetItemPosition(Z)V

    :goto_3
    iput-boolean v0, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isChildTouchEventIntercepting:Z

    iput-boolean v0, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isDragging:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;->INIT:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    iput-object v1, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    iput-boolean v0, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->touchOutTopHeight:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final setAllParentsClipConfig()V
    .locals 4

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->originalAllParentsClipChildrenConfig:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->originalAllParentsClipToPaddingConfig:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setCardColor(Landroid/view/View;I)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isMonochromeCard()V

    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isAnimating:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getBaseColorView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$MonochromeAlpha;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$MonochromeAlpha;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$CommonAlpha;->getUnderlayBaseColor(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Not defined index"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final showBottomCardShadowIfNeeded(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->removeBottomCardShadow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v2

    if-ne p1, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "enabling dummy shadow  - secondary ?"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "{OngoingActivityCardStackView}"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->updateBottomCardShadow()V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const-string v5, "BottomCardShadowView"

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const v5, 0x7f0a0c03

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v4

    :goto_2
    iget v5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->viewSpacing:F

    invoke-static {p0, v2, v5, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->updateBottomCardShadowLP$default(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Landroid/view/ViewGroup;FLandroid/view/View;)V

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 p1, 0x4

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->viewSpacing:F

    sub-float p0, p1, p0

    new-array v3, v3, [F

    aput p0, v3, v0

    aput p1, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$showBottomCardShadowIfNeeded$1;

    invoke-direct {p1, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$showBottomCardShadowIfNeeded$1;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final startDrag(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->touchPointerId:I

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v2, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->initialTouchPoint:Landroid/graphics/PointF;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->swipeAnimationSet:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->clear()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->swipeHorizontalAnimationSet:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->clear()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->resetAnimationSet:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->setAllParentsClipConfig()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->onChangeListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onAllowStateChanged(Z)V

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isDragging:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const p1, 0x3f7d70a4    # 0.99f

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final stopLongPressChecker()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsControlState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;->PRESS:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopLongPressChecker stop by GutsControlState:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "{OngoingActivityCardStackView}"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->longPressRunnable:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$longPressRunnable$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;->INIT:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsControlState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

    return-void
.end method

.method public final swipeItemToHorizontal(Z)V
    .locals 18

    move-object/from16 v6, p0

    move/from16 v0, p1

    const/4 v7, 0x2

    const/4 v8, 0x1

    const-string/jumbo v1, "{OngoingActivityCardStackView}"

    const-string/jumbo v2, "swipeItemToHorizontal()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v4

    const-string v5, "SBOA0004"

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v2, v5, v4}, Lcom/android/systemui/util/NotificationSAUtil;->sendOALog(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    iget-boolean v2, v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsDisplay:Z

    if-eqz v2, :cond_1

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->disableTopCardGuts(Z)V

    :cond_1
    iput-boolean v8, v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isRunningSwipeDismissTopCardMove:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCurrentViewStatusList()Ljava/util/List;

    move-result-object v9

    if-eqz v0, :cond_2

    move v2, v8

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_0
    iget v4, v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->centerDp:I

    iget v5, v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeEndDp:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v2

    int-to-float v2, v4

    iget v4, v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->dpToFlot:F

    mul-float/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v10, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    invoke-direct {v5, v4, v10, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iget-object v2, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v10, 0x43480000    # 200.0f

    invoke-virtual {v2, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const v10, 0x3f502c18

    invoke-virtual {v2, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$1;

    invoke-direct {v2, v0, v4, v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$1;-><init>(ZLandroid/view/View;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V

    invoke-virtual {v5, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v0

    if-gtz v0, :cond_3

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$2;

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$2;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V

    invoke-virtual {v5, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$3;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$3;

    invoke-virtual {v5, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :goto_1
    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v0

    if-gtz v0, :cond_4

    return-void

    :cond_4
    iget-object v5, v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->swipeHorizontalAnimationSet:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    const-string v0, "SwipeHorizontal AnimationSet run()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_5

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v9

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->endViewStatusList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    add-int/lit8 v17, v3, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    rem-int v3, v17, v0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v12, Landroidx/dynamicanimation/animation/DynamicAnimation;->X:Landroidx/dynamicanimation/animation/DynamicAnimation$9;

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->point:Landroid/graphics/PointF;

    iget v13, v0, Landroid/graphics/PointF;->x:F

    const v14, 0x3f47ae14    # 0.78f

    const/high16 v15, 0x42c80000    # 100.0f

    move-object v10, v5

    move-object v11, v2

    invoke-virtual/range {v10 .. v15}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->add(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFF)V

    sget-object v12, Landroidx/dynamicanimation/animation/DynamicAnimation;->Y:Landroidx/dynamicanimation/animation/DynamicAnimation$10;

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->point:Landroid/graphics/PointF;

    iget v13, v0, Landroid/graphics/PointF;->y:F

    const v14, 0x3f47ae14    # 0.78f

    const/high16 v15, 0x42c80000    # 100.0f

    move-object v10, v5

    move-object v11, v2

    invoke-virtual/range {v10 .. v15}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->add(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFF)V

    sget-object v12, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const/high16 v15, 0x43480000    # 200.0f

    iget v13, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->scaleX:F

    const v14, 0x3f19999a    # 0.6f

    move-object v10, v5

    move-object v11, v2

    invoke-virtual/range {v10 .. v15}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->add(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFF)V

    sget-object v12, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    const/high16 v15, 0x43480000    # 200.0f

    iget v13, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->scaleY:F

    const v14, 0x3f19999a    # 0.6f

    move-object v10, v5

    move-object v11, v2

    invoke-virtual/range {v10 .. v15}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->add(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFF)V

    const/4 v0, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    new-array v11, v7, [F

    fill-array-data v11, :array_0

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    const-wide/16 v12, 0x1e0

    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v12, Landroid/view/animation/PathInterpolator;

    const v13, 0x3e6147ae    # 0.22f

    const/high16 v14, 0x3e800000    # 0.25f

    invoke-direct {v12, v13, v14, v0, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v10, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$2$1$1;

    move-object v0, v10

    move-object v12, v1

    move-object v1, v11

    move-object v13, v2

    move-object/from16 v2, p0

    move v14, v3

    move-object v3, v13

    move v15, v4

    move-object/from16 v4, v16

    move-object v8, v5

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$2$1$1;-><init>(Landroid/animation/ValueAnimator;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Landroid/view/View;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;)V

    invoke-virtual {v11, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->add(Landroid/animation/ValueAnimator;)V

    int-to-float v0, v14

    invoke-virtual {v13, v0}, Landroid/view/View;->setTranslationZ(F)V

    move-object v5, v8

    move v4, v15

    move/from16 v3, v17

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_5
    move-object v8, v5

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->start()V

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->showBottomCardShadowIfNeeded(I)V

    :cond_6
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final updateBottomCardShadow()V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v0

    if-ltz v0, :cond_4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "BottomCardShadowView"

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Create dummy shadow needed? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "{OngoingActivityCardStackView}"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0a0c03

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-nez v5, :cond_3

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f08108b

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCardInitialScale(I)F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0a0551

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->viewSpacing:F

    invoke-static {p0, v5, v4, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->updateBottomCardShadowLP$default(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Landroid/view/ViewGroup;FLandroid/view/View;)V

    if-eq v2, v0, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final updateItem$1()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->adapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;

    if-eqz v0, :cond_5

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->stackMaxSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    sub-int v5, v1, v4

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_0

    goto :goto_3

    :cond_0
    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v6

    iget-boolean v7, v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getDetachedMediaView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->inflateDummyChipView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getMediaCardView:Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x0

    if-nez v7, :cond_2

    const-string v7, "MediaOngoingActivity"

    const-string v9, "getMediaCard. lambda is not initialized"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    goto :goto_1

    :cond_2
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v7, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    :goto_1
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v5, v8, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p0, v4, v6, v5, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->addItem(IILandroid/view/View;Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->bindView(Landroid/view/View;I)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->updateItemBg()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->onChangeListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getCount()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;->onChange(II)V

    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->updateTopIndex()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->startViewStatusList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->endViewStatusList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->startViewStatusList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->endViewStatusList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string/jumbo v3, "updateItem index mismatch. topViewIndex:"

    const-string v4, ", startViewStatusList.size:"

    const-string v5, ", endViewStatusList.size:"

    invoke-static {v0, v1, v3, v4, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{OngoingActivityCardStackView}"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getStartViewStatusList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->startViewStatusList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getEndViewStatusList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->endViewStatusList:Ljava/util/List;

    :cond_7
    return-void
.end method

.method public final updateItemBg()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCardBg()I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCardBg()I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v3

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->removingSbnId:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "{OngoingActivityCardStackView}"

    const-string/jumbo v5, "updateItemBg setCardColor by fixed index"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-lez v3, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->setCardColor(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->setCardColor(Landroid/view/View;I)V

    :goto_1
    if-eq v1, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
