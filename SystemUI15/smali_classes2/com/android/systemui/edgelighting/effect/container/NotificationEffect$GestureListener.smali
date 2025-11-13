.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v1, "onDoubleTap : "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-boolean v2, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->launchPendingIntent()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isDoubleTapToWakeUpEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "wakeUpDevice by double touch to root view"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v2, v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-boolean v2, v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    if-eqz v2, :cond_d

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x43160000    # 150.0f

    cmpl-float v5, v3, v4

    const/4 v6, 0x0

    const/high16 v7, 0x43c80000    # 400.0f

    if-lez v5, :cond_3

    cmpg-float v5, v2, v7

    if-gez v5, :cond_3

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v2, v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v3, "Fling down "

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v2, v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "*****mSwipeDownDisabledForEdgeLightingPlus = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-boolean v4, v4, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSwipeDownDisabledForEdgeLightingPlus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-boolean v3, v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSwipeDownDisabledForEdgeLightingPlus:Z

    if-nez v3, :cond_d

    iget-object v2, v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    sget-object p1, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string p2, "SM-F90"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->launchPendingIntent()V

    goto/16 :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    neg-float p3, p3

    new-array v2, v0, [F

    aput p3, v2, v1

    const-string/jumbo p3, "translationY"

    invoke-static {p2, p3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p4

    new-array p4, v0, [F

    aput v3, p4, v1

    invoke-static {v2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    iget-object p4, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    const/high16 v2, 0x3f800000    # 1.0f

    new-array v3, v0, [F

    aput v2, v3, v1

    const-string v4, "alpha"

    invoke-static {p4, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    new-array v5, v0, [F

    aput v6, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v4, v6, v5, v2, p2}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    const-wide/16 v7, 0xc8

    invoke-virtual {p2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {v4, v6, v5, v2, p2}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    invoke-virtual {p2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v7, 0x64

    invoke-virtual {p4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {v4, v6, v5, v2, p3}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    const-wide/16 v7, 0x12c

    invoke-virtual {p3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {v4, v6, v5, v2, v3}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object p3, p2, v1

    aput-object v3, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$5;

    invoke-direct {p2, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$5;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    return v0

    :cond_3
    cmpl-float v4, v2, v4

    if-lez v4, :cond_a

    cmpg-float v4, v3, v7

    if-gez v4, :cond_a

    iget-object p3, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object p3, p3, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string p4, "Fling Side "

    invoke-static {p3, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    cmpg-float p1, p2, v6

    if-gez p1, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p2, p2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object p2, p2, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->top:I

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRight()I

    move-result p1

    neg-int p1, p1

    :goto_3
    int-to-float p1, p1

    goto :goto_4

    :cond_6
    iget p1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_3

    :goto_4
    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-boolean p3, p2, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    if-eqz p3, :cond_7

    const-string p1, "MorphView"

    const-string p2, "Morph animation is running. So ignore hide action."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    iput-boolean v0, p2, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->isEmptyTickerText()Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p2, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    if-eqz p3, :cond_8

    iget-object p3, p3, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {p3}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dismissToastPopup()V

    :cond_8
    const-string/jumbo p3, "translationX"

    new-array p4, v0, [F

    aput p1, p4, v1

    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const p3, 0x3f051eb8    # 0.52f

    const p4, 0x3fbc28f6    # 1.47f

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3f2b851f    # 0.67f

    invoke-static {v1, v2, p3, p4, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    const-wide/16 p3, 0x258

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p3, Lcom/android/systemui/edgelighting/effect/view/MorphView$5;

    invoke-direct {p3, p2}, Lcom/android/systemui/edgelighting/effect/view/MorphView$5;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :goto_5
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onSwipeToastInWindow()V

    :cond_9
    return v0

    :cond_a
    const/high16 v0, -0x3d740000    # -70.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v1, "Fling up "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->onFlickUpAnimation()V

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v1, "onFling dx : "

    const-string v4, " dy : "

    const-string/jumbo v5, "velocityX "

    invoke-static {v1, v2, v4, v3, v5}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " velocityY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v1, "onLongPress"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-boolean v0, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->-$$Nest$mlaunchPopupWindow(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;Z)V

    :cond_0
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v1, "onSingleTapConfirmed : "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*****mSingleTapDisabledForEdgeLightingPlus = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-boolean v2, v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSingleTapDisabledForEdgeLightingPlus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSingleTapDisabledForEdgeLightingPlus:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-boolean v1, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->launchPendingIntent()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v1, " Ignore single Tap in screen off"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
