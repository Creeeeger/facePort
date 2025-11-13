.class public final Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CONTENT_TRANSLATION:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;


# instance fields
.field public carouselHeight:I

.field public carouselWidth:I

.field public final closeGuts:Lkotlin/jvm/functions/Function1;

.field public contentTranslation:F

.field public cornerRadius:I

.field public final dismissCallback:Lkotlin/jvm/functions/Function0;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public falsingProtectionNeeded:Z

.field public final gestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field public final logSmartspaceImpression:Lkotlin/jvm/functions/Function1;

.field public final logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mediaContent:Landroid/view/ViewGroup;

.field public final pageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field public playerWidthPlusPadding:I

.field public qsExpanded:Z

.field public scrollIntoCurrentMedia:I

.field public final scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

.field public final seekBarUpdateListener:Lkotlin/jvm/functions/Function1;

.field public settingsButton:Landroid/view/View;

.field public showsSettingsButton:Z

.field public final touchListener:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$touchListener$1;

.field public final translationChangedListener:Lkotlin/jvm/functions/Function0;

.field public visibleMediaIndex:I

.field public final visibleStateLogger:Lcom/android/app/tracing/TraceStateLogger;

.field public visibleToUser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    invoke-direct {v0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;-><init>()V

    sput-object v0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/media/controls/ui/view/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/plugins/FalsingManager;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/controls/ui/view/MediaScrollView;",
            "Lcom/android/systemui/qs/PageIndicator;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/android/systemui/media/controls/util/MediaUiEventLogger;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->dismissCallback:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->translationChangedListener:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->seekBarUpdateListener:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->closeGuts:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p9, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->logSmartspaceImpression:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    new-instance p9, Lcom/android/app/tracing/TraceStateLogger;

    const/4 p5, 0x0

    const/4 p6, 0x0

    const-string p3, "MediaCarouselScrollHandler#visibleToUser"

    const/4 p4, 0x0

    const/16 p7, 0xe

    const/4 p8, 0x0

    move-object p2, p9

    invoke-direct/range {p2 .. p8}, Lcom/android/app/tracing/TraceStateLogger;-><init>(Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p9, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleStateLogger:Lcom/android/app/tracing/TraceStateLogger;

    new-instance p2, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$gestureListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$gestureListener$1;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;)V

    new-instance p3, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$touchListener$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$touchListener$1;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;)V

    new-instance p4, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$scrollChangedListener$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$scrollChangedListener$1;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;)V

    new-instance p5, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-direct {p5, p6, p2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    iput-object p3, p1, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->touchListener:Lcom/android/systemui/Gefingerpoken;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    iget-object p2, p1, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p4}, Landroid/widget/HorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    new-instance p2, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$1;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;)V

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public static synthetic getTouchListener$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getMaxTranslation()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->showsSettingsButton:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    :goto_0
    return p0
.end method

.method public final onPlayersChanged()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->updatePlayerVisibilities()V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070df2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v7

    if-eq v7, v5, :cond_1

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final resetTranslation(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->getContentTranslation()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandlerKt;->translationConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    sget-object v1, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    invoke-virtual {p0, v1, v2, v2, p1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    iput v2, v0, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->animationTargetX:F

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->setContentTranslation(F)V

    :goto_0
    return-void
.end method

.method public final scrollToPlayer(II)V
    .locals 3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    mul-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int p1, v1, p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$scrollToPlayer$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$scrollToPlayer$1;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;Landroid/view/View;)V

    const-wide/16 v0, 0x64

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p2, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method

.method public final setContentTranslation(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->contentTranslation:F

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->updateSettingsPresentation()V

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->translationChangedListener:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->contentTranslation:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setClipToOutline(Z)V

    return-void
.end method

.method public final updatePlayerVisibilities()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleMediaIndex:I

    if-eq v3, v5, :cond_2

    add-int/lit8 v5, v5, 0x1

    if-ne v3, v5, :cond_1

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x4

    goto :goto_3

    :cond_2
    :goto_2
    move v5, v1

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final updateSettingsPresentation()V
    .locals 10

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->showsSettingsButton:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->contentTranslation:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v0, v4, v5, v3}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    sub-float v3, v5, v0

    iget-object v6, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-nez v6, :cond_1

    move-object v6, v2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->contentTranslation:F

    cmpl-float v8, v8, v4

    if-lez v8, :cond_3

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v6

    iget-object v6, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-nez v6, :cond_2

    move-object v6, v2

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v8, v6

    neg-float v6, v8

    goto :goto_0

    :cond_3
    neg-float v6, v6

    goto :goto_0

    :cond_4
    iget v8, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->contentTranslation:F

    cmpl-float v8, v8, v4

    if-lez v8, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v6

    iget-object v6, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-nez v6, :cond_6

    move-object v6, v2

    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v8, v6

    :goto_0
    const/16 v8, 0x32

    int-to-float v8, v8

    mul-float/2addr v3, v8

    iget-object v8, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-nez v8, :cond_7

    move-object v8, v2

    :cond_7
    iget v9, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->contentTranslation:F

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    neg-float v9, v9

    mul-float/2addr v3, v9

    invoke-virtual {v8, v3}, Landroid/view/View;->setRotation(F)V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3, v5, v4, v5, v0}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-nez v3, :cond_8

    move-object v3, v2

    :cond_8
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-nez v3, :cond_9

    move-object v3, v2

    :cond_9
    cmpg-float v0, v0, v4

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-nez v0, :cond_b

    move-object v0, v2

    :cond_b
    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-nez v0, :cond_c

    move-object v0, v2

    :cond_c
    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-nez p0, :cond_d

    goto :goto_2

    :cond_d
    move-object v2, p0

    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    int-to-float p0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_4

    :cond_e
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-nez p0, :cond_f

    goto :goto_3

    :cond_f
    move-object v2, p0

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method
