.class public final Lcom/android/systemui/keyguard/animator/FullScreenViewController;
.super Lcom/android/systemui/keyguard/animator/ViewAnimationController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

.field public final fullScreenViews:Ljava/util/List;

.field public isFullScreenModeShown:Z

.field public isFullscreenModeEnabled:Z

.field public final longPressCallback:Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/FullScreenViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 p1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 p1, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 p1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 p1, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenViews:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;-><init>(Lcom/android/systemui/keyguard/animator/FullScreenViewController;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->longPressCallback:Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public final setFullScreenMode$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Z)V
    .locals 9

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullscreenModeEnabled:Z

    const-string/jumbo v0, "setFullScreenMode enabled="

    const-string v1, "KeyguardTouchAnimator"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->isKeyguardState()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->SINE_OUT_33:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->SINE_IN_33:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_3

    const-wide/16 v1, 0x96

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x12c

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/keyguard/animator/FullScreenViewController$setFullScreenMode$1$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/keyguard/animator/FullScreenViewController$setFullScreenMode$1$1;-><init>(ZLcom/android/systemui/keyguard/animator/FullScreenViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    const v2, 0x3f733333    # 0.95f

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    if-eqz p1, :cond_5

    const/4 v1, 0x0

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v4

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenViews:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz p1, :cond_c

    const/high16 v7, -0x40800000    # -1.0f

    goto :goto_8

    :cond_c
    move v7, v2

    :goto_8
    invoke-virtual {p0, v0, v6, v7, v1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    goto :goto_7

    :cond_d
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->loggingInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_9

    :cond_e
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSE1011"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    iget-object v0, v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_10

    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "KeyguardFingerprint"

    if-eqz p1, :cond_f

    const-string p1, "onFullScreenModeChanged is true. FP will be stop!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    goto :goto_a

    :cond_f
    const-string p1, "onFullScreenModeChanged is false. FP will be start!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    :cond_10
    :goto_a
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullscreenModeEnabled:Z

    iget-object v0, v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->onFullscreenModeChanged(Landroid/content/Context;Z)V

    return-void
.end method
