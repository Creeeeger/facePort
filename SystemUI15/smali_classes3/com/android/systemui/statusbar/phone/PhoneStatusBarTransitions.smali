.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBattery:Landroid/view/View;

.field public mCurrentAnimation:Landroid/animation/Animator;

.field public final mIconAlphaWhenOpaque:F

.field public mIsHeadsUp:Z

.field public final mNetspeedView:Landroid/view/View;

.field public final mStartSide:Landroid/view/View;

.field public final mStatusIcons:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0813ca

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071491

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    const p2, 0x7f0a0c1a

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStartSide:Landroid/view/View;

    const p2, 0x7f0a0c0f

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    const p2, 0x7f0a0163

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    sget-boolean p2, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz p2, :cond_0

    const p2, 0x7f0a07cb

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mNetspeedView:Landroid/view/View;

    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->applyModeBackground(IZ)V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->applyMode(IZ)V

    return-void
.end method


# virtual methods
.method public final applyMode(IZ)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStartSide:Landroid/view/View;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIsHeadsUp:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getIconAlphaBasedOnOpacity(I)F

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isLightsOut(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getIconAlphaBasedOnOpacity(I)F

    move-result v3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isLightsOut(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getIconAlphaBasedOnOpacity(I)F

    move-result v4

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isLightsOut(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getIconAlphaBasedOnOpacity(I)F

    move-result v5

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    :cond_5
    if-eqz p2, :cond_8

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStartSide:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v8

    new-array v9, v2, [F

    aput v8, v9, v1

    aput v3, v9, v0

    const-string v3, "alpha"

    invoke-static {v7, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v8

    new-array v9, v2, [F

    aput v8, v9, v1

    aput v4, v9, v0

    invoke-static {v7, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v6, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v7

    new-array v8, v2, [F

    aput v7, v8, v1

    aput v5, v8, v0

    invoke-static {v4, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-virtual {p2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-boolean v4, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mNetspeedView:Landroid/view/View;

    if-eqz v4, :cond_6

    new-array v6, v0, [Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v7

    new-array v2, v2, [F

    aput v7, v2, v1

    aput v5, v2, v0

    invoke-static {v4, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {p2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isLightsOut(I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-wide/16 v0, 0x5dc

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_7
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStartSide:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mNetspeedView:Landroid/view/View;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final getIconAlphaBasedOnOpacity(I)F
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public final onTransition(IIZ)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->applyModeBackground(IZ)V

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->applyMode(IZ)V

    return-void
.end method
