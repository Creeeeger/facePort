.class public Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBypassEnabled:Z

.field public mClockBottom:F

.field public mContainerTopPadding:I

.field public mCurrentBurnInOffsetY:F

.field public mCutoutTopInset:I

.field public mDarkAmount:F

.field public mIsClockTopAligned:Z

.field public mIsSplitShade:Z

.field public mKeyguardStatusHeight:I

.field public mMaxBurnInPreventionOffsetX:I

.field public mMaxBurnInPreventionOffsetYClock:I

.field public mMinTopMargin:I

.field public mOverStretchAmount:F

.field public mPanelExpansion:F

.field public mQsExpansion:F

.field public mSplitShadeTargetTopMargin:I

.field public mSplitShadeTopNotificationsMargin:I

.field public mStatusViewBottomMargin:I

.field public mUdfpsTop:F

.field public mUnlockedStackScrollerPadding:I

.field public mUserSwitchHeight:I

.field public mUserSwitchPreferredY:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mCutoutTopInset:I

    new-instance p0, Lcom/android/systemui/log/core/Logger;

    const-string v0, "KeyguardClockPositionAlgorithm"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBottomMarginY()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getClockY(FF)I
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mIsSplitShade:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mSplitShadeTargetTopMargin:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    sget-object v2, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-static {v1, v0, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxBurnInPreventionOffsetYClock:I

    int-to-float v1, v0

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mCutoutTopInset:I

    int-to-float v2, v2

    cmpg-float v3, v1, v2

    const/4 v4, 0x0

    if-gez v3, :cond_1

    sub-float v1, v2, v1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUdfpsTop:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mIsClockTopAligned:Z

    if-nez v5, :cond_5

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockBottom:F

    cmpg-float v5, v3, v1

    if-gez v5, :cond_3

    sub-float v1, p1, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    neg-int v1, v0

    int-to-float v1, v1

    goto :goto_4

    :cond_3
    sub-float v2, p1, v2

    sub-float/2addr v3, v1

    add-float v1, v3, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    sub-float/2addr v3, v2

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v3, v1

    :cond_5
    :goto_4
    mul-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    add-float v2, p1, v0

    add-float/2addr v2, v1

    invoke-static {v4, v0, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mCurrentBurnInOffsetY:F

    invoke-static {p1, v2, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mOverStretchAmount:F

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public getLockscreenNotifPadding(F)F
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    int-to-float p0, p0

    sub-float/2addr p0, p1

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mIsSplitShade:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mSplitShadeTargetTopMargin:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUserSwitchHeight:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    sub-float/2addr p0, p1

    return p0

    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr p1, p0

    int-to-float p0, p1

    return p0
.end method

.method public isPanelExpanded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loadDimens(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 1

    const v0, 0x7f07050e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mStatusViewBottomMargin:I

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/shade/LargeScreenHeaderHelper;->Companion:Lcom/android/systemui/shade/LargeScreenHeaderHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/shade/LargeScreenHeaderHelper$Companion;->getLargeScreenHeaderHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mSplitShadeTopNotificationsMargin:I

    const p1, 0x7f07050d

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mSplitShadeTargetTopMargin:I

    const p1, 0x7f07049f

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mContainerTopPadding:I

    const p1, 0x7f07019e

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxBurnInPreventionOffsetX:I

    const p1, 0x7f0701a0

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxBurnInPreventionOffsetYClock:I

    return-void
.end method

.method public run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .locals 6

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPanelExpansion:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY(FF)I

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPanelExpansion:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUserSwitchPreferredY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    neg-int v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUserSwitchHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    check-cast v4, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-static {v3, v2, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mOverStretchAmount:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->userSwitchY:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY(FF)I

    move-result v2

    iput v2, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockYFullyDozing:I

    int-to-float v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY(FF)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mIsSplitShade:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mQsExpansion:F

    const v5, 0x3e99999a    # 0.3f

    div-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/MathUtils;->saturate(F)F

    move-result v4

    sub-float v4, v1, v4

    mul-float/2addr v2, v4

    :cond_0
    sget-object v4, Lcom/android/app/animation/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    check-cast v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v4, v2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-static {v2, v1, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    iput v2, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    if-eqz v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    int-to-float v0, v0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mOverStretchAmount:F

    add-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mIsSplitShade:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mSplitShadeTopNotificationsMargin:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUserSwitchHeight:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mCurrentBurnInOffsetY:F

    float-to-int v4, v4

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v0, v4

    :goto_0
    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    if-eqz v2, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mIsSplitShade:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY(FF)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUserSwitchHeight:I

    :goto_1
    add-int/2addr v0, v2

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY(FF)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    goto :goto_1

    :goto_2
    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingExpanded:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxBurnInPreventionOffsetX:I

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-static {v3, v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-float v0, v2

    const v2, 0x476a6000    # 60000.0f

    div-float/2addr v0, v2

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x43350000    # 181.0f

    invoke-static {v0, v2, v3}, Lcom/android/systemui/doze/util/BurnInHelperKt;->zigzag(FFF)F

    move-result v0

    const v2, 0x3f4ccccd    # 0.8f

    add-float/2addr v0, v2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    sub-float p0, v1, p0

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p0

    iput p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    return-void
.end method

.method public setup(IFIIIFIIILcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;)V
    .locals 0

    iget p8, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mContainerTopPadding:I

    invoke-static {p8, p4}, Ljava/lang/Math;->max(II)I

    move-result p8

    add-int/2addr p8, p1

    iput p8, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    sget p1, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->$r8$clinit:I

    const p1, 0x3f333333    # 0.7f

    sub-float/2addr p2, p1

    const p1, 0x3e99999a    # 0.3f

    div-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p8, 0x0

    invoke-static {p2, p8, p1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPanelExpansion:F

    iget p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mStatusViewBottomMargin:I

    add-int/2addr p3, p1

    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUserSwitchHeight:I

    iput p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUserSwitchPreferredY:I

    iput p6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    iput p8, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mOverStretchAmount:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    iput p7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    iput p8, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mQsExpansion:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mCutoutTopInset:I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mIsSplitShade:Z

    iput p8, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUdfpsTop:F

    iput p8, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockBottom:F

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mIsClockTopAligned:Z

    return-void
.end method
