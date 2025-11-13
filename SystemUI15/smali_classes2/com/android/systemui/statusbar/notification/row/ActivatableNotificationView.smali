.class public abstract Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
.super Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnimationTranslationY:F

.field public mAppearAnimationFraction:F

.field public mAppearAnimationTranslation:F

.field public mAppearAnimator:Landroid/animation/ValueAnimator;

.field public mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

.field public mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

.field public mBgTint:I

.field public mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

.field public mCurrentBackgroundTint:I

.field public mDimmed:Z

.field public mDismissed:Z

.field public mDrawingAppearAnimation:Z

.field public mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

.field public mIsBelowSpeedBump:Z

.field public mIsHeadsUpAnimation:Z

.field public mLastActionUpTime:J

.field public mNormalColor:I

.field public mNormalRippleColor:I

.field public final mOnDetachResetRoundness:Ljava/util/Set;

.field public mOverrideAmount:F

.field public mOverrideTint:I

.field public mRefocusOnDismiss:Z

.field public mShadowHidden:Z

.field public mStartTint:I

.field public mTargetPoint:Landroid/graphics/Point;

.field public mTargetTint:I

.field public mTintedRippleColor:I

.field public mTouchHandler:Lcom/android/systemui/Gefingerpoken;


# direct methods
.method public static -$$Nest$mgetCujType(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)I
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsHeadsUpAnimation:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/16 p0, 0xc

    goto :goto_0

    :cond_0
    const/16 p0, 0xd

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/16 p0, 0xe

    goto :goto_0

    :cond_2
    const/16 p0, 0xf

    :goto_0
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOnDetachResetRoundness:Ljava/util/Set;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateColors$1()V

    return-void
.end method


# virtual methods
.method public final applyGradientBackground(IIZ)V
    .locals 14

    move-object v0, p0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    instance-of v3, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_3

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils;

    iget-object v7, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz p3, :cond_2

    if-eqz v3, :cond_2

    move v13, v4

    goto :goto_1

    :cond_2
    move v13, v5

    :goto_1
    iget v10, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipBackground:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    move v8, p1

    move/from16 v9, p2

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils;->addGradientBackground(Landroid/content/Context;IIILandroid/graphics/drawable/Drawable;ZZ)V

    :cond_3
    return-void
.end method

.method public final applyHeadsUpBackground(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06016d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p1

    const/16 v1, 0xff

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06053e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v1, v0, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    :cond_0
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f05008a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060579

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v1, v0, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080d36

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    filled-new-array {v0, v0}, [I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTintedRippleColor:I

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalRippleColor:I

    :goto_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mRippleColor:Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mRippleColor:Ljava/lang/Integer;

    :goto_1
    return-void
.end method

.method public applyRoundnessAndInvalidate()V
    .locals 8

    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationsImprovedHunAnimation;->$r8$clinit:I

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopCornerRadius()F

    move-result v0

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomCornerRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mCornerRadii:[F

    const/4 v4, 0x0

    aget v5, v3, v4

    cmpl-float v5, v0, v5

    const/4 v6, 0x4

    if-nez v5, :cond_0

    aget v5, v3, v6

    cmpl-float v5, v1, v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomIsRounded:Z

    aput v0, v3, v4

    aput v0, v3, v7

    const/4 v4, 0x2

    aput v0, v3, v4

    const/4 v4, 0x3

    aput v0, v3, v4

    aput v1, v3, v6

    const/4 v0, 0x5

    aput v1, v3, v0

    const/4 v0, 0x6

    aput v1, v3, v0

    const/4 v0, 0x7

    aput v1, v3, v0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->updateBackgroundRadii()V

    :goto_1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundnessAndInvalidate()V

    return-void
.end method

.method public final calculateBgColor(ZZ)I
    .locals 3

    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lnoticolorpicker/NotificationColorPicker;->isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    return p0

    :cond_0
    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideTint:I

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result p1

    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideTint:I

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideAmount:F

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(FII)I

    move-result p0

    return p0

    :cond_1
    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    if-eqz p1, :cond_2

    return p1

    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalColor:I

    return p0
.end method

.method public childNeedsClipping(Landroid/view/View;)Z
    .locals 0

    instance-of p1, p1, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->isClippingNeeded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    sget-object v1, Lcom/android/systemui/shade/TouchLogger;->Companion:Lcom/android/systemui/shade/TouchLogger$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, p0}, Lcom/android/systemui/shade/TouchLogger$Companion;->logDispatchTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    return p0
.end method

.method public final drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final enableAppearDrawing(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->resetAllContentAlphas()V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->applyRoundnessAndInvalidate()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public final getBottomCornerRadius()F
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationsImprovedHunAnimation;->$r8$clinit:I

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomCornerRadius()F

    move-result p0

    return p0
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method public getHeadsUpHeightWithoutHeader()I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getTopCornerRadius()F
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationsImprovedHunAnimation;->$r8$clinit:I

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopCornerRadius()F

    move-result p0

    return p0
.end method

.method public hideBackground()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final initBackground()V
    .locals 6

    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput-boolean v2, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hasGradient:Z

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080d36

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v3, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v3}, Lnoticolorpicker/NotificationColorPicker;->getNotificationBgColor$1()I

    move-result v4

    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v5, :cond_2

    invoke-static {v0}, Lnoticolorpicker/NotificationColorPicker;->isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lnoticolorpicker/NotificationColorPicker;->getNotificationDefaultBgColor()I

    move-result v4

    :cond_2
    const v3, 0x7f0604fd

    if-eqz v0, :cond_3

    invoke-static {v0}, Lnoticolorpicker/NotificationColorPicker;->isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v4

    :cond_3
    instance-of v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v4

    :cond_4
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    filled-new-array {v4, v4}, [I

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/RippleDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateCurrentBackgroundDimmedAlpha()V

    return-void
.end method

.method public onAppearAnimationFinished(Z)V
    .locals 0

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOnDetachResetRoundness:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOnDetachResetRoundness:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/SourceType;

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundnessReset(Lcom/android/systemui/statusbar/notification/SourceType;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOnDetachResetRoundness:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0142

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const v0, 0x7f0a043b

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mShadowHidden:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initBackground()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint()V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    const v1, 0x3f333333    # 0.7f

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->applyRoundnessAndInvalidate()V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTouchHandler:Lcom/android/systemui/Gefingerpoken;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/systemui/Gefingerpoken;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    return-void
.end method

.method public final performAddAnimation(JZJ)V
    .locals 11

    move-object v0, p0

    move v1, p3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->enableAppearDrawing(Z)V

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsHeadsUpAnimation:Z

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    sget-object v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;->BOTTOM:Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startAppearAnimation(FJJLandroid/animation/AnimatorListenerAdapter;Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public performRemoveAnimation(FJJLandroid/animation/AnimatorListenerAdapter;Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)J
    .locals 11

    move-object v0, p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->enableAppearDrawing(Z)V

    move/from16 v1, p10

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsHeadsUpAnimation:Z

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v1, :cond_0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p4

    move-wide v4, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startAppearAnimation(FJJLandroid/animation/AnimatorListenerAdapter;Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    goto :goto_0

    :cond_0
    if-eqz p8, :cond_1

    invoke-interface/range {p8 .. p8}, Ljava/lang/Runnable;->run()V

    :cond_1
    if-eqz p9, :cond_2

    invoke-interface/range {p9 .. p9}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public resetAllContentAlphas()V
    .locals 0

    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setActualHeight(IZ)V

    div-int/lit8 p2, p1, 0x2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setPivotY(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualHeight:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

.method public setBackgroundTintColor(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentBackgroundTint:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentBackgroundTint:I

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalColor:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mTintColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public final setBelowSpeedBump(Z)V
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint()V

    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setClipBottomAmount(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipBottomAmount:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setClipTopAmount(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipTopAmount:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setDimmed(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnoticolorpicker/NotificationColorPicker;

    instance-of v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v1, p1}, Lnoticolorpicker/NotificationColorPicker;->updateAllTextViewColors(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    invoke-static {v1}, Lnoticolorpicker/NotificationColorPicker;->isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundColors()V

    :cond_1
    instance-of p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundColors()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateCurrentBackgroundDimmedAlpha()V

    :goto_0
    return-void
.end method

.method public setFakeShadowIntensity(IFFI)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mShadowHidden:Z

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mShadowHidden:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result p0

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr p0, v2

    mul-float/2addr p0, p2

    cmpl-float p2, p0, v1

    if-nez p2, :cond_2

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget p2, v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mShadowMinHeight:I

    int-to-float p2, p2

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationZ(F)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    int-to-float p2, p4

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget p0, v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mOutlineAlpha:F

    cmpl-float p0, p3, p0

    if-eqz p0, :cond_3

    iput p3, v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mOutlineAlpha:F

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final startAppearAnimation(FJJLandroid/animation/AnimatorListenerAdapter;Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p10

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget v5, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    iput v5, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAnimationTranslationY:F

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget v5, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v5, v5, v7

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v5, :cond_2

    if-eqz v2, :cond_1

    iput v7, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    iget v5, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAnimationTranslationY:F

    iput v5, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    goto :goto_0

    :cond_1
    iput v8, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    iput v7, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    sget-object v5, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v5, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    move v5, v8

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    iput-object v5, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    move v5, v7

    :goto_1
    sget v9, Lcom/android/systemui/statusbar/notification/shared/NotificationHeadsUpCycling;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAvalancheThrottleHun()V

    iget v9, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    new-array v10, v4, [F

    aput v9, v10, v3

    const/4 v9, 0x1

    aput v5, v10, v9

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    sget v10, Lcom/android/systemui/statusbar/notification/shared/NotificationsImprovedHunAnimation;->$r8$clinit:I

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    move-wide/from16 v10, p4

    long-to-float v10, v10

    iget v11, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v10

    float-to-long v10, v5

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$$ExternalSyntheticLambda0;

    move-object/from16 v10, p7

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz v1, :cond_4

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    iget v1, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    sget-object v5, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    const v9, 0x3f333333    # 0.7f

    invoke-static {v1, v9, v8}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    const v10, 0x3e99999a    # 0.3f

    sub-float/2addr v1, v9

    div-float/2addr v1, v10

    check-cast v5, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v9

    if-eqz v9, :cond_7

    cmpl-float v9, v1, v7

    if-eqz v9, :cond_6

    cmpl-float v9, v1, v8

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :cond_6
    :goto_2
    invoke-virtual {v5, v3, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_7
    invoke-virtual {v5, v1}, Landroid/view/View;->setAlpha(F)V

    cmpl-float v1, v1, v8

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->resetAllContentAlphas()V

    :cond_8
    invoke-static {}, Lcom/android/systemui/Flags;->notificationAvalancheThrottleHun()V

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;->BOTTOM:Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

    iget v3, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float v4, v8, v3

    iget v5, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float/2addr v4, v5

    iput v4, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    iget v5, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v6, v5

    mul-float/2addr v3, v6

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTargetPoint:Landroid/graphics/Point;

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v3, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float/2addr v8, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTargetPoint:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v7, v4

    mul-float/2addr v7, v8

    iget v9, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAnimationTranslationY:F

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v10, v3

    invoke-static {v9, v10, v8, v9}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v9

    int-to-float v10, v1

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, v8

    sub-float/2addr v10, v1

    sub-int/2addr v5, v3

    int-to-float v1, v5

    mul-float/2addr v1, v8

    sub-float/2addr v6, v1

    invoke-virtual {p0, v7, v9, v10, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setOutlineRect(FFFF)V

    goto :goto_3

    :cond_9
    sget-object v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;->TOP:Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

    if-ne v1, v5, :cond_a

    sub-float v1, v6, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v7, v1, v3, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setOutlineRect(FFFF)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v5, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v3, v5

    invoke-virtual {p0, v7, v4, v1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setOutlineRect(FFFF)V

    :goto_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    invoke-direct {v3, p0, v5, v2, v4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Ljava/lang/Runnable;ZLjava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Landroid/animation/ValueAnimator;)V

    move-wide v0, p2

    invoke-virtual {v2, v3, p2, p3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public final updateBackground()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->hideBackground()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isSummaryWithChildren()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateBackgroundColors()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateColors$1()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initBackground()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint()V

    return-void
.end method

.method public updateBackgroundTint()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint(Z)V

    return-void
.end method

.method public final updateBackgroundTint(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTintedRippleColor:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalRippleColor:I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v3, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mRippleColor:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mRippleColor:Ljava/lang/Integer;

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result v0

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBackgroundTintColor(I)V

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mCurrentBackgroundTint:I

    if-eq v0, p1, :cond_4

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mStartTint:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTargetTint:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final updateColors$1()V
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v0}, Lnoticolorpicker/NotificationColorPicker;->getNotificationBgColor$1()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalColor:I

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f060506

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTintedRippleColor:I

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f060507

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mNormalRippleColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideTint:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOverrideAmount:F

    return-void
.end method

.method public final updateCurrentBackgroundDimmedAlpha()V
    .locals 3

    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInsignificant()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateInsignificantAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateInsignificantAlpha(F)V

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnoticolorpicker/NotificationColorPicker;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lnoticolorpicker/NotificationColorPicker;->isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getLockNoticardOpacity()I

    move-result v0

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz p0, :cond_3

    float-to-int p0, v0

    goto :goto_1

    :cond_3
    iget p0, v1, Lnoticolorpicker/NotificationColorPicker;->mCustomedAlpha:I

    :goto_1
    iput p0, v2, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDrawableAlpha:I

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_2
    return-void
.end method

.method public final updateInsignificantAlpha(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnoticolorpicker/NotificationColorPicker;

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lnoticolorpicker/NotificationColorPicker;->isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lnoticolorpicker/NotificationColorPicker;->isDarkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x38

    goto :goto_0

    :cond_2
    const/16 v1, 0x66

    :goto_0
    int-to-float v1, v1

    iget v0, v0, Lnoticolorpicker/NotificationColorPicker;->mCustomedAlpha:I

    int-to-float v0, v0

    invoke-static {v1, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDrawableAlpha:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    return-void
.end method
