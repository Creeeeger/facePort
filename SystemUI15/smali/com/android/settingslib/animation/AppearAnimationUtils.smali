.class public Lcom/android/settingslib/animation/AppearAnimationUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;


# instance fields
.field public mAppearing:Z

.field public final mDelayScale:F

.field public final mDuration:J

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public final mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

.field public mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

.field public final mStartTranslation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    const-wide/16 v3, 0xdc

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    invoke-direct {v0, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;-><init>(Lcom/android/settingslib/animation/AppearAnimationUtils;)V

    iput-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iput-object p6, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p6, 0x7f07007b

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p4

    iput p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    iput p5, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDelayScale:F

    iput-wide p2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDuration:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    return-void
.end method

.method public static startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;Lcom/android/keyguard/KeyguardInputView$1;)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/RenderNodeAnimator;

    invoke-direct {v1, v0, p5}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    invoke-virtual {v1, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    aput p5, v3, v0

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    if-eqz p7, :cond_1

    invoke-virtual {v1, p7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    new-instance p1, Lcom/android/settingslib/animation/AppearAnimationUtils$3;

    invoke-direct {p1, p0, p5}, Lcom/android/settingslib/animation/AppearAnimationUtils$3;-><init>(Landroid/view/View;F)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public calculateDelay(II)J
    .locals 6

    mul-int/lit8 v0, p1, 0x28

    int-to-double v0, v0

    int-to-double v2, p2

    int-to-double p1, p1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p1, v4

    mul-double/2addr p1, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr p1, v2

    add-double/2addr p1, v0

    iget p0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDelayScale:F

    float-to-double v0, p0

    mul-double/2addr p1, v0

    double-to-long p0, p1

    return-wide p0
.end method

.method public final createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;Lcom/android/keyguard/KeyguardInputView$1;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x2

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p7, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz p7, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move/from16 v6, p6

    :goto_1
    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    sub-float v3, p6, v6

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/view/RenderNodeAnimator;

    const/16 v4, 0xb

    invoke-direct {v3, v4, v5}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    invoke-virtual {v3, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    :goto_2
    move-object/from16 v7, p8

    goto :goto_3

    :cond_2
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    new-array v7, v2, [F

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v4, 0x1

    aput v5, v7, v4

    invoke-static {p1, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_2

    :goto_3
    invoke-virtual {v3, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v8, p4

    invoke-virtual {v3, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-wide v10, p2

    invoke-virtual {v3, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v2, Lcom/android/settingslib/animation/AppearAnimationUtils$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settingslib/animation/AppearAnimationUtils$1;-><init>(Lcom/android/settingslib/animation/AppearAnimationUtils;Landroid/view/View;)V

    invoke-virtual {v3, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    new-instance v2, Lcom/android/settingslib/animation/AppearAnimationUtils$2;

    move-object/from16 v4, p9

    invoke-direct {v2, p0, p1, v5, v4}, Lcom/android/settingslib/animation/AppearAnimationUtils$2;-><init>(Lcom/android/settingslib/animation/AppearAnimationUtils;Landroid/view/View;FLjava/lang/Runnable;)V

    invoke-virtual {v3, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    move-object v0, p1

    move-wide v1, p2

    move-wide/from16 v3, p4

    move v5, v6

    move-object/from16 v6, p8

    move-object/from16 v7, p10

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;Lcom/android/keyguard/KeyguardInputView$1;)V

    :cond_4
    return-void
.end method

.method public final createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 11

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;Lcom/android/keyguard/KeyguardInputView$1;)V

    return-void
.end method

.method public final startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    iput v3, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    array-length v4, v1

    new-array v4, v4, [[J

    iput-object v4, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    :goto_0
    array-length v8, v1

    if-ge v7, v8, :cond_2

    aget-object v8, v1, v7

    iget-object v9, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v10, v8

    new-array v10, v10, [J

    aput-object v10, v9, v7

    const/4 v9, 0x0

    :goto_1
    array-length v10, v8

    if-ge v9, v10, :cond_1

    invoke-virtual {v0, v7, v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->calculateDelay(II)J

    move-result-wide v10

    iget-object v12, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v12, v12, v7

    aput-wide v10, v12, v9

    aget-object v12, v1, v7

    aget-object v12, v12, v9

    if-eqz v12, :cond_0

    cmp-long v12, v10, v5

    if-lez v12, :cond_0

    iput v9, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    iput v7, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    move-wide v5, v10

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget v5, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-eq v5, v3, :cond_8

    iget v5, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-ne v5, v3, :cond_3

    goto :goto_7

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iget-object v5, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v6, v5

    if-ge v3, v6, :cond_9

    aget-object v6, v5, v3

    iget-object v7, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    if-eqz v7, :cond_4

    array-length v5, v5

    sub-int v7, v5, v3

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    int-to-double v9, v5

    div-double/2addr v7, v9

    double-to-float v5, v7

    goto :goto_3

    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_3
    iget v7, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    mul-float/2addr v5, v7

    const/4 v7, 0x0

    :goto_4
    array-length v8, v6

    if-ge v7, v8, :cond_7

    aget-wide v11, v6, v7

    iget v8, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-ne v8, v3, :cond_5

    iget v8, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-ne v8, v7, :cond_5

    move-object/from16 v18, p2

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    move-object/from16 v18, v8

    :goto_5
    aget-object v8, v1, v3

    aget-object v10, v8, v7

    iget-boolean v8, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    if-eqz v8, :cond_6

    move v15, v5

    goto :goto_6

    :cond_6
    neg-float v9, v5

    move v15, v9

    :goto_6
    iget-object v13, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v19, v5

    iget-wide v4, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDuration:J

    move-object/from16 v9, p3

    move-object/from16 v17, v13

    move-wide v13, v4

    move/from16 v16, v8

    invoke-interface/range {v9 .. v18}, Lcom/android/settingslib/animation/AppearAnimationCreator;->createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v19

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :goto_7
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method
