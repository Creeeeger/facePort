.class public final Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$touchListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$touchListener$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$touchListener$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    iget-object p0, p0, Landroidx/core/view/GestureDetectorCompat;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, 0x2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$touchListener$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    iget-object v4, v4, Landroidx/core/view/GestureDetectorCompat;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v5}, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->cancelCurrentScroll()V

    goto/16 :goto_6

    :cond_1
    :goto_1
    move v2, v3

    goto/16 :goto_6

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v0, :cond_3

    sget-object p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_4
    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v5, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int p1, v1, p1

    :cond_6
    iget v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    rem-int/2addr p1, v1

    div-int/lit8 v4, v1, 0x2

    if-le p1, v4, :cond_7

    sub-int/2addr v1, p1

    goto :goto_3

    :cond_7
    mul-int/lit8 v1, p1, -0x1

    :goto_3
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    if-eqz v1, :cond_9

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_8

    neg-int v1, v1

    :cond_8
    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v4

    add-int/2addr v4, v1

    new-instance v1, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$onTouch$1;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$onTouch$1;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_9
    invoke-virtual {v5}, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->getContentTranslation()F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v6, v1, v4

    if-nez v6, :cond_a

    goto :goto_1

    :cond_a
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v7

    div-int/2addr v7, v0

    int-to-float v0, v7

    cmpg-float v0, v6, v0

    if-ltz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->showsSettingsButton:Z

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$onTouch$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$onTouch$2;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;)V

    const-wide/16 v6, 0x64

    invoke-interface {p1, v0, v6, v7}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    goto :goto_5

    :cond_c
    :goto_4
    move v1, v4

    :cond_d
    :goto_5
    sget-object p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandlerKt;->translationConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    sget-object v0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    invoke-virtual {p0, v0, v1, v4, p1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    iput v1, v5, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->animationTargetX:F

    goto/16 :goto_1

    :goto_6
    return v2
.end method
