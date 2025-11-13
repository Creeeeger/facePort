.class public Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;
.super Ljava/lang/Object;
.source "SecVolumeIconMotion.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIconRunnable:Ljava/lang/Runnable;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public static synthetic $r8$lambda$Fpx-646TFTD5Dcwr4hFOS32cC7Q(Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->lambda$startMinAnimation$1(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZPhkq6bEiVrkCtR5ta3RJ8hnNzE(Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->lambda$startMidAnimation$0(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zq9a2beq72h2zOyLQyqTJHOn8OI(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->lambda$startSplashAnimation$2(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconRunnable(Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;
    .locals 1

    const/4 p0, 0x0

    cmpl-float v0, p3, p0

    if-eqz v0, :cond_0

    neg-float p0, p2

    add-float/2addr p0, p3

    :cond_0
    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 v0, 0x0

    aput p2, p3, v0

    const/4 p2, 0x1

    aput p0, p3, p2

    const-string p0, "translationX"

    .line 311
    invoke-static {p1, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p4

    .line 312
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 313
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private synthetic lambda$startMidAnimation$0(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 10

    move v2, p1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 125
    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq v2, v0, :cond_1

    if-nez v2, :cond_2

    :cond_1
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 127
    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$startMinAnimation$1(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 10

    move v2, p1

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 177
    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 175
    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static synthetic lambda$startSplashAnimation$2(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/4 p1, 0x0

    cmpl-float p2, p3, p1

    if-nez p2, :cond_0

    .line 234
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 235
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/16 v4, 0x8

    move-object/from16 v5, p6

    .line 44
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x0

    .line 45
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v6, p7

    .line 46
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v6, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/settings/R$dimen;->volume_media_icon_note_max_x:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 48
    iget-object v7, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/settings/R$dimen;->volume_media_icon_wave_s_max_x:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 49
    iget-object v8, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/android/settings/R$dimen;->volume_media_icon_wave_l_max_x:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v9, 0x2

    move/from16 v10, p1

    if-ne v10, v9, :cond_0

    move-object/from16 v10, p5

    .line 53
    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 55
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/settings/R$dimen;->volume_sound_icon_wave_s_max_x:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 57
    iget-object v0, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$dimen;->volume_sound_icon_wave_l_max_x:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :cond_0
    new-array v0, v9, [F

    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v0, v5

    const/4 v4, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    aput v10, v0, v4

    const-string v11, "alpha"

    invoke-static {v2, v11, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v12, v9, [F

    .line 60
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v13

    aput v13, v12, v5

    aput v10, v12, v4

    invoke-static {v3, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 61
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v12, v4, [Landroid/animation/Animator;

    aput-object v0, v12, v5

    .line 62
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v4, [Landroid/animation/Animator;

    aput-object v10, v0, v5

    .line 63
    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v12, 0x0

    if-eqz p8, :cond_1

    move-wide v14, v12

    goto :goto_0

    :cond_1
    const-wide/16 v14, 0x96

    .line 64
    :goto_0
    invoke-virtual {v11, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 65
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v9, [F

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v10

    aput v10, v0, v5

    int-to-float v6, v6

    aput v6, v0, v4

    const-string v6, "x"

    invoke-static {v1, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v9, [F

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v10

    aput v10, v1, v5

    int-to-float v7, v7

    aput v7, v1, v4

    invoke-static {v2, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v9, [F

    .line 69
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v2, v5

    int-to-float v7, v8

    aput v7, v2, v4

    invoke-static {v3, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 71
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v6, v4, [Landroid/animation/Animator;

    aput-object v0, v6, v5

    .line 72
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v4, [Landroid/animation/Animator;

    aput-object v1, v0, v5

    .line 73
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v4, [Landroid/animation/Animator;

    aput-object v2, v0, v5

    .line 74
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p8, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v12, 0xc8

    .line 75
    :goto_1
    invoke-virtual {v3, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 76
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v4, [Landroid/animation/Animator;

    aput-object v11, v1, v5

    .line 79
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v4, [Landroid/animation/Animator;

    aput-object v3, v1, v5

    .line 80
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 81
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 22

    move-object/from16 v10, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const/16 v0, 0x8

    move-object/from16 v8, p7

    .line 85
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v9, p8

    .line 87
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v2, v10, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$dimen;->volume_media_icon_note_mid_x:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 89
    iget-object v3, v10, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/settings/R$dimen;->volume_media_icon_wave_s_mid_x:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 90
    iget-object v7, v10, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/android/settings/R$dimen;->volume_media_icon_wave_l_mid_x:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v11, 0x2

    move/from16 v12, p1

    move-object/from16 v13, p6

    if-ne v12, v11, :cond_0

    .line 94
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, v10, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$dimen;->volume_sound_icon_wave_s_mid_x:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 98
    iget-object v0, v10, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/settings/R$dimen;->volume_sound_icon_wave_l_mid_x:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :cond_0
    new-array v0, v11, [F

    .line 100
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v14

    aput v14, v0, v1

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    aput v15, v0, v14

    const-string v15, "alpha"

    invoke-static {v5, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v14, v11, [F

    .line 101
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    move-result v17

    aput v17, v14, v1

    const v17, 0x3dcccccd    # 0.1f

    const/4 v11, 0x1

    aput v17, v14, v11

    invoke-static {v6, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 102
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v8, v11, [Landroid/animation/Animator;

    aput-object v0, v8, v1

    .line 103
    invoke-virtual {v15, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v11, [Landroid/animation/Animator;

    aput-object v14, v0, v1

    .line 104
    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v18, 0x0

    if-eqz p9, :cond_1

    move v8, v2

    move-wide/from16 v1, v18

    goto :goto_0

    :cond_1
    const-wide/16 v20, 0x64

    move v8, v2

    move-wide/from16 v1, v20

    .line 105
    :goto_0
    invoke-virtual {v15, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 106
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v15, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v11

    const/4 v0, 0x0

    aput v11, v2, v0

    int-to-float v8, v8

    const/4 v11, 0x1

    aput v8, v2, v11

    const-string v8, "x"

    invoke-static {v4, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v14, v1, [F

    .line 109
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v16

    aput v16, v14, v0

    int-to-float v3, v3

    aput v3, v14, v11

    invoke-static {v5, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v1, v1, [F

    .line 110
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getX()F

    move-result v14

    aput v14, v1, v0

    int-to-float v7, v7

    aput v7, v1, v11

    invoke-static {v6, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 112
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v8, v11, [Landroid/animation/Animator;

    aput-object v2, v8, v0

    .line 113
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v11, [Landroid/animation/Animator;

    aput-object v3, v2, v0

    .line 114
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v11, [Landroid/animation/Animator;

    aput-object v1, v2, v0

    .line 115
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p9, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v18, 0xc8

    :goto_1
    move-wide/from16 v1, v18

    .line 116
    invoke-virtual {v7, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 117
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v8, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v8, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 119
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    const/4 v0, 0x0

    aput-object v7, v2, v0

    .line 120
    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v15, v1, v0

    .line 121
    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 122
    iget-object v0, v10, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mHandler:Landroid/os/Handler;

    iget-object v1, v10, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    new-instance v14, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$$ExternalSyntheticLambda2;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v14, v10, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$1;

    invoke-direct {v0, v10}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$1;-><init>(Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;)V

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 135
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 21

    move-object/from16 v10, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const/16 v0, 0x8

    move-object/from16 v8, p7

    .line 139
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v11, 0x0

    .line 140
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v9, p8

    .line 141
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v1, v10, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$dimen;->volume_media_icon_note_min_x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x2

    move-object/from16 v12, p6

    if-ne v3, v7, :cond_0

    .line 147
    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x3e99999a    # 0.3f

    .line 151
    iget-object v1, v10, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/android/settings/R$dimen;->volume_sound_icon_note_min_x:I

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-array v13, v7, [F

    .line 153
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v14

    aput v14, v13, v11

    const/4 v14, 0x1

    aput v0, v13, v14

    const-string v0, "alpha"

    invoke-static {v5, v0, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-array v15, v7, [F

    .line 154
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    move-result v16

    aput v16, v15, v11

    aput v2, v15, v14

    invoke-static {v6, v0, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 155
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v14, [Landroid/animation/Animator;

    aput-object v13, v2, v11

    .line 156
    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v14, [Landroid/animation/Animator;

    aput-object v0, v2, v11

    .line 157
    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v17, 0x0

    if-eqz p9, :cond_1

    move-wide/from16 v11, v17

    goto :goto_1

    :cond_1
    const-wide/16 v19, 0x64

    move-wide/from16 v11, v19

    .line 158
    :goto_1
    invoke-virtual {v15, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 159
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v7, [F

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v2

    const/4 v11, 0x0

    aput v2, v0, v11

    int-to-float v1, v1

    aput v1, v0, v14

    const-string v1, "x"

    invoke-static {v4, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 162
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v14, [Landroid/animation/Animator;

    aput-object v0, v2, v11

    .line 163
    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-ne v3, v7, :cond_2

    .line 165
    iget-object v0, v10, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$dimen;->volume_sound_icon_wave_s_min_x:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-array v2, v7, [F

    .line 166
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v2, v11

    int-to-float v0, v0

    aput v0, v2, v14

    invoke-static {v5, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v14, [Landroid/animation/Animator;

    aput-object v0, v1, v11

    .line 167
    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2
    if-eqz p9, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v17, 0xc8

    :goto_2
    move-wide/from16 v0, v17

    .line 169
    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 170
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-direct {v0, v1, v2, v11, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 172
    iget-object v0, v10, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mHandler:Landroid/os/Handler;

    iget-object v1, v10, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    new-instance v11, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$$ExternalSyntheticLambda1;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v11, v10, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    .line 180
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v14, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v15, v1, v2

    .line 181
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v14, [Landroid/animation/Animator;

    aput-object v12, v1, v2

    .line 182
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 183
    new-instance v1, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$2;

    invoke-direct {v1, v10}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$2;-><init>(Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 189
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startModeMuteChangeAnimation(Landroid/view/View;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x4

    .line 319
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const-string v2, "x"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x64

    .line 321
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 322
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 324
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v3, [Landroid/animation/Animator;

    aput-object p1, v2, v0

    .line 325
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 326
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 327
    new-instance p1, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$3;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$3;-><init>(Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;Landroid/view/View;)V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 7

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p6, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p6, 0x4

    .line 194
    invoke-virtual {p2, p6}, Landroid/view/View;->setVisibility(I)V

    .line 195
    invoke-virtual {p7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$dimen;->volume_media_icon_note_min_x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 198
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$dimen;->volume_sound_icon_note_min_x:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 p1, 0x8

    .line 199
    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    invoke-virtual {p3, p6}, Landroid/view/View;->setVisibility(I)V

    .line 201
    invoke-virtual {p4, p6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-array p1, v2, [F

    .line 205
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p5

    aput p5, p1, v0

    const/4 p5, 0x1

    const/4 p6, 0x0

    aput p6, p1, p5

    const-string v3, "alpha"

    invoke-static {p3, v3, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array p3, v2, [F

    .line 206
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, p3, v0

    aput p6, p3, p5

    invoke-static {p4, v3, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 207
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, p5, [Landroid/animation/Animator;

    aput-object p1, v3, v0

    .line 208
    invoke-virtual {p4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p1, p5, [Landroid/animation/Animator;

    aput-object p3, p1, v0

    .line 209
    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v3, 0x0

    if-eqz p8, :cond_1

    move-wide v5, v3

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x64

    .line 210
    :goto_0
    invoke-virtual {p4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 211
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, v2, [F

    .line 213
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p3

    aput p3, p1, v0

    int-to-float p3, v1

    aput p3, p1, p5

    const-string p3, "x"

    invoke-static {p2, p3, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p8, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0xc8

    .line 214
    :goto_1
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 215
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, v1, p6, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 217
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p3, p5, [Landroid/animation/Animator;

    aput-object p4, p3, v0

    .line 219
    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p3, p5, [Landroid/animation/Animator;

    aput-object p1, p3, v0

    .line 220
    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 221
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    if-nez p8, :cond_3

    .line 223
    invoke-virtual {p0, p7}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startSplashAnimation(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public startSoundAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 340
    iget-object v0, v1, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$dimen;->volume_sound_icon_note_min_x:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 341
    iget-object v2, v1, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$dimen;->volume_sound_icon_wave_s_min_x:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 342
    iget-object v4, v1, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/settings/R$dimen;->volume_sound_icon_wave_l_mid_x:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne v3, v10, :cond_0

    .line 346
    iget-object v0, v1, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$dimen;->volume_sound_icon_note_mid_x:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 347
    iget-object v2, v1, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$dimen;->volume_sound_icon_wave_s_mid_x:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 348
    iget-object v4, v1, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v7, 0x3dcccccd    # 0.1f

    const/16 v12, 0x96

    goto :goto_2

    :cond_0
    if-nez p5, :cond_2

    const/4 v7, 0x3

    if-ne v3, v7, :cond_1

    goto :goto_0

    :cond_1
    const v9, 0x3e99999a    # 0.3f

    const/16 v12, 0x64

    const/4 v7, 0x0

    goto :goto_2

    .line 353
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$dimen;->volume_sound_icon_note_max_x:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 354
    iget-object v2, v1, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$dimen;->volume_sound_icon_wave_s_max_x:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 355
    iget-object v4, v1, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/settings/R$dimen;->volume_sound_icon_wave_l_max_x:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-eqz p5, :cond_3

    move v12, v11

    goto :goto_1

    :cond_3
    const/16 v7, 0xfa

    move v12, v7

    :goto_1
    move v7, v9

    :goto_2
    new-array v13, v10, [F

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    move-result v14

    aput v14, v13, v11

    const/4 v14, 0x1

    aput v9, v13, v14

    const-string v9, "alpha"

    invoke-static {v5, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-array v15, v10, [F

    .line 362
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v16

    aput v16, v15, v11

    aput v7, v15, v14

    invoke-static {v6, v9, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 363
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v15, v14, [Landroid/animation/Animator;

    aput-object v13, v15, v11

    .line 364
    invoke-virtual {v9, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v13, v14, [Landroid/animation/Animator;

    aput-object v7, v13, v11

    .line 365
    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    int-to-long v12, v12

    .line 366
    invoke-virtual {v9, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 367
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v7, v10, [F

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v15

    aput v15, v7, v11

    int-to-float v0, v0

    aput v0, v7, v14

    const-string v0, "x"

    move-object/from16 v15, p2

    invoke-static {v15, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v8, v10, [F

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v17

    aput v17, v8, v11

    int-to-float v2, v2

    aput v2, v8, v14

    invoke-static {v5, v0, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 372
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v10, v14, [Landroid/animation/Animator;

    aput-object v7, v10, v11

    .line 373
    invoke-virtual {v8, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v7, v14, [Landroid/animation/Animator;

    aput-object v2, v7, v11

    .line 374
    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-nez p5, :cond_4

    if-eq v3, v14, :cond_5

    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 376
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v2, v11

    int-to-float v4, v4

    aput v4, v2, v14

    invoke-static {v6, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v14, [Landroid/animation/Animator;

    aput-object v0, v2, v11

    .line 377
    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 379
    :cond_5
    invoke-virtual {v8, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 380
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v0, v2, v4, v10, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 382
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v14, [Landroid/animation/Animator;

    aput-object v8, v0, v11

    .line 383
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v14, [Landroid/animation/Animator;

    aput-object v9, v0, v11

    .line 384
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 385
    new-instance v8, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;-><init>(Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;ZILandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 397
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 6

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x4

    .line 246
    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    invoke-virtual {p6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object p5, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mHandler:Landroid/os/Handler;

    iget-object p6, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {p5, p6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    iget-object p5, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget p6, Lcom/android/settings/R$dimen;->volume_sound_icon_note_min_x:I

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    const/4 p6, 0x2

    new-array v1, p6, [F

    .line 256
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result v2

    aput v2, v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const-string v4, "alpha"

    invoke-static {p3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-array v1, p6, [F

    .line 257
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v1, v0

    aput v3, v1, v2

    invoke-static {p4, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 258
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v2, [Landroid/animation/Animator;

    aput-object p3, v4, v0

    .line 259
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p3, v2, [Landroid/animation/Animator;

    aput-object p4, p3, v0

    .line 260
    invoke-virtual {v1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p3, 0x0

    if-eqz p7, :cond_0

    move-wide v4, p3

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x32

    .line 261
    :goto_0
    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 262
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p6, p6, [F

    .line 264
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v4

    aput v4, p6, v0

    int-to-float p5, p5

    aput p5, p6, v2

    const-string p5, "x"

    invoke-static {p2, p5, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    if-eqz p7, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 p3, 0xc8

    .line 265
    :goto_1
    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    new-instance p3, Landroid/view/animation/PathInterpolator;

    const p4, 0x3e6147ae    # 0.22f

    const/high16 p5, 0x3e800000    # 0.25f

    const/high16 p6, 0x3f800000    # 1.0f

    invoke-direct {p3, p4, p5, v3, p6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 268
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p4, v2, [Landroid/animation/Animator;

    aput-object v1, p4, v0

    .line 269
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p4, v2, [Landroid/animation/Animator;

    aput-object p2, p4, v0

    .line 270
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 271
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    if-nez p7, :cond_2

    .line 274
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startVibrationAnimation(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public startSplashAnimation(Landroid/view/View;)V
    .locals 2

    const/4 p0, 0x0

    .line 228
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 229
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 230
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 231
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 232
    new-instance v1, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 238
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const v1, 0x3f147ae1    # 0.58f

    .line 239
    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 238
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 240
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    const/high16 p0, 0x3f800000    # 1.0f

    .line 241
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public startVibrationAnimation(Landroid/view/View;)V
    .locals 7

    .line 279
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$dimen;->volume_vibrate_init:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 280
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$dimen;->volume_vibrate_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    neg-float v2, v0

    const/4 v3, 0x0

    const/16 v4, 0x3c

    .line 281
    invoke-direct {p0, p1, v3, v2, v4}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v4

    sub-float v5, v0, v1

    const/16 v6, 0x50

    .line 285
    invoke-direct {p0, p1, v2, v5, v6}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v2

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v1, v6

    sub-float/2addr v0, v1

    neg-float v0, v0

    const/16 v1, 0x64

    .line 289
    invoke-direct {p0, p1, v5, v0, v1}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v1

    const/16 v5, 0x78

    .line 293
    invoke-direct {p0, p1, v0, v3, v5}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object p0

    .line 298
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 299
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 305
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 306
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
