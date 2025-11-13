.class public final Lcom/android/systemui/charging/WirelessChargingLayout;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

.field public mSizeAtProgressArray:[Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/charging/WirelessChargingLayout;->init(Landroid/content/Context;IIZLcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p5}, Lcom/android/systemui/charging/WirelessChargingLayout;->init(Landroid/content/Context;IIZLcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/charging/WirelessChargingLayout;->init(Landroid/content/Context;IIZLcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    return-void
.end method


# virtual methods
.method public final init(Landroid/content/Context;IIZLcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    if-eqz p4, :cond_1

    const v9, 0x7f1401e5

    goto :goto_1

    :cond_1
    const v9, 0x7f1401e6

    :goto_1
    new-instance v10, Landroid/view/ContextThemeWrapper;

    move-object/from16 v11, p1

    invoke-direct {v10, v11, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v9, 0x7f0d057c

    invoke-static {v10, v9, v0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v9, 0x7f0a0ed0

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x0

    const/high16 v12, 0x42c80000    # 100.0f

    if-eq v2, v7, :cond_2

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v7

    int-to-float v2, v2

    div-float/2addr v2, v12

    float-to-double v13, v2

    invoke-virtual {v7, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0b0123

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v13, v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0b0122

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-wide v15, v13

    int-to-long v12, v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0718c1

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v14, 0x7f0718c0

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v8, :cond_3

    const/high16 v17, 0x3f400000    # 0.75f

    goto :goto_2

    :cond_3
    move/from16 v17, v14

    :goto_2
    mul-float v7, v7, v17

    new-array v10, v4, [F

    aput v2, v10, v6

    aput v7, v10, v5

    const-string/jumbo v5, "textSize"

    invoke-static {v9, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v4, 0x0

    invoke-direct {v6, v4, v4, v4, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v10, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b0121

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move/from16 p3, v7

    int-to-long v6, v4

    invoke-virtual {v10, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v6, v4, [F

    fill-array-data v6, :array_0

    const-string v4, "alpha"

    invoke-static {v9, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v7, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v11, 0x7f0b0120

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-wide/from16 v18, v12

    int-to-long v11, v14

    invoke-virtual {v6, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b011f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-long v13, v11

    invoke-virtual {v6, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v11, 0x2

    new-array v13, v11, [F

    fill-array-data v13, :array_1

    invoke-static {v9, v4, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-wide/from16 v13, v18

    invoke-virtual {v9, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v9, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide v12, v15

    invoke-virtual {v9, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v15, 0x3

    new-array v11, v15, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v10, v11, v15

    const/4 v10, 0x1

    aput-object v6, v11, v10

    const/4 v6, 0x2

    aput-object v9, v11, v6

    invoke-virtual {v14, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isLargeScreen(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    const/high16 v6, 0x4c000000    # 3.3554432E7f

    filled-new-array {v15, v6}, [I

    move-result-object v11

    const-string v9, "backgroundColor"

    invoke-static {v0, v9, v11}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move-wide/from16 v20, v12

    const-wide/16 v11, 0x12c

    invoke-virtual {v10, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v10, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    filled-new-array {v6, v15}, [I

    move-result-object v6

    invoke-static {v0, v9, v6}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v9, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    if-ne v3, v9, :cond_4

    const-wide/16 v22, 0x5dc

    goto :goto_3

    :cond_4
    const-wide/16 v22, 0xbb8

    :goto_3
    sub-long v11, v22, v11

    invoke-virtual {v6, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v11, 0x2

    new-array v12, v11, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v10, v12, v11

    const/4 v10, 0x1

    aput-object v6, v12, v10

    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    :cond_5
    move-wide/from16 v20, v12

    :goto_4
    const v6, 0x7f0a0ed1

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    iput-object v6, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    invoke-virtual {v6, v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setupShader(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    iget-object v3, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x1010435

    invoke-static {v6, v3}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iget-object v6, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    iget-object v9, v6, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    const/4 v10, 0x0

    if-eqz v9, :cond_6

    goto :goto_5

    :cond_6
    move-object v9, v10

    :goto_5
    sget-object v11, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->ROUNDED_BOX:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    if-ne v9, v11, :cond_d

    const-wide/16 v11, 0xbb8

    iput-wide v11, v6, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->duration:J

    iget-object v6, v6, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz v6, :cond_7

    goto :goto_6

    :cond_7
    move-object v6, v10

    :goto_6
    const-string v9, "in_sparkle_strength"

    const v11, 0x3e6147ae    # 0.22f

    invoke-virtual {v6, v9, v11}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    iget-object v6, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    const/16 v9, 0x66

    invoke-virtual {v6, v3, v9}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setColor(II)V

    iget-object v3, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    iget-object v6, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz v6, :cond_8

    move-object v9, v6

    goto :goto_7

    :cond_8
    move-object v9, v10

    :goto_7
    iget-object v9, v9, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    const/4 v11, 0x0

    iput v11, v9, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    iput v11, v9, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    const v11, 0x3e4ccccd    # 0.2f

    iput v11, v9, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    const v12, 0x3ef0a3d7    # 0.47f

    iput v12, v9, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    if-eqz v6, :cond_9

    move-object v9, v6

    goto :goto_8

    :cond_9
    move-object v9, v10

    :goto_8
    iget-object v9, v9, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    const/4 v12, 0x0

    iput v12, v9, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    iput v12, v9, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    iput v11, v9, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    const/high16 v13, 0x3f800000    # 1.0f

    iput v13, v9, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    if-eqz v6, :cond_a

    move-object v9, v6

    goto :goto_9

    :cond_a
    move-object v9, v10

    :goto_9
    iget-object v9, v9, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    iput v12, v9, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    iput v12, v9, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    iput v12, v9, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    iput v11, v9, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    if-eqz v6, :cond_b

    goto :goto_a

    :cond_b
    move-object v6, v10

    :goto_a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz v3, :cond_c

    move-object v10, v3

    :cond_c
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_b

    :cond_d
    const-wide/16 v9, 0x5dc

    iput-wide v9, v6, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->duration:J

    const/16 v9, 0x73

    invoke-virtual {v6, v3, v9}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setColor(II)V

    :goto_b
    new-instance v3, Lcom/android/systemui/charging/WirelessChargingLayout$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/charging/WirelessChargingLayout$1;-><init>(Lcom/android/systemui/charging/WirelessChargingLayout;)V

    iget-object v6, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    invoke-virtual {v6, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    if-nez v8, :cond_e

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_e
    const v3, 0x7f0a09cf

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v8

    int-to-float v1, v1

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v1, v9

    float-to-double v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v8, 0x2

    new-array v9, v8, [F

    aput v2, v9, v6

    const/4 v2, 0x1

    aput p3, v9, v2

    invoke-static {v3, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v1, v1, v1, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0b0121

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v1, v8, [F

    fill-array-data v1, :array_2

    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0120

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-wide/from16 v8, v18

    int-to-long v10, v5

    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0b011f

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v12, v5

    invoke-virtual {v1, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v5, 0x2

    new-array v10, v5, [F

    fill-array-data v10, :array_3

    invoke-static {v3, v4, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v12, v20

    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v15, 0x3

    new-array v15, v15, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v15, v6

    const/4 v2, 0x1

    aput-object v1, v15, v2

    aput-object v3, v15, v5

    invoke-virtual {v10, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v1, 0x7f0a09ce

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    move/from16 v3, p3

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0, v6, v0, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-array v0, v5, [F

    fill-array-data v0, :array_4

    invoke-static {v1, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0120

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b011f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_5

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

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
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final onLayout(ZIIII)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    int-to-float v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, v3, v4

    int-to-float v6, v1

    mul-float/2addr v4, v6

    invoke-virtual {v2, v5, v4}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenter(FF)V

    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    iget-object v2, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    sget-object v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->ROUNDED_BOX:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v2, v5, :cond_3

    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mSizeAtProgressArray:[Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3ecccccd    # 0.4f

    const/4 v5, 0x0

    if-nez v0, :cond_1

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    new-instance v8, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    invoke-direct {v8, v5, v5, v5}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    new-instance v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    mul-float/2addr v3, v2

    mul-float/2addr v6, v2

    invoke-direct {v5, v1, v3, v6}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    new-instance v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    invoke-direct {v1, v7, v0, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    filled-new-array {v8, v5, v1}, [Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mSizeAtProgressArray:[Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    aget-object v8, v0, v8

    iput v5, v8, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->t:F

    iput v5, v8, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->width:F

    iput v5, v8, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->height:F

    const/4 v5, 0x1

    aget-object v0, v0, v5

    iput v1, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->t:F

    mul-float v1, v3, v2

    iput v1, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->width:F

    mul-float/2addr v2, v6

    iput v2, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->height:F

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mSizeAtProgressArray:[Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iput v7, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->t:F

    iput v0, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->width:F

    iput v0, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->height:F

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    iget-object v1, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mSizeAtProgressArray:[Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    iget-object v0, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz v0, :cond_2

    move-object v4, v0

    :cond_2
    iget-object v0, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    invoke-virtual {v0, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setSizeAtProgresses([Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;)V

    goto :goto_2

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    iget-object v1, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz v1, :cond_4

    move-object v4, v1

    :cond_4
    iget-object v1, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    invoke-direct {v2, v7, v0, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    iget-object v0, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->initialSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    filled-new-array {v0, v2}, [Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setSizeAtProgresses([Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;)V

    :cond_5
    :goto_2
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method
