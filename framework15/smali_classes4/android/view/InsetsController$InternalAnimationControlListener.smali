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

.field private blacklist mFullscreenMode:Z

.field private final blacklist mHasAnimationCallbacks:Z

.field private final blacklist mInputMethodJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

.field private final blacklist mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private final blacklist mRequestedTypes:I

.field private final blacklist mShow:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$BJTEi7zfHhP2W08t256nzVrDzao(Landroid/view/InsetsController$InternalAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/InsetsController$InternalAnimationControlListener;->lambda$onReady$0(Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vYENjUMLI1MBNXf4d_zEaIcueRE(Landroid/view/InsetsController$InternalAnimationControlListener;F)F
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController$InternalAnimationControlListener;->lambda$getInsetsInterpolator$1(F)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasAnimationCallbacks(Landroid/view/InsetsController$InternalAnimationControlListener;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputMethodJankContext(Landroid/view/InsetsController$InternalAnimationControlListener;)Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mInputMethodJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAnimationType(Landroid/view/InsetsController$InternalAnimationControlListener;)I
    .locals 0

    invoke-direct {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->getAnimationType()I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(ZZIIZILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFullscreenMode:Z

    iput-boolean p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    iput-boolean p2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    iput p3, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    iput p4, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    invoke-direct {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->calculateDurationMs()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDurationMs:J

    iput-boolean p5, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDisable:Z

    iput p6, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFloatingImeBottomInset:I

    iput-object p7, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    iput-object p8, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mInputMethodJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    return-void
.end method

.method public constructor blacklist <init>(ZZIIZILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFullscreenMode:Z

    iput-boolean p9, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFullscreenMode:Z

    iput-boolean p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    iput-boolean p2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    iput p3, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    iput p4, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    invoke-direct {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->calculateDurationMs()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDurationMs:J

    iput-boolean p5, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDisable:Z

    iput p6, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFloatingImeBottomInset:I

    iput-object p7, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    iput-object p8, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mInputMethodJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    return-void
.end method

.method private blacklist calculateDurationMs()J
    .locals 2

    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetENABLE_SEP_IME_ANIMATION()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFullscreenMode:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->getSepAnimationDurationIme()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x11d

    return-wide v0

    :cond_1
    const-wide/16 v0, 0xc8

    return-wide v0

    :cond_2
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_INSET_ANIM:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1f4

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x5dc

    :goto_0
    return-wide v0

    :cond_5
    :goto_1
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x113

    goto :goto_2

    :cond_6
    const-wide/16 v0, 0x154

    :goto_2
    return-wide v0
.end method

.method private blacklist getAnimationType()I
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist getSepAnimationDurationIme()I
    .locals 2

    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    const/16 v1, 0x118

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetENABLE_SEP_FLAGSHIP_IME_ANIMATION()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x15e

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetENABLE_SEP_FLAGSHIP_IME_ANIMATION()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x12c

    goto :goto_1

    :cond_2
    nop

    :goto_1
    return v1
.end method

.method static synthetic blacklist lambda$getAlphaInterpolator$2(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method static synthetic blacklist lambda$getAlphaInterpolator$3(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method static synthetic blacklist lambda$getAlphaInterpolator$4(F)F
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getAlphaInterpolator$5(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private synthetic blacklist lambda$getInsetsInterpolator$1(F)F
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$onReady$0(Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    :goto_0
    nop

    invoke-interface {p1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetsEvaluator()Landroid/animation/TypeEvaluator;

    move-result-object v3

    invoke-interface {v3, v2, p3, p4}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Insets;

    invoke-interface {p5, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    invoke-interface {p2, v3, v4, v0}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

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

    :cond_1
    return-void
.end method


# virtual methods
.method blacklist getAlphaInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetENABLE_SEP_IME_ANIMATION()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFullscreenMode:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda2;-><init>()V

    return-object v0

    :cond_0
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda3;-><init>()V

    return-object v0

    :cond_1
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda4;-><init>()V

    return-object v0

    :cond_2
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetFAST_OUT_LINEAR_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    :cond_3
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda5;-><init>()V

    return-object v0

    :cond_4
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_ALPHA_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_DIM_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDurationMs()J
    .locals 2

    iget-wide v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDurationMs:J

    return-wide v0
.end method

.method protected blacklist getInsetsInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetENABLE_SEP_IME_ANIMATION()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetENABLE_SEP_FLAGSHIP_IME_ANIMATION()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSEP_IME_SHOW_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSEP_IME_HIDE_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYNC_IME_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    :cond_2
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetLINEAR_OUT_SLOW_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetFAST_OUT_LINEAR_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    :cond_4
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_INSETS_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V

    return-object v0
.end method

.method protected blacklist onAnimationFinish()V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mController:Landroid/view/WindowInsetsAnimationController;

    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

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

    :cond_0
    return-void
.end method

.method public whitelist onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

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

    :cond_1
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-interface {v0, p1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    :cond_2
    return-void
.end method

.method public whitelist onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 2

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InternalAnimationControlListener onFinished types:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InsetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-interface {v0, p1}, Landroid/view/WindowInsetsAnimationControlListener;->onFinished(Landroid/view/WindowInsetsAnimationController;)V

    :cond_1
    return-void
.end method

.method public whitelist onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 12

    iput-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mController:Landroid/view/WindowInsetsAnimationController;

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

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    :cond_1
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDisable:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->onAnimationFinish()V

    return-void

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDurationMs:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p2

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    :cond_3
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->hasZeroInsetsIme()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget v4, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFloatingImeBottomInset:I

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    move-object v0, v1

    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v1, :cond_5

    move-object v6, v0

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    move-object v6, v1

    :goto_1
    nop

    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v1, :cond_6

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    :cond_6
    move-object v7, v0

    :goto_2
    nop

    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->getInsetsInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->getAlphaInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v9

    iget-object v10, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v11, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;

    move-object v2, v11

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/InsetsController$InternalAnimationControlListener$1;

    invoke-direct {v3, p0}, Landroid/view/InsetsController$InternalAnimationControlListener$1;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
