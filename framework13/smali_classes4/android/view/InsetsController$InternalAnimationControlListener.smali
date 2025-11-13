.class public Landroid/view/InsetsController$InternalAnimationControlListener;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalAnimationControlListener"
.end annotation


# instance fields
.field private blacklist mAnimator:Landroid/animation/ValueAnimator;

.field private final blacklist mBehavior:I

.field private blacklist mController:Landroid/view/WindowInsetsAnimationController;

.field private final blacklist mDisable:Z

.field private final blacklist mDurationMs:J

.field private final blacklist mFloatingImeBottomInset:I

.field private final blacklist mHasAnimationCallbacks:Z

.field private final blacklist mRequestedTypes:I

.field private final blacklist mSfAnimationHandlerThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mShow:Z


# direct methods
.method public constructor blacklist <init>(ZZIIZI)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "hasAnimationCallbacks"    # Z
    .param p3, "requestedTypes"    # I
    .param p4, "behavior"    # I
    .param p5, "disable"    # Z
    .param p6, "floatingImeBottomInset"    # I

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$1;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$InternalAnimationControlListener$1;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V

    iput-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mSfAnimationHandlerThreadLocal:Ljava/lang/ThreadLocal;

    .line 369
    iput-boolean p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    .line 370
    iput-boolean p2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    .line 371
    iput p3, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    .line 372
    iput p4, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    .line 373
    invoke-direct {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->calculateDurationMs()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDurationMs:J

    .line 374
    iput-boolean p5, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDisable:Z

    .line 375
    iput p6, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFloatingImeBottomInset:I

    .line 376
    return-void
.end method

.method private blacklist calculateDurationMs()J
    .locals 2

    .line 513
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 519
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_0

    .line 520
    const-wide/16 v0, 0x11d

    return-wide v0

    .line 522
    :cond_0
    const-wide/16 v0, 0xc8

    return-wide v0

    .line 525
    :cond_1
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_INSET_ANIM:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 529
    :cond_2
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x1f4

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x5dc

    :goto_0
    return-wide v0

    .line 527
    :cond_4
    :goto_1
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x113

    goto :goto_2

    :cond_5
    const-wide/16 v0, 0x154

    :goto_2
    return-wide v0
.end method

.method private static synthetic blacklist lambda$getAlphaInterpolator$2(F)F
    .locals 1
    .param p0, "input"    # F

    .line 475
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method static synthetic blacklist lambda$getAlphaInterpolator$3(F)F
    .locals 1
    .param p0, "input"    # F

    .line 479
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method static synthetic blacklist lambda$getAlphaInterpolator$4(F)F
    .locals 2
    .param p0, "input"    # F

    .line 483
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getAlphaInterpolator$5(F)F
    .locals 1
    .param p0, "input"    # F

    .line 489
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method


# virtual methods
.method blacklist getAlphaInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .line 472
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 478
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_0

    .line 479
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda2;-><init>()V

    return-object v0

    .line 480
    :cond_0
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_1

    .line 483
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda3;-><init>()V

    return-object v0

    .line 485
    :cond_1
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetFAST_OUT_LINEAR_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 488
    :cond_2
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 489
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda4;-><init>()V

    return-object v0

    .line 491
    :cond_3
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_4

    .line 492
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_ALPHA_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 494
    :cond_4
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_DIM_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDurationMs()J
    .locals 2

    .line 509
    iget-wide v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDurationMs:J

    return-wide v0
.end method

.method protected blacklist getInsetsInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .line 448
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 454
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_0

    .line 455
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYNC_IME_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 456
    :cond_0
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_1

    .line 457
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetLINEAR_OUT_SLOW_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 459
    :cond_1
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetFAST_OUT_LINEAR_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 462
    :cond_2
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 463
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_INSETS_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 466
    :cond_3
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V

    return-object v0
.end method

.method synthetic blacklist lambda$getInsetsInterpolator$1$android-view-InsetsController$InternalAnimationControlListener(F)F
    .locals 1
    .param p1, "input"    # F

    .line 466
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$onReady$0$android-view-InsetsController$InternalAnimationControlListener(Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "insetsInterpolator"    # Landroid/view/animation/Interpolator;
    .param p2, "controller"    # Landroid/view/WindowInsetsAnimationController;
    .param p3, "start"    # Landroid/graphics/Insets;
    .param p4, "end"    # Landroid/graphics/Insets;
    .param p5, "alphaInterpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "animation"    # Landroid/animation/ValueAnimator;

    .line 406
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 407
    .local v0, "rawFraction":F
    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v1, :cond_0

    .line 408
    move v1, v0

    goto :goto_0

    .line 409
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    :goto_0
    nop

    .line 410
    .local v1, "alphaFraction":F
    invoke-interface {p1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 411
    .local v2, "insetsFraction":F
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetsEvaluator()Landroid/animation/TypeEvaluator;

    move-result-object v3

    .line 412
    invoke-interface {v3, v2, p3, p4}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Insets;

    .line 413
    invoke-interface {p5, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 411
    invoke-interface {p2, v3, v4, v0}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    .line 415
    sget-boolean v3, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default animation setInsetsAndAlpha fraction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InsetsController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_1
    return-void
.end method

.method protected blacklist onAnimationFinish()V
    .locals 2

    .line 501
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mController:Landroid/view/WindowInsetsAnimationController;

    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    .line 502
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAnimationFinish showOnFinish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InsetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    return-void
.end method

.method public whitelist onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 2
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;

    .line 440
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 443
    :cond_0
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InternalAnimationControlListener onCancelled types:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InsetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_1
    return-void
.end method

.method public whitelist onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 2
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;

    .line 433
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InternalAnimationControlListener onFinished types:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    .line 434
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    const-string v1, "InsetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    return-void
.end method

.method public whitelist onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 12
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;
    .param p2, "types"    # I

    .line 380
    iput-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mController:Landroid/view/WindowInsetsAnimationController;

    .line 381
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default animation onReady types: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InsetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDisable:Z

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->onAnimationFinish()V

    .line 385
    return-void

    .line 387
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    .line 388
    iget-wide v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDurationMs:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 389
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 390
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 393
    .local v0, "hiddenInsets":Landroid/graphics/Insets;
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->hasZeroInsetsIme()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget v4, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFloatingImeBottomInset:I

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    goto :goto_0

    .line 396
    :cond_2
    move-object v1, v0

    :goto_0
    move-object v0, v1

    .line 397
    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v1, :cond_3

    .line 398
    move-object v6, v0

    goto :goto_1

    .line 399
    :cond_3
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    move-object v6, v1

    :goto_1
    nop

    .line 400
    .local v6, "start":Landroid/graphics/Insets;
    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v1, :cond_4

    .line 401
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    .line 402
    :cond_4
    move-object v7, v0

    :goto_2
    nop

    .line 403
    .local v7, "end":Landroid/graphics/Insets;
    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->getInsetsInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 404
    .local v1, "insetsInterpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->getAlphaInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v9

    .line 405
    .local v9, "alphaInterpolator":Landroid/view/animation/Interpolator;
    iget-object v10, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v11, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;

    move-object v2, v11

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 418
    iget-object v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/InsetsController$InternalAnimationControlListener$2;

    invoke-direct {v3, p0}, Landroid/view/InsetsController$InternalAnimationControlListener$2;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 425
    iget-boolean v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-nez v2, :cond_5

    .line 426
    iget-object v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mSfAnimationHandlerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimationHandler;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setAnimationHandler(Landroid/animation/AnimationHandler;)V

    .line 428
    :cond_5
    iget-object v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 429
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
