.class public Lcom/android/keyguard/KeyguardPINView;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAlreadyUsingSplitBouncer:Z

.field public final mAppearAnimator:Landroid/animation/ValueAnimator;

.field public mBouncerMessageArea:Landroid/view/View;

.field public final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field public final mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field public final mDisappearYTranslation:I

.field public mIsSmallLockScreenLandscapeEnabled:Z

.field public mLastDevicePosture:I

.field public mViews:[[Landroid/view/View;

.field public final mYTrans:I

.field public final mYTransOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardPINView;->mAlreadyUsingSplitBouncer:Z

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardPINView;->mIsSmallLockScreenLandscapeEnabled:Z

    iput v1, v0, Lcom/android/keyguard/KeyguardPINView;->mLastDevicePosture:I

    new-instance v1, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v9, 0x10c000f

    invoke-static {v2, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    const-wide/16 v4, 0x7d

    const v6, 0x3f19999a    # 0.6f

    const v7, 0x3ee66666    # 0.45f

    move-object v2, v1

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    new-instance v1, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v16

    const-wide/16 v12, 0xbb

    const v14, 0x3f19999a    # 0.6f

    const v15, 0x3ee66666    # 0.45f

    move-object v10, v1

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07033a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070cca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/keyguard/KeyguardPINView;->mYTrans:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ccb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/keyguard/KeyguardPINView;->mYTransOffset:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getPasswordTextViewId()I
    .locals 0

    const p0, 0x7f0a08e0

    return p0
.end method

.method public getWrongPasswordStringId()I
    .locals 0

    const p0, 0x7f130a9a

    return p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onDevicePostureChanged(I)V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/KeyguardPINView;->mLastDevicePosture:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardPINView;->mLastDevicePosture:I

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPINView;->mIsSmallLockScreenLandscapeEnabled:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f050092

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardPINView;->mAlreadyUsingSplitBouncer:Z

    if-eq p1, v0, :cond_5

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardPINView;->mIsSmallLockScreenLandscapeEnabled:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAlreadyUsingSplitBouncer:Z

    const/4 p1, 0x0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/keyguard/KeyguardPINView;->mLastDevicePosture:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    throw p1

    :cond_3
    throw p1

    :cond_4
    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 8

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onFinishInflate()V

    const v0, 0x7f0a01c1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mBouncerMessageArea:Landroid/view/View;

    const/4 v0, 0x6

    new-array v0, v0, [[Landroid/view/View;

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/view/View;

    const v3, 0x7f0a0a01

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput-object v5, v2, v3

    const/4 v6, 0x2

    aput-object v5, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [Landroid/view/View;

    const v7, 0x7f0a055a

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v4

    const v7, 0x7f0a055b

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v3

    const v7, 0x7f0a055c

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v6

    aput-object v2, v0, v3

    new-array v2, v1, [Landroid/view/View;

    const v7, 0x7f0a055d

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v4

    const v7, 0x7f0a055e

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v3

    const v7, 0x7f0a055f

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [Landroid/view/View;

    const v7, 0x7f0a0560

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v4

    const v7, 0x7f0a0561

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v3

    const v7, 0x7f0a0562

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v6

    aput-object v2, v0, v1

    new-array v2, v1, [Landroid/view/View;

    const v7, 0x7f0a0347

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v4

    const v7, 0x7f0a0559

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v3

    const v7, 0x7f0a0563

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v7, 0x4

    aput-object v2, v0, v7

    new-array v1, v1, [Landroid/view/View;

    aput-object v5, v1, v4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    aput-object v2, v1, v3

    aput-object v5, v1, v6

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    return-void
.end method

.method public final startAppearAnimation()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/KeyguardPINView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPINView$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardPINView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/KeyguardInputView$1;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardInputView$1;-><init>(Lcom/android/keyguard/KeyguardInputView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
