.class public final Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mIconRunnable:Ljava/lang/Runnable;

.field public final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_0

    neg-float v0, p1

    add-float/2addr v0, p2

    :cond_0
    const-string/jumbo p2, "translationX"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    invoke-static {p0, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public static startSplashAnimation(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iput v0, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    new-instance v2, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x43960000    # 300.0f

    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const v2, 0x3f147ae1    # 0.58f

    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object p0, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput v0, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const/4 p0, 0x1

    iput-boolean p0, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method


# virtual methods
.method public final startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x8

    move-object/from16 v7, p6

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v8, p7

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0713c4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0713c9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v10, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0713c7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->isSpeakerType(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v11, p5

    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0713d0

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0713ce

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v6, 0x3f000000    # 0.5f

    new-array v11, v4, [F

    aput v0, v11, v7

    aput v6, v11, v5

    const-string v0, "alpha"

    invoke-static {v2, v0, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v12

    new-array v13, v4, [F

    aput v12, v13, v7

    aput v6, v13, v5

    invoke-static {v3, v0, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v12, v5, [Landroid/animation/Animator;

    aput-object v11, v12, v7

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v11, v5, [Landroid/animation/Animator;

    aput-object v0, v11, v7

    invoke-virtual {v6, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v11, 0x0

    if-eqz p8, :cond_1

    move-wide v13, v11

    goto :goto_0

    :cond_1
    const-wide/16 v13, 0x96

    :goto_0
    invoke-virtual {v6, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v0

    int-to-float v8, v8

    new-array v13, v4, [F

    aput v0, v13, v7

    aput v8, v13, v5

    const-string/jumbo v0, "x"

    invoke-static {v1, v0, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v8

    int-to-float v9, v9

    new-array v13, v4, [F

    aput v8, v13, v7

    aput v9, v13, v5

    invoke-static {v2, v0, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v8

    int-to-float v9, v10

    new-array v4, v4, [F

    aput v8, v4, v7

    aput v9, v4, v5

    invoke-static {v3, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v5, [Landroid/animation/Animator;

    aput-object v1, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v5, [Landroid/animation/Animator;

    aput-object v2, v1, v7

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v5, [Landroid/animation/Animator;

    aput-object v0, v1, v7

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p8, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v11, 0xc8

    :goto_1
    invoke-virtual {v3, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v4, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v5, [Landroid/animation/Animator;

    aput-object v6, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v5, [Landroid/animation/Animator;

    aput-object v3, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x8

    move-object/from16 v8, p7

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v9, p8

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v11, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0713c5

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v7, v11, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0713ca

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v10, v11, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0713c8

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->isSpeakerType(I)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v13, p6

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v11, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0713d1

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v2, v11, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0713cf

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    goto :goto_0

    :cond_0
    move-object/from16 v13, p6

    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v2

    new-array v14, v0, [F

    aput v2, v14, v12

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v14, v1

    const-string v2, "alpha"

    invoke-static {v5, v2, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    move-result v15

    new-array v1, v0, [F

    aput v15, v1, v12

    const v15, 0x3dcccccd    # 0.1f

    const/4 v0, 0x1

    aput v15, v1, v0

    invoke-static {v6, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v15, v0, [Landroid/animation/Animator;

    aput-object v14, v15, v12

    invoke-virtual {v2, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v14, v0, [Landroid/animation/Animator;

    aput-object v1, v14, v12

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p9, :cond_1

    const-wide/16 v14, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v14, 0x64

    :goto_1
    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v14, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v14}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v14

    int-to-float v3, v3

    const/4 v15, 0x2

    new-array v0, v15, [F

    aput v14, v0, v12

    const/4 v1, 0x1

    aput v3, v0, v1

    const-string/jumbo v3, "x"

    invoke-static {v4, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v14

    int-to-float v7, v7

    new-array v4, v15, [F

    aput v14, v4, v12

    aput v7, v4, v1

    invoke-static {v5, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getX()F

    move-result v7

    int-to-float v10, v10

    new-array v14, v15, [F

    aput v7, v14, v12

    aput v10, v14, v1

    invoke-static {v6, v3, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v10, v1, [Landroid/animation/Animator;

    aput-object v0, v10, v12

    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v1, [Landroid/animation/Animator;

    aput-object v4, v0, v12

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v1, [Landroid/animation/Animator;

    aput-object v3, v0, v12

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p9, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0xc8

    :goto_2
    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/Animator;

    aput-object v7, v1, v12

    invoke-virtual {v14, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v2, v0, v12

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, v11, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mHandler:Landroid/os/Handler;

    iget-object v1, v11, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v15, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$$ExternalSyntheticLambda1;

    const/4 v10, 0x1

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iput-object v15, v11, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$1;

    invoke-direct {v0, v11, v12}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$1;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;I)V

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const/4 v0, 0x2

    const/4 v12, 0x1

    const/16 v1, 0x8

    move-object/from16 v8, p7

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v9, p8

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v11, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0713c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->isSpeakerType(I)Z

    move-result v3

    const/4 v7, 0x0

    move-object/from16 v10, p6

    if-eqz v3, :cond_0

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v11, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0713cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v1, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v3

    new-array v14, v0, [F

    aput v3, v14, v13

    aput v1, v14, v12

    const-string v1, "alpha"

    invoke-static {v5, v1, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    move-result v14

    new-array v15, v0, [F

    aput v14, v15, v13

    aput v7, v15, v12

    invoke-static {v6, v1, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v15, v12, [Landroid/animation/Animator;

    aput-object v3, v15, v13

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v3, v12, [Landroid/animation/Animator;

    aput-object v1, v3, v13

    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v15, 0x0

    if-eqz p9, :cond_1

    move-wide v7, v15

    goto :goto_1

    :cond_1
    const-wide/16 v17, 0x64

    move-wide/from16 v7, v17

    :goto_1
    invoke-virtual {v14, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v3

    int-to-float v2, v2

    new-array v7, v0, [F

    aput v3, v7, v13

    aput v2, v7, v12

    const-string/jumbo v2, "x"

    invoke-static {v4, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v7, v12, [Landroid/animation/Animator;

    aput-object v3, v7, v13

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->isSpeakerType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v11, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0713d2

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v7

    int-to-float v3, v3

    new-array v0, v0, [F

    aput v7, v0, v13

    aput v3, v0, v12

    invoke-static {v5, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v12, [Landroid/animation/Animator;

    aput-object v0, v2, v13

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2
    if-eqz p9, :cond_3

    :goto_2
    move-wide v2, v15

    goto :goto_3

    :cond_3
    const-wide/16 v15, 0xc8

    goto :goto_2

    :goto_3
    invoke-virtual {v8, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v7, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    invoke-direct {v0, v3, v7, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v11, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mHandler:Landroid/os/Handler;

    iget-object v1, v11, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v15, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$$ExternalSyntheticLambda1;

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v17, v8

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iput-object v15, v11, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v12, [Landroid/animation/Animator;

    aput-object v14, v1, v13

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v12, [Landroid/animation/Animator;

    aput-object v17, v1, v13

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$1;

    invoke-direct {v1, v11, v12}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$1;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final startModeMuteChangeAnimation(Landroid/view/View;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, v0

    const/4 v1, 0x1

    aput v2, v3, v1

    const-string/jumbo v2, "x"

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e6147ae    # 0.22f

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-direct {v2, v5, v6, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p1, v1, v0

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    new-instance p1, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$3;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$3;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;Landroid/view/View;)V

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public final startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v7, p6

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v7, 0x4

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v8, p7

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0713c6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->isSpeakerType(I)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v9, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0713cd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/16 v10, 0x8

    move-object/from16 v11, p5

    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    move-result v7

    const/4 v10, 0x0

    new-array v11, v4, [F

    aput v7, v11, v6

    aput v10, v11, v5

    const-string v7, "alpha"

    invoke-static {v2, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v11

    new-array v12, v4, [F

    aput v11, v12, v6

    aput v10, v12, v5

    invoke-static {v3, v7, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v11, v5, [Landroid/animation/Animator;

    aput-object v2, v11, v6

    invoke-virtual {v7, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v3, v2, v6

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x0

    if-eqz p8, :cond_1

    move-wide v11, v2

    goto :goto_0

    :cond_1
    const-wide/16 v11, 0x64

    :goto_0
    invoke-virtual {v7, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v11}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v11

    int-to-float v9, v9

    new-array v4, v4, [F

    aput v11, v4, v6

    aput v9, v4, v5

    const-string/jumbo v9, "x"

    invoke-static {p2, v9, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-eqz p8, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0xc8

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e6147ae    # 0.22f

    const/high16 v9, 0x3e800000    # 0.25f

    invoke-direct {v2, v4, v9, v10, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v7, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    if-nez p8, :cond_3

    invoke-static/range {p7 .. p7}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startSplashAnimation(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final startSoundAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    const/4 v0, 0x1

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0713cd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0713d2

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v7, v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0713cf

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v9, 0x2

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    if-ne v3, v9, :cond_0

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0713cc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0713d1

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v7, v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x3dcccccd    # 0.1f

    const/16 v13, 0x96

    goto :goto_2

    :cond_0
    if-nez p5, :cond_2

    const/4 v8, 0x3

    if-ne v3, v8, :cond_1

    goto :goto_0

    :cond_1
    const v10, 0x3e99999a    # 0.3f

    const/16 v13, 0x64

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0713cb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0713d0

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v7, v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0713ce

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    if-eqz p5, :cond_3

    move v13, v11

    goto :goto_1

    :cond_3
    const/16 v8, 0xfa

    move v13, v8

    :goto_1
    move v8, v10

    :goto_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    move-result v14

    new-array v15, v9, [F

    aput v14, v15, v11

    aput v10, v15, v0

    const-string v10, "alpha"

    invoke-static {v5, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v15

    new-array v12, v9, [F

    aput v15, v12, v11

    aput v8, v12, v0

    invoke-static {v6, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v12, v0, [Landroid/animation/Animator;

    aput-object v14, v12, v11

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v12, v0, [Landroid/animation/Animator;

    aput-object v8, v12, v11

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    int-to-long v12, v13

    invoke-virtual {v10, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v8

    int-to-float v2, v2

    new-array v14, v9, [F

    aput v8, v14, v11

    aput v2, v14, v0

    const-string/jumbo v2, "x"

    move-object/from16 v8, p2

    invoke-static {v8, v2, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v15

    int-to-float v4, v4

    new-array v1, v9, [F

    aput v15, v1, v11

    aput v4, v1, v0

    invoke-static {v5, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v15, v0, [Landroid/animation/Animator;

    aput-object v14, v15, v11

    invoke-virtual {v4, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v14, v0, [Landroid/animation/Animator;

    aput-object v1, v14, v11

    invoke-virtual {v4, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-nez p5, :cond_4

    if-eq v3, v0, :cond_5

    :cond_4
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v1

    int-to-float v7, v7

    new-array v9, v9, [F

    aput v1, v9, v11

    aput v7, v9, v0

    invoke-static {v6, v2, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v0, [Landroid/animation/Animator;

    aput-object v1, v2, v11

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_5
    invoke-virtual {v4, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v7, 0x3e6147ae    # 0.22f

    const/high16 v9, 0x3e800000    # 0.25f

    const/4 v12, 0x0

    invoke-direct {v1, v7, v9, v12, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v0, [Landroid/animation/Animator;

    aput-object v4, v1, v11

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v10, v0, v11

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v9, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;ZILandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v7, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final startVibrationAnimation(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0713d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0713d4

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    neg-float v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x3c

    invoke-static {p1, v2, v1, v3}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v3

    sub-float v4, v0, p0

    const/16 v5, 0x50

    invoke-static {p1, v1, v4, v5}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr p0, v5

    sub-float/2addr v0, p0

    neg-float p0, v0

    const/16 v0, 0x64

    invoke-static {p1, v4, p0, v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v0

    const/16 v4, 0x78

    invoke-static {p1, p0, v2, v4}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
