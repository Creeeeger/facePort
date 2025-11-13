.class public final Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;
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

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static startSplashAnimation(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iput v0, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    new-instance v2, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

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
.method public final startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 8

    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p5, 0x0

    invoke-virtual {p2, p5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p6, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p6, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0713c4

    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0713c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0713c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    invoke-virtual {p3, p5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p4, p5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0713d0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f0713ce

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    new-array v4, v3, [F

    aput p0, v4, p5

    aput p1, v4, v0

    const-string p0, "alpha"

    invoke-static {p3, p0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result v5

    new-array v6, v3, [F

    aput v5, v6, p5

    aput p1, v6, v0

    invoke-static {p4, p0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v0, [Landroid/animation/Animator;

    aput-object v4, v5, p5

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v4, v0, [Landroid/animation/Animator;

    aput-object p0, v4, p5

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x0

    if-eqz p7, :cond_1

    move-wide v6, v4

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x96

    :goto_0
    invoke-virtual {p1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p0

    int-to-float p6, p6

    new-array v6, v3, [F

    aput p0, v6, p5

    aput p6, v6, v0

    const-string/jumbo p0, "x"

    invoke-static {p2, p0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p6

    int-to-float v1, v1

    new-array v6, v3, [F

    aput p6, v6, p5

    aput v1, v6, v0

    invoke-static {p3, p0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result p6

    int-to-float v1, v2

    new-array v2, v3, [F

    aput p6, v2, p5

    aput v1, v2, v0

    invoke-static {p4, p0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p6, v0, [Landroid/animation/Animator;

    aput-object p2, p6, p5

    invoke-virtual {p4, p6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p2, v0, [Landroid/animation/Animator;

    aput-object p3, p2, p5

    invoke-virtual {p4, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p2, v0, [Landroid/animation/Animator;

    aput-object p0, p2, p5

    invoke-virtual {p4, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p7, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0xc8

    :goto_1
    invoke-virtual {p4, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p0, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e6147ae    # 0.22f

    const/high16 p3, 0x3e800000    # 0.25f

    const/4 p6, 0x0

    const/high16 p7, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p3, p6, p7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p4, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p2, v0, [Landroid/animation/Animator;

    aput-object p1, p2, p5

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p1, v0, [Landroid/animation/Animator;

    aput-object p4, p1, p5

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 18

    move-object/from16 v10, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const/4 v0, 0x1

    const/16 v1, 0x8

    move-object/from16 v7, p6

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v8, p7

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v10, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0713c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, v10, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0713ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, v10, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0713c8

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v9, 0x2

    move/from16 v12, p1

    if-ne v12, v9, :cond_0

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v10, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0713d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, v10, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0713cf

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v13

    new-array v14, v9, [F

    aput v13, v14, v11

    const/high16 v13, 0x3f000000    # 0.5f

    aput v13, v14, v0

    const-string v13, "alpha"

    invoke-static {v5, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    move-result v15

    new-array v0, v9, [F

    aput v15, v0, v11

    const v15, 0x3dcccccd    # 0.1f

    const/4 v9, 0x1

    aput v15, v0, v9

    invoke-static {v6, v13, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v15, v9, [Landroid/animation/Animator;

    aput-object v14, v15, v11

    invoke-virtual {v13, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v14, v9, [Landroid/animation/Animator;

    aput-object v0, v14, v11

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p8, :cond_1

    const-wide/16 v14, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v16, 0x64

    move-wide/from16 v14, v16

    :goto_0
    invoke-virtual {v13, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v0

    int-to-float v1, v1

    const/4 v9, 0x2

    new-array v14, v9, [F

    aput v0, v14, v11

    const/4 v0, 0x1

    aput v1, v14, v0

    const-string/jumbo v1, "x"

    invoke-static {v4, v1, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v15

    int-to-float v2, v2

    new-array v4, v9, [F

    aput v15, v4, v11

    aput v2, v4, v0

    invoke-static {v5, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getX()F

    move-result v4

    int-to-float v3, v3

    new-array v9, v9, [F

    aput v4, v9, v11

    aput v3, v9, v0

    invoke-static {v6, v1, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v0, [Landroid/animation/Animator;

    aput-object v14, v4, v11

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v4, v0, [Landroid/animation/Animator;

    aput-object v2, v4, v11

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v0, [Landroid/animation/Animator;

    aput-object v1, v2, v11

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p8, :cond_2

    const-wide/16 v14, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v14, 0xc8

    :goto_1
    invoke-virtual {v3, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v4, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/Animator;

    aput-object v3, v1, v11

    invoke-virtual {v14, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v13, v0, v11

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, v10, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mHandler:Landroid/os/Handler;

    iget-object v1, v10, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v13, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;

    const/4 v9, 0x1

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iput-object v13, v10, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$1;

    invoke-direct {v0, v10, v11}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$1;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;I)V

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 19

    move-object/from16 v10, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const/4 v11, 0x1

    const/16 v0, 0x8

    move-object/from16 v7, p6

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v8, p7

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v10, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0713c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v3, v2, :cond_0

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v10, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0713cd

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v9, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    move v9, v1

    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v13

    new-array v14, v2, [F

    aput v13, v14, v12

    aput v9, v14, v11

    const-string v9, "alpha"

    invoke-static {v5, v9, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    move-result v14

    new-array v15, v2, [F

    aput v14, v15, v12

    aput v1, v15, v11

    invoke-static {v6, v9, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v15, v11, [Landroid/animation/Animator;

    aput-object v13, v15, v12

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v13, v11, [Landroid/animation/Animator;

    aput-object v9, v13, v12

    invoke-virtual {v14, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p8, :cond_1

    const-wide/16 v11, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v17, 0x64

    move-wide/from16 v11, v17

    :goto_1
    invoke-virtual {v14, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v9

    int-to-float v0, v0

    new-array v11, v2, [F

    const/4 v12, 0x0

    aput v9, v11, v12

    const/4 v9, 0x1

    aput v0, v11, v9

    const-string/jumbo v0, "x"

    invoke-static {v4, v0, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v15, v9, [Landroid/animation/Animator;

    aput-object v11, v15, v12

    invoke-virtual {v13, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-ne v3, v2, :cond_2

    iget-object v11, v10, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0713d2

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v15

    int-to-float v11, v11

    new-array v2, v2, [F

    aput v15, v2, v12

    aput v11, v2, v9

    invoke-static {v5, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v9, [Landroid/animation/Animator;

    move-object v11, v13

    aput-object v0, v2, v12

    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_2
    move-object v11, v13

    :goto_2
    if-eqz p8, :cond_3

    move-object v12, v14

    const-wide/16 v13, 0x0

    goto :goto_3

    :cond_3
    const-wide/16 v15, 0xc8

    move-object v12, v14

    move-wide v13, v15

    :goto_3
    invoke-virtual {v11, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v9, 0x3e6147ae    # 0.22f

    const/high16 v13, 0x3e800000    # 0.25f

    invoke-direct {v0, v9, v13, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v10, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mHandler:Landroid/os/Handler;

    iget-object v1, v10, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v13, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;

    const/4 v9, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iput-object v13, v10, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v1, [Landroid/animation/Animator;

    aput-object v11, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$1;

    invoke-direct {v2, v10, v1}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$1;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;I)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p5, 0x4

    invoke-virtual {p2, p5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p6, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0713c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0713cd

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p3, p5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p4, p5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 p5, 0x0

    new-array v4, v3, [F

    aput p1, v4, v1

    aput p5, v4, v0

    const-string p1, "alpha"

    invoke-static {p3, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result v4

    new-array v5, v3, [F

    aput v4, v5, v1

    aput p5, v5, v0

    invoke-static {p4, p1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v0, [Landroid/animation/Animator;

    aput-object p3, v4, v1

    invoke-virtual {p4, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p3, v0, [Landroid/animation/Animator;

    aput-object p1, p3, v1

    invoke-virtual {p4, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x0

    if-eqz p7, :cond_1

    move-wide v6, v4

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x64

    :goto_0
    invoke-virtual {p4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p1

    int-to-float p3, v2

    new-array v2, v3, [F

    aput p1, v2, v1

    aput p3, v2, v0

    const-string/jumbo p1, "x"

    invoke-static {p2, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p7, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0xc8

    :goto_1
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/high16 p3, 0x3f800000    # 1.0f

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {p2, v2, v3, p5, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p2, v0, [Landroid/animation/Animator;

    aput-object p4, p2, v1

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p2, v0, [Landroid/animation/Animator;

    aput-object p1, p2, v1

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    if-nez p7, :cond_3

    invoke-static {p6}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->startSplashAnimation(Landroid/view/View;)V

    :cond_3
    return-void
.end method
