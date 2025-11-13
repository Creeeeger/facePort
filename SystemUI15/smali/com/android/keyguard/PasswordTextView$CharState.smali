.class public final Lcom/android/keyguard/PasswordTextView$CharState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public currentDotSizeFactor:F

.field public currentTextSizeFactor:F

.field public currentTextTranslationY:F

.field public currentWidthFactor:F

.field public dotAnimationIsGrowing:Z

.field public dotAnimator:Landroid/animation/Animator;

.field public final dotFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

.field public final dotSwapperRunnable:Lcom/android/keyguard/PasswordTextView$CharState$10;

.field public isDotSwapPending:Z

.field public final mDotSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

.field public final mTextSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$7;

.field public final mTextTranslationUpdater:Lcom/android/keyguard/PasswordTextView$CharState$8;

.field public final mWidthUpdater:Lcom/android/keyguard/PasswordTextView$CharState$9;

.field public final removeEndListener:Lcom/android/keyguard/PasswordTextView$CharState$1;

.field public textAnimationIsGrowing:Z

.field public textAnimator:Landroid/animation/ValueAnimator;

.field public final textFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$3;

.field public textTranslateAnimator:Landroid/animation/ValueAnimator;

.field public final textTranslateFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$4;

.field public final synthetic this$0:Lcom/android/keyguard/PasswordTextView;

.field public whichChar:C

.field public widthAnimationIsGrowing:Z

.field public widthAnimator:Landroid/animation/ValueAnimator;

.field public final widthFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$5;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/PasswordTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$1;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->removeEndListener:Lcom/android/keyguard/PasswordTextView$CharState$1;

    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$2;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$3;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$3;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$3;

    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$4;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$4;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$4;

    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$5;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$5;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$5;

    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$6;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$6;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->mDotSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$7;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$7;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->mTextSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$7;

    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$8;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$8;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->mTextTranslationUpdater:Lcom/android/keyguard/PasswordTextView$CharState$8;

    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$9;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$9;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->mWidthUpdater:Lcom/android/keyguard/PasswordTextView$CharState$9;

    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$10;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$10;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Lcom/android/keyguard/PasswordTextView$CharState$10;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/PasswordTextView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView$CharState;-><init>(Lcom/android/keyguard/PasswordTextView;)V

    return-void
.end method

.method public static cancelAnimator(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final startDotAppearAnimation(J)V
    .locals 9

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->mDotSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-static {v4}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-boolean v5, v4, Lcom/android/keyguard/BaseSecPasswordTextView;->mShowPassword:Z

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    const/high16 v7, 0x3fc00000    # 1.5f

    new-array v8, v3, [F

    aput v5, v8, v2

    aput v7, v8, v6

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, v4, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0xa0

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v3, [Landroid/animation/Animator;

    aput-object v5, v1, v2

    aput-object v4, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    new-array v3, v3, [F

    aput v4, v3, v2

    aput v7, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    sub-float/2addr v7, v1

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v7, v1

    float-to-long v3, v7

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    :goto_0
    iput-boolean v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final startRemoveAnimation(JJ)V
    .locals 10

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    cmpl-float v5, v5, v2

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    if-eqz v5, :cond_5

    :cond_4
    move v5, v3

    goto :goto_1

    :cond_5
    move v5, v4

    :goto_1
    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    cmpl-float v6, v6, v2

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    if-eqz v6, :cond_8

    :cond_7
    move v6, v3

    goto :goto_2

    :cond_8
    move v6, v4

    :goto_2
    const/high16 v7, 0x43200000    # 160.0f

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    new-array v8, v0, [F

    aput v1, v8, v4

    aput v2, v8, v3

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v8, p0, Lcom/android/keyguard/PasswordTextView$CharState;->mDotSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v8, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v8, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v8, v8, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v8, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v8, v7

    float-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextDisappearAnimation(J)V

    :cond_a
    if-eqz v6, :cond_b

    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    iget p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    new-array p2, v0, [F

    aput p1, p2, v4

    aput v2, p2, v3

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->mWidthUpdater:Lcom/android/keyguard/PasswordTextView$CharState$9;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$5;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->removeEndListener:Lcom/android/keyguard/PasswordTextView$CharState$1;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr p2, v7

    float-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    :cond_b
    return-void
.end method

.method public final startTextDisappearAnimation(J)V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    iget v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    aput v0, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->mTextSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$7;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$3;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v1, v1, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43200000    # 160.0f

    iget v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    mul-float/2addr v3, v1

    float-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    return-void
.end method
