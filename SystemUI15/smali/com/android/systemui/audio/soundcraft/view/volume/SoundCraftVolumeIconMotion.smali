.class public final Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final context:Landroid/content/Context;

.field public final handler:Landroid/os/Handler;

.field public iconRunnable:Ljava/lang/Runnable;

.field public lastAnimator:Landroid/animation/Animator;

.field public final resources:Landroid/content/res/Resources;

.field public shockValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->context:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->handler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->resources:Landroid/content/res/Resources;

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->shockValueAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final startIconTintColor(Ljava/util/ArrayList;IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->shockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->shockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    if-eqz p4, :cond_1

    const-wide/16 p3, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 p3, 0x1c2

    :goto_0
    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->shockValueAnimator:Landroid/animation/ValueAnimator;

    sget-object p3, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->shockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->shockValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startIconTintColor$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startIconTintColor$1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public final startMaxAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->lastAnimator:Landroid/animation/Animator;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->lastAnimator:Landroid/animation/Animator;

    sget-object v8, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p5 .. p5}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-static/range {p6 .. p6}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    if-eqz v4, :cond_1

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v4, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->context:Landroid/content/Context;

    const v8, 0x7f07142f

    invoke-static {v8, v4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v4

    iget-object v8, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->context:Landroid/content/Context;

    const v9, 0x7f071432

    invoke-static {v9, v8}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->context:Landroid/content/Context;

    const v10, 0x7f071431

    invoke-static {v10, v9}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v9

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v11, v6, [Landroid/animation/Animator;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    new-array v14, v5, [F

    aput v12, v14, v7

    aput v13, v14, v6

    const-string v12, "alpha"

    invoke-static {v2, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v11, v7

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v11, v6, [Landroid/animation/Animator;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    move-result v14

    new-array v15, v5, [F

    aput v14, v15, v7

    aput v13, v15, v6

    invoke-static {v3, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p7, :cond_2

    const-wide/16 v13, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v13, 0x96

    :goto_0
    invoke-virtual {v10, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v14, v6, [Landroid/animation/Animator;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v15

    int-to-float v4, v4

    new-array v11, v5, [F

    aput v15, v11, v7

    aput v4, v11, v6

    const-string/jumbo v4, "x"

    invoke-static {v1, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v14, v7

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v6, [Landroid/animation/Animator;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v11

    int-to-float v8, v8

    new-array v12, v5, [F

    aput v11, v12, v7

    aput v8, v12, v6

    invoke-static {v2, v4, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v13, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v6, [Landroid/animation/Animator;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v2

    int-to-float v8, v9

    new-array v5, v5, [F

    aput v2, v5, v7

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v13, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p7, :cond_3

    const-wide/16 v11, 0x0

    goto :goto_1

    :cond_3
    const-wide/16 v11, 0xc8

    :goto_1
    invoke-virtual {v13, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v13, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v10, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v13, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->lastAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public final startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->lastAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v10, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->lastAnimator:Landroid/animation/Animator;

    sget-object v3, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p7 .. p7}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static/range {p8 .. p8}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    if-eqz v7, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v3, v10, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->context:Landroid/content/Context;

    const v8, 0x7f07142f

    invoke-static {v8, v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v3

    iget-object v8, v10, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->context:Landroid/content/Context;

    const v9, 0x7f071432

    invoke-static {v9, v8}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v8

    iget-object v9, v10, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->context:Landroid/content/Context;

    const v11, 0x7f071431

    invoke-static {v11, v9}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v9

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v11

    new-array v12, v0, [F

    aput v11, v12, v2

    const/high16 v11, 0x3f000000    # 0.5f

    aput v11, v12, v1

    const-string v11, "alpha"

    invoke-static {v5, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    move-result v13

    new-array v14, v0, [F

    aput v13, v14, v2

    const v13, 0x3dcccccd    # 0.1f

    aput v13, v14, v1

    invoke-static {v6, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v14, v1, [Landroid/animation/Animator;

    aput-object v12, v14, v2

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v12, v1, [Landroid/animation/Animator;

    aput-object v11, v12, v2

    invoke-virtual {v13, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p9, :cond_2

    const-wide/16 v14, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v14, 0x64

    :goto_0
    invoke-virtual {v13, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v14, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v14}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v14

    int-to-float v3, v3

    new-array v15, v0, [F

    aput v14, v15, v2

    aput v3, v15, v1

    const-string/jumbo v3, "x"

    invoke-static {v4, v3, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v15

    int-to-float v8, v8

    new-array v11, v0, [F

    aput v15, v11, v2

    aput v8, v11, v1

    invoke-static {v5, v3, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getX()F

    move-result v11

    int-to-float v9, v9

    new-array v0, v0, [F

    aput v11, v0, v2

    aput v9, v0, v1

    invoke-static {v6, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v9, v1, [Landroid/animation/Animator;

    aput-object v14, v9, v2

    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v9, v1, [Landroid/animation/Animator;

    aput-object v8, v9, v2

    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v8, v1, [Landroid/animation/Animator;

    aput-object v0, v8, v2

    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p9, :cond_3

    const-wide/16 v11, 0x0

    goto :goto_1

    :cond_3
    const-wide/16 v11, 0xc8

    :goto_1
    invoke-virtual {v3, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v8, 0x3e6147ae    # 0.22f

    const/high16 v9, 0x3e800000    # 0.25f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v9, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v1, [Landroid/animation/Animator;

    aput-object v3, v0, v2

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v1, [Landroid/animation/Animator;

    aput-object v13, v0, v2

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, v10, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->iconRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v1, v10, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    new-instance v12, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;

    move-object v0, v12

    move/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;-><init>(ILcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v12, v10, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->iconRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$3;

    invoke-direct {v0, v10}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$3;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;)V

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    iput-object v11, v10, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->lastAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public final startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    const/4 v0, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v1, v10, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->lastAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v10, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->lastAnimator:Landroid/animation/Animator;

    sget-object v1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p7 .. p7}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-static/range {p8 .. p8}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    if-eqz v7, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, v10, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->context:Landroid/content/Context;

    const v2, 0x7f071430

    invoke-static {v2, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    new-array v8, v0, [F

    aput v2, v8, v12

    aput v3, v8, v11

    const-string v2, "alpha"

    invoke-static {v5, v2, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    move-result v9

    new-array v13, v0, [F

    aput v9, v13, v12

    aput v3, v13, v11

    invoke-static {v6, v2, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v9, v11, [Landroid/animation/Animator;

    aput-object v8, v9, v12

    invoke-virtual {v13, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v8, v11, [Landroid/animation/Animator;

    aput-object v2, v8, v12

    invoke-virtual {v13, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v8, 0x0

    if-eqz p9, :cond_2

    move-wide v14, v8

    goto :goto_0

    :cond_2
    const-wide/16 v14, 0x64

    :goto_0
    invoke-virtual {v13, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v13, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v2

    int-to-float v1, v1

    new-array v0, v0, [F

    aput v2, v0, v12

    aput v1, v0, v11

    const-string/jumbo v1, "x"

    invoke-static {v4, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v11, [Landroid/animation/Animator;

    aput-object v0, v1, v12

    invoke-virtual {v14, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p9, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v8, 0xc8

    :goto_1
    invoke-virtual {v14, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v8, 0x3e800000    # 0.25f

    invoke-direct {v0, v2, v8, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v10, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->iconRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v1, v10, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    new-instance v15, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMinAnimation$3;

    move-object v0, v15

    move/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMinAnimation$3;-><init>(ILcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v15, v10, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->iconRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v11, [Landroid/animation/Animator;

    aput-object v13, v1, v12

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v11, [Landroid/animation/Animator;

    aput-object v14, v1, v12

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMinAnimation$4$1;

    invoke-direct {v1, v10}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMinAnimation$4$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-object v0, v10, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->lastAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public final startMuteAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p5, 0x4

    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p6, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p4, :cond_0

    const/16 p5, 0x8

    invoke-virtual {p4, p5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p4, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->resources:Landroid/content/res/Resources;

    const p5, 0x7f0717b0

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p5

    const/4 v3, 0x0

    new-array v4, v0, [F

    aput p5, v4, v2

    aput v3, v4, v1

    const-string p5, "alpha"

    invoke-static {p2, p5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result v4

    new-array v5, v0, [F

    aput v4, v5, v2

    aput v3, v5, v1

    invoke-static {p3, p5, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-instance p5, Landroid/animation/AnimatorSet;

    invoke-direct {p5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v1, [Landroid/animation/Animator;

    aput-object p2, v4, v2

    invoke-virtual {p5, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p2, v1, [Landroid/animation/Animator;

    aput-object p3, p2, v2

    invoke-virtual {p5, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p2, 0x0

    if-eqz p7, :cond_1

    move-wide v4, p2

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x64

    :goto_0
    invoke-virtual {p5, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p5, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    int-to-float p4, p4

    new-array v0, v0, [F

    aput v4, v0, v2

    aput p4, v0, v1

    const-string/jumbo p4, "x"

    invoke-static {p1, p4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p7, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 p2, 0xc8

    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const p2, 0x3e6147ae    # 0.22f

    const/high16 p3, 0x3e800000    # 0.25f

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {p2, p3, v3, p4, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    iget-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->iconRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_3

    iget-object p3, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->handler:Landroid/os/Handler;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p5, p3, v2

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p1, p3, v2

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->lastAnimator:Landroid/animation/Animator;

    if-nez p7, :cond_4

    invoke-virtual {p6, v3}, Landroid/view/View;->setScaleX(F)V

    new-instance p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {p0, p6, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iput v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startSplashAnimation$1;

    invoke-direct {p1, p6}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startSplashAnimation$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 p2, 0x43960000    # 300.0f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const p2, 0x3f147ae1    # 0.58f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    invoke-virtual {p0, p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_4
    return-void
.end method
