.class public final Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$gestureListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$gestureListener$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$gestureListener$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    sget-object p2, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-float p2, p3, p3

    float-to-double v0, p2

    float-to-double v2, p4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    cmpg-double p4, v0, v4

    const/4 v0, 0x0

    if-gez p4, :cond_0

    :goto_0
    move p1, v0

    goto/16 :goto_5

    :cond_0
    const p4, 0x49742400    # 1000000.0f

    cmpg-float p2, p2, p4

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {p2}, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->getContentTranslation()F

    move-result p4

    const/4 v1, 0x0

    cmpg-float v2, p4, v1

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    if-nez v2, :cond_7

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p4

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p2, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int p4, v2, p4

    :cond_3
    iget v2, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    if-lez v2, :cond_4

    div-int/2addr p4, v2

    goto :goto_2

    :cond_4
    move p4, v0

    :goto_2
    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_5

    cmpl-float p2, p3, v1

    if-lez p2, :cond_6

    goto :goto_3

    :cond_5
    cmpg-float p2, p3, v1

    if-gez p2, :cond_6

    :goto_3
    add-int/2addr p4, p1

    :cond_6
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    sub-int/2addr p3, p1

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$onFling$2;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$onFling$2;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;Landroid/view/View;)V

    invoke-interface {v3, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_7
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->signum(F)F

    move-result v2

    cmpg-float v0, v0, v2

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p4}, Ljava/lang/Math;->signum(F)F

    move-result p4

    mul-float v1, p4, v0

    iget-boolean p4, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->showsSettingsButton:Z

    if-nez p4, :cond_9

    new-instance p4, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$onFling$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$onFling$1;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;)V

    const-wide/16 v4, 0x64

    invoke-interface {v3, p4, v4, v5}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_9
    :goto_4
    sget-object p4, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object p0

    sget-object p4, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandlerKt;->translationConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    sget-object v0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    iput v1, p2, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->animationTargetX:F

    :goto_5
    return p1
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$gestureListener$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {p1}, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->getContentTranslation()F

    move-result p4

    const/4 v0, 0x0

    cmpg-float v1, p4, v0

    if-nez v1, :cond_1

    neg-float p2, p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto/16 :goto_4

    :cond_1
    :goto_0
    sub-float p2, p4, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    const v4, 0x3e4ccccd    # 0.2f

    if-lez v3, :cond_3

    mul-float/2addr p3, v4

    sub-float p2, p4, p3

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    add-float/2addr v2, p3

    mul-float/2addr p2, v2

    :cond_4
    :goto_1
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p3

    invoke-static {p4}, Ljava/lang/Math;->signum(F)F

    move-result p4

    cmpg-float p3, p3, p4

    if-nez p3, :cond_5

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    float-to-int p3, p2

    neg-int p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_7

    move p2, v0

    :cond_7
    :goto_2
    sget-object p3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_8

    sget-object p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandlerKt;->translationConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    sget-object p4, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    invoke-virtual {p3, p4, p2, v0, p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    invoke-virtual {p3}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    goto :goto_3

    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->setContentTranslation(F)V

    :goto_3
    iput p2, p1, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->animationTargetX:F

    const/4 p0, 0x1

    :goto_4
    return p0
.end method
