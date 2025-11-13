.class public Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;
.super Ljava/lang/Object;
.source "SecVibrationIconMotion.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIconRunnable:Ljava/lang/Runnable;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public static synthetic $r8$lambda$VdHJTIDQBm4ucxucpBvQfUEPt3s(Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->lambda$startMidAnimation$0(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$irz_kof2mvxDvAPXOGlbHc_Qqg4(Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->lambda$startMinAnimation$1(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lvki5jGqsI0iyCvg_mo49giZ_PU(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->lambda$startSplashAnimation$2(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconRunnable(Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    .line 36
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$startMidAnimation$0(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 9

    move v2, p1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 119
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq v2, v0, :cond_1

    if-nez v2, :cond_2

    :cond_1
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 121
    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$startMinAnimation$1(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 9

    move v2, p1

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 170
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 168
    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static synthetic lambda$startSplashAnimation$2(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/4 p1, 0x0

    cmpl-float p2, p3, p1

    if-nez p2, :cond_0

    .line 226
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 227
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/16 v4, 0x8

    move-object/from16 v5, p5

    .line 40
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x0

    .line 41
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v6, p6

    .line 42
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/android/settings/R$dimen;->volume_media_icon_note_max_x:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 44
    iget-object v6, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/settings/R$dimen;->volume_media_icon_wave_s_max_x:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 45
    iget-object v7, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/settings/R$dimen;->volume_media_icon_wave_l_max_x:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v8, 0x2

    move/from16 v9, p1

    if-ne v9, v8, :cond_0

    .line 49
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object v6, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/settings/R$dimen;->volume_sound_icon_wave_s_max_x:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 52
    iget-object v0, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/settings/R$dimen;->volume_sound_icon_wave_l_max_x:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :cond_0
    new-array v0, v8, [F

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v0, v5

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    aput v10, v0, v9

    const-string v11, "alpha"

    invoke-static {v2, v11, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v12, v8, [F

    .line 55
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v13

    aput v13, v12, v5

    aput v10, v12, v9

    invoke-static {v3, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 56
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v12, v9, [Landroid/animation/Animator;

    aput-object v0, v12, v5

    .line 57
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v9, [Landroid/animation/Animator;

    aput-object v10, v0, v5

    .line 58
    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v12, 0x0

    if-eqz p7, :cond_1

    move-wide v14, v12

    goto :goto_0

    :cond_1
    const-wide/16 v14, 0x96

    .line 59
    :goto_0
    invoke-virtual {v11, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 60
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v8, [F

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v10

    aput v10, v0, v5

    int-to-float v4, v4

    aput v4, v0, v9

    const-string v4, "x"

    invoke-static {v1, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v8, [F

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v10

    aput v10, v1, v5

    int-to-float v6, v6

    aput v6, v1, v9

    invoke-static {v2, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v8, [F

    .line 64
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v6

    aput v6, v2, v5

    int-to-float v6, v7

    aput v6, v2, v9

    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 66
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v0, v4, v5

    .line 67
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v9, [Landroid/animation/Animator;

    aput-object v1, v0, v5

    .line 68
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v9, [Landroid/animation/Animator;

    aput-object v2, v0, v5

    .line 69
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p7, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v12, 0xc8

    .line 70
    :goto_1
    invoke-virtual {v3, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 71
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v4, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 73
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v9, [Landroid/animation/Animator;

    aput-object v11, v1, v5

    .line 74
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v9, [Landroid/animation/Animator;

    aput-object v3, v1, v5

    .line 75
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 76
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const/16 v0, 0x8

    move-object/from16 v7, p6

    .line 80
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v8, p7

    .line 82
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, v9, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$dimen;->volume_media_icon_note_mid_x:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 84
    iget-object v2, v9, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$dimen;->volume_media_icon_wave_s_mid_x:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 85
    iget-object v3, v9, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/android/settings/R$dimen;->volume_media_icon_wave_l_mid_x:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v10, 0x2

    move/from16 v11, p1

    if-ne v11, v10, :cond_0

    .line 89
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v2, v9, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$dimen;->volume_sound_icon_wave_s_mid_x:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 92
    iget-object v3, v9, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/android/settings/R$dimen;->volume_sound_icon_wave_l_mid_x:I

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_0
    new-array v12, v10, [F

    .line 94
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v13

    aput v13, v12, v1

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    aput v14, v12, v13

    const-string v14, "alpha"

    invoke-static {v5, v14, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    new-array v15, v10, [F

    .line 95
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    move-result v16

    aput v16, v15, v1

    const v16, 0x3dcccccd    # 0.1f

    aput v16, v15, v13

    invoke-static {v6, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 96
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v10, v13, [Landroid/animation/Animator;

    aput-object v12, v10, v1

    .line 97
    invoke-virtual {v15, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v10, v13, [Landroid/animation/Animator;

    aput-object v14, v10, v1

    .line 98
    invoke-virtual {v15, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v17, 0x0

    if-eqz p8, :cond_1

    move-wide/from16 v13, v17

    goto :goto_0

    :cond_1
    const-wide/16 v19, 0x64

    move-wide/from16 v13, v19

    .line 99
    :goto_0
    invoke-virtual {v15, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 100
    new-instance v12, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v12}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v15, v12}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v12, 0x2

    new-array v13, v12, [F

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v14

    aput v14, v13, v1

    int-to-float v0, v0

    const/4 v10, 0x1

    aput v0, v13, v10

    const-string v0, "x"

    invoke-static {v4, v0, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-array v14, v12, [F

    .line 103
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v16

    aput v16, v14, v1

    int-to-float v2, v2

    aput v2, v14, v10

    invoke-static {v5, v0, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v12, v12, [F

    .line 104
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getX()F

    move-result v14

    aput v14, v12, v1

    int-to-float v3, v3

    aput v3, v12, v10

    invoke-static {v6, v0, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 106
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v12, v10, [Landroid/animation/Animator;

    aput-object v13, v12, v1

    .line 107
    invoke-virtual {v3, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v12, v10, [Landroid/animation/Animator;

    aput-object v2, v12, v1

    .line 108
    invoke-virtual {v3, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v10, [Landroid/animation/Animator;

    aput-object v0, v2, v1

    .line 109
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p8, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v17, 0xc8

    :goto_1
    move-wide/from16 v12, v17

    .line 110
    invoke-virtual {v3, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 111
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v12, 0x3e800000    # 0.25f

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v12, v13, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 113
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/animation/Animator;

    aput-object v3, v2, v1

    .line 114
    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v15, v0, v1

    .line 115
    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 116
    iget-object v0, v9, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mHandler:Landroid/os/Handler;

    iget-object v1, v9, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    new-instance v10, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion$$ExternalSyntheticLambda2;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v10, v9, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion$1;

    invoke-direct {v0, v9}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion$1;-><init>(Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;)V

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 129
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 19

    move-object/from16 v9, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const/16 v0, 0x8

    move-object/from16 v7, p6

    .line 133
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v10, 0x0

    .line 134
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v8, p7

    .line 135
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, v9, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$dimen;->volume_media_icon_note_min_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v3, v2, :cond_0

    .line 141
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 142
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x3e99999a    # 0.3f

    .line 144
    iget-object v11, v9, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/android/settings/R$dimen;->volume_sound_icon_note_min_x:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto :goto_0

    :cond_0
    move v11, v0

    move v0, v1

    :goto_0
    new-array v12, v2, [F

    .line 146
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v13

    aput v13, v12, v10

    const/4 v13, 0x1

    aput v0, v12, v13

    const-string v0, "alpha"

    invoke-static {v5, v0, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    new-array v14, v2, [F

    .line 147
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    move-result v15

    aput v15, v14, v10

    aput v1, v14, v13

    invoke-static {v6, v0, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 148
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v15, v13, [Landroid/animation/Animator;

    aput-object v12, v15, v10

    .line 149
    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v12, v13, [Landroid/animation/Animator;

    aput-object v0, v12, v10

    .line 150
    invoke-virtual {v14, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p8, :cond_1

    move v0, v11

    const-wide/16 v10, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v17, 0x64

    move v0, v11

    move-wide/from16 v10, v17

    .line 151
    :goto_1
    invoke-virtual {v14, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 152
    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v10, v2, [F

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    int-to-float v0, v0

    aput v0, v10, v13

    const-string v0, "x"

    invoke-static {v4, v0, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 155
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v15, v13, [Landroid/animation/Animator;

    aput-object v10, v15, v12

    .line 156
    invoke-virtual {v11, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-ne v3, v2, :cond_2

    .line 158
    iget-object v10, v9, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/android/settings/R$dimen;->volume_sound_icon_wave_s_min_x:I

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    new-array v2, v2, [F

    .line 159
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v15

    aput v15, v2, v12

    int-to-float v10, v10

    aput v10, v2, v13

    invoke-static {v5, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v13, [Landroid/animation/Animator;

    aput-object v0, v2, v12

    .line 160
    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2
    if-eqz p8, :cond_3

    const-wide/16 v12, 0x0

    goto :goto_2

    :cond_3
    const-wide/16 v15, 0xc8

    move-wide v12, v15

    .line 162
    :goto_2
    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 163
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v12, 0x3e800000    # 0.25f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v12, v1, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 165
    iget-object v0, v9, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mHandler:Landroid/os/Handler;

    iget-object v1, v9, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    new-instance v12, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v12, v9, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    .line 173
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    .line 174
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v11, v1, v3

    .line 175
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 176
    new-instance v1, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion$2;

    invoke-direct {v1, v9}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion$2;-><init>(Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 8

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p5, 0x4

    .line 187
    invoke-virtual {p2, p5}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-virtual {p6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$dimen;->volume_media_icon_note_min_x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 191
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$dimen;->volume_sound_icon_note_min_x:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 192
    invoke-virtual {p3, p5}, Landroid/view/View;->setVisibility(I)V

    .line 193
    invoke-virtual {p4, p5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-array p1, v2, [F

    .line 197
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p5

    aput p5, p1, v0

    const/4 p5, 0x1

    const/4 v3, 0x0

    aput v3, p1, p5

    const-string v4, "alpha"

    invoke-static {p3, v4, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array p3, v2, [F

    .line 198
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, p3, v0

    aput v3, p3, p5

    invoke-static {p4, v4, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 199
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, p5, [Landroid/animation/Animator;

    aput-object p1, v4, v0

    .line 200
    invoke-virtual {p4, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p1, p5, [Landroid/animation/Animator;

    aput-object p3, p1, v0

    .line 201
    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x0

    if-eqz p7, :cond_1

    move-wide v6, v4

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x64

    .line 202
    :goto_0
    invoke-virtual {p4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 203
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, v2, [F

    .line 205
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p3

    aput p3, p1, v0

    int-to-float p3, v1

    aput p3, p1, p5

    const-string p3, "x"

    invoke-static {p2, p3, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p7, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0xc8

    .line 206
    :goto_1
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 207
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 209
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p3, p5, [Landroid/animation/Animator;

    aput-object p4, p3, v0

    .line 211
    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p3, p5, [Landroid/animation/Animator;

    aput-object p1, p3, v0

    .line 212
    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 213
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    if-nez p7, :cond_3

    .line 215
    invoke-virtual {p0, p6}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->startSplashAnimation(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public startSplashAnimation(Landroid/view/View;)V
    .locals 2

    const/4 p0, 0x0

    .line 220
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 221
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 222
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 223
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 224
    new-instance v1, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 230
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const v1, 0x3f147ae1    # 0.58f

    .line 231
    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 230
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 232
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    const/high16 p0, 0x3f800000    # 1.0f

    .line 233
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method
