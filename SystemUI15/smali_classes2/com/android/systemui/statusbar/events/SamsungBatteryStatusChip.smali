.class public final Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field public final background:Landroid/widget/FrameLayout;

.field public final batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final batteryContent:Landroid/widget/LinearLayout;

.field public final batteryContentSpaceEnd:Landroid/widget/Space;

.field public final batteryLevelProgress:Lcom/airbnb/lottie/LottieAnimationView;

.field public final batteryLevelProgressBg:Landroid/widget/ImageView;

.field public final batteryLevelText:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;

.field public final chargingIcon:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearImageView;

.field public final chargingIconContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const p2, 0x7f0d032b

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0166

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p1, 0x7f0a0165

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->background:Landroid/widget/FrameLayout;

    const p1, 0x7f0a0167

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryContent:Landroid/widget/LinearLayout;

    const p1, 0x7f0a027f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/events/BatteryStatusChipClearImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->chargingIcon:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearImageView;

    const p1, 0x7f0a0280

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->chargingIconContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0170

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelProgress:Lcom/airbnb/lottie/LottieAnimationView;

    const p1, 0x7f0a0172

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelText:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;

    const p1, 0x7f0a0171

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelProgressBg:Landroid/widget/ImageView;

    const p1, 0x7f0a0168

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Space;

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryContentSpaceEnd:Landroid/widget/Space;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    new-instance p1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$1;-><init>(Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static getSpringAnimation(Ljava/lang/Object;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFZ)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    if-eqz p4, :cond_0

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const p1, 0x3f35c28f    # 0.71f

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    const/high16 p1, 0x43480000    # 200.0f

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const p1, 0x3f59999a    # 0.85f

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    const/high16 p1, 0x43960000    # 300.0f

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    :goto_0
    if-eqz p4, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    if-eqz p4, :cond_2

    move p2, p3

    :cond_2
    float-to-double p1, p2

    iput-wide p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    iput-object p0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-object v0
.end method


# virtual methods
.method public final getBatteryBackgroundAnimator(FLandroid/graphics/Rect;ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->background:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setPivotX(F)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setPivotY(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p4, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setPivotX(F)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setPivotY(F)V

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_2

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p4

    goto :goto_2

    :cond_2
    move p4, v0

    :goto_2
    neg-int p4, p4

    goto :goto_3

    :cond_3
    iget-object p4, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p4

    goto :goto_3

    :cond_4
    move p4, v0

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    int-to-float p4, p4

    invoke-static {v1, v3, p4, v2, p3}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getSpringAnimation(Ljava/lang/Object;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFZ)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071478

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v1, v3

    div-float/2addr v1, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->background:Landroid/widget/FrameLayout;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v1, v5, p3}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getSpringAnimation(Ljava/lang/Object;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFZ)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071474

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr p2, v3

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->background:Landroid/widget/FrameLayout;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    invoke-static {p1, v3, p2, v5, p3}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getSpringAnimation(Ljava/lang/Object;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFZ)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    if-eqz p3, :cond_5

    move p2, v2

    goto :goto_4

    :cond_5
    move p2, v5

    :goto_4
    if-eqz p3, :cond_6

    move v2, v5

    :cond_6
    const/4 p3, 0x2

    new-array p3, p3, [F

    aput p2, p3, v0

    const/4 p2, 0x1

    aput v2, p3, p2

    invoke-static {p3}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v2, 0x12c

    invoke-virtual {p2, v2, v3}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance p3, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getBatteryBackgroundAnimator$alphaAnimation$1$1;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getBatteryBackgroundAnimator$alphaAnimation$1$1;-><init>(Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {p2, p3}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    new-instance p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    filled-new-array {p2, v1, p1, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether([Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getBatteryLevelTextAnimator(FLandroid/graphics/Rect;ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
    .locals 15

    move-object v0, p0

    move/from16 v1, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelText:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getBatteryMeterView()Lcom/android/systemui/battery/BatteryMeterView;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    if-eqz v5, :cond_2

    iget-boolean v8, v5, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->getBatteryLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->getTextBounds(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->getTextOriginX(Landroid/graphics/Rect;)F

    move-result v10

    iget v11, v5, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    int-to-float v11, v11

    div-float/2addr v11, v7

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v7

    add-float/2addr v12, v11

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    sub-float/2addr v12, v11

    iget-object v11, v5, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v11}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object v13

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v14, "my_MM"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->getTextBounds(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v9

    :cond_0
    iget-object v5, v5, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    new-instance v8, Landroid/graphics/Rect;

    int-to-float v11, v4

    div-float/2addr v5, v11

    sub-float v11, v10, v5

    float-to-int v11, v11

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/2addr v13, v4

    int-to-float v13, v13

    sub-float v13, v12, v13

    float-to-int v13, v13

    add-float/2addr v10, v5

    float-to-int v5, v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/2addr v9, v4

    int-to-float v9, v9

    add-float/2addr v12, v9

    float-to-int v9, v12

    invoke-direct {v8, v11, v13, v5, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    :cond_3
    move-object v8, v6

    :goto_0
    if-nez v8, :cond_4

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    :cond_4
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    const/4 v9, 0x0

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelText:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;

    iput-boolean v3, v5, Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;->isClear:Z

    goto :goto_3

    :cond_5
    iget-object v5, v0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelText:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;

    iput-boolean v2, v5, Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;->isClear:Z

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryContentSpaceEnd:Landroid/widget/Space;

    invoke-virtual {v5}, Landroid/widget/Space;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelText:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    if-eqz p4, :cond_6

    iget v5, v8, Landroid/graphics/Rect;->left:I

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v8

    int-to-float v5, v5

    div-float/2addr v5, v7

    goto :goto_1

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, p1

    iget v10, v8, Landroid/graphics/Rect;->left:I

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v8

    int-to-float v8, v10

    div-float/2addr v8, v7

    sub-float/2addr v5, v8

    :goto_1
    if-eqz p4, :cond_7

    sub-float/2addr v5, v6

    goto :goto_2

    :cond_7
    sub-float v5, v6, v5

    :goto_2
    iget-object v6, v0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelText:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;

    sget-object v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    invoke-static {v6, v7, v5, v9, v1}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getSpringAnimation(Ljava/lang/Object;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFZ)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v6

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const v7, 0x3f47ae14    # 0.78f

    mul-float/2addr v5, v7

    iget-object v7, v0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelText:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    div-float/2addr v5, v7

    div-float v5, v5, p1

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v1, :cond_8

    move v8, v5

    goto :goto_4

    :cond_8
    move v8, v7

    :goto_4
    if-eqz v1, :cond_9

    move v5, v7

    :cond_9
    new-array v10, v4, [F

    aput v8, v10, v3

    aput v5, v10, v2

    invoke-static {v10}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v10, 0x12c

    invoke-virtual {v5, v10, v11}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    new-instance v8, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getBatteryLevelTextAnimator$scaleAnimation$1$1;

    invoke-direct {v8, p0, v5}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getBatteryLevelTextAnimator$scaleAnimation$1$1;-><init>(Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v5, v8}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    if-eqz v1, :cond_a

    move v8, v9

    goto :goto_5

    :cond_a
    move v8, v7

    :goto_5
    if-eqz v1, :cond_b

    move v9, v7

    :cond_b
    new-array v1, v4, [F

    aput v8, v1, v3

    aput v9, v1, v2

    invoke-static {v1}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getBatteryLevelTextAnimator$alphaAnimation$1$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getBatteryLevelTextAnimator$alphaAnimation$1$1;-><init>(Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v1, v2}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether([Ljava/lang/Object;)V

    if-eqz v6, :cond_c

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether([Ljava/lang/Object;)V

    :cond_c
    return-object v0
.end method

.method public final getBatteryMeterView()Lcom/android/systemui/battery/BatteryMeterView;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a0163

    invoke-virtual {p0, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ERROR: "

    const-string v1, "SamsungBatteryStatusChip"

    invoke-static {v0, p0, v1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getChargingIconAnimator(FLandroid/graphics/Rect;ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->chargingIconContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setPivotX(F)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->chargingIcon:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearImageView;

    if-eqz p4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setPivotX(F)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setPivotY(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->chargingIcon:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearImageView;

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getBatteryMeterView()Lcom/android/systemui/battery/BatteryMeterView;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    if-eqz v4, :cond_2

    iget-object v6, v4, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    invoke-virtual {v6}, Lcom/android/systemui/battery/SamsungBatteryState;->shouldShowChargingIcon()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v4, v4, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->flagBlinkingNeeded:Z

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/events/BatteryStatusChipClearImageView;->isClear:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p3, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    if-eqz p3, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move v6, v3

    :goto_4
    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v4, v7, v0

    aput v6, v7, v1

    invoke-static {v7}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v6, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getChargingIconAnimator$alphaAnimation$1$1;

    invoke-direct {v6, p0, v0}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getChargingIconAnimator$alphaAnimation$1$1;-><init>(Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v0, v6}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getBatteryMeterView()Lcom/android/systemui/battery/BatteryMeterView;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v4, v6, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->getChargingIconBounds()Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_5

    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    :cond_6
    :goto_5
    if-nez v4, :cond_7

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    :cond_7
    if-eqz p3, :cond_a

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryContentSpaceEnd:Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/widget/Space;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelText:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v5

    add-float/2addr p2, p1

    if-eqz p4, :cond_8

    neg-float p2, p2

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->chargingIcon:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearImageView;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    if-eqz p4, :cond_9

    neg-float p2, p2

    :cond_9
    invoke-static {p1, v3, p2, v2, v1}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getSpringAnimation(Ljava/lang/Object;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFZ)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    goto :goto_8

    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryContentSpaceEnd:Landroid/widget/Space;

    invoke-virtual {v5}, Landroid/widget/Space;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelText:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    if-eqz p4, :cond_b

    iget p1, v4, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    goto :goto_6

    :cond_b
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p1

    iget p1, v4, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    sub-float p1, p2, p1

    :goto_6
    if-eqz p4, :cond_c

    int-to-float p2, v6

    sub-float/2addr p1, p2

    goto :goto_7

    :cond_c
    int-to-float p2, v6

    sub-float p1, p2, p1

    :goto_7
    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->chargingIconContainer:Landroid/widget/LinearLayout;

    sget-object p4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    invoke-static {p2, p4, v3, p1, v1}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getSpringAnimation(Ljava/lang/Object;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFZ)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    :goto_8
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p4, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->chargingIcon:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p2, p4

    iget-object p4, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->chargingIconContainer:Landroid/widget/LinearLayout;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-static {p4, v1, p2, v2, p3}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getSpringAnimation(Ljava/lang/Object;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFZ)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->chargingIcon:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p4, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->chargingIconContainer:Landroid/widget/LinearLayout;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    invoke-static {p0, v1, p4, v2, p3}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getSpringAnimation(Ljava/lang/Object;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFZ)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    new-instance p3, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p3}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    filled-new-array {v0, p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether([Ljava/lang/Object;)V

    return-object p3
.end method

.method public final getCombinedBackgroundAndChargingTextAnimator(ZLandroid/graphics/Rect;FZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071471

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071478

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07146f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->background:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    iget-object p4, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p4

    int-to-float v2, p4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget-object p4, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p4

    int-to-float p4, p4

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p4, v2

    invoke-virtual {v1, p4}, Landroid/widget/FrameLayout;->setPivotY(F)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p4, v1

    div-float/2addr p4, p3

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->background:Landroid/widget/FrameLayout;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const v3, 0x3f7851ec    # 0.97f

    invoke-static {v1, v2, p4, v3, p1}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getSpringAnimation(Ljava/lang/Object;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFZ)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p4

    new-instance v1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$2;-><init>(Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;)V

    invoke-virtual {p4, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    div-float/2addr p2, p3

    iget-object p3, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->background:Landroid/widget/FrameLayout;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p3, v1, p2, v2, p1}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getSpringAnimation(Ljava/lang/Object;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFZ)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p5, :cond_3

    if-eqz p1, :cond_2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    invoke-virtual {v1, p3}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v2, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$alpha$1$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$alpha$1$1;-><init>(Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v1, v2}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    goto :goto_3

    :cond_2
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    invoke-virtual {v1, p3}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v2, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$alpha$2$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$alpha$2$1;-><init>(Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v1, v2}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    if-eqz p1, :cond_4

    new-array v2, v0, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/util/animation/AnimationUtil;->Companion:Lcom/android/systemui/util/animation/AnimationUtil$Companion;

    invoke-virtual {v3, v1}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    invoke-virtual {v2, p3}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$alpha$3$1;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$alpha$3$1;-><init>(Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v2, v1}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    :goto_2
    move-object v1, v2

    goto :goto_3

    :cond_4
    new-array v2, v0, [F

    fill-array-data v2, :array_3

    invoke-static {v2}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/util/animation/AnimationUtil;->Companion:Lcom/android/systemui/util/animation/AnimationUtil$Companion;

    invoke-virtual {v3, v1}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    const-wide/16 v3, 0x226

    invoke-virtual {v2, v3, v4}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v2, p3}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$alpha$4$1;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$alpha$4$1;-><init>(Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v2, v1}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    goto :goto_2

    :goto_3
    new-array v0, v0, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    invoke-virtual {v0, p3}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance p3, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$batteryChipAlpha$1$1;

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$getCombinedBackgroundAndChargingTextAnimator$batteryChipAlpha$1$1;-><init>(Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v0, p3}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    new-instance p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    filled-new-array {p4, p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether([Ljava/lang/Object;)V

    if-nez p1, :cond_5

    if-nez p5, :cond_5

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether([Ljava/lang/Object;)V

    :cond_5
    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryContent:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->getBatteryMeterView()Lcom/android/systemui/battery/BatteryMeterView;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-static {p1, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/Collection;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    move v0, p2

    :cond_1
    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_2

    const p2, 0x7f080fdb

    goto :goto_1

    :cond_2
    const p2, 0x7f080fda

    :goto_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->background:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f060966

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const v1, 0x7f060965

    invoke-virtual {p3, v1}, Landroid/content/Context;->getColor(I)I

    move-result p3

    sget-object v1, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->sInstance:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, v0, p2, p3}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelProgressBg:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f06095e

    const v0, 0x7f06095f

    if-ltz p1, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, p3

    :goto_2
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-ltz p1, :cond_4

    move p3, v0

    :cond_4
    invoke-virtual {v1, p3}, Landroid/content/Context;->getColor(I)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->chargingIcon:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearImageView;

    iget-object p3, p1, Lcom/android/systemui/statusbar/events/BatteryStatusChipClearImageView;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelText:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public final setBoundsForAnimation(IIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p3, v0

    :goto_0
    add-int/2addr p2, p4

    int-to-float p2, p2

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p4

    sub-float v1, p2, v1

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p4

    add-float/2addr p1, p2

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    invoke-virtual {p0, v0, v1, p3, p1}, Landroid/widget/FrameLayout;->setLeftTopRightBottom(IIII)V

    return-void
.end method
