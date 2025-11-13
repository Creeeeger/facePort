.class public Lcom/samsung/android/multiwindow/BlinkEffectPopup;
.super Landroid/view/View;
.source "BlinkEffectPopup.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BlinkEffectPopup"


# instance fields
.field private blacklist mAnimatorSet:Landroid/animation/AnimatorSet;

.field private blacklist mFrameDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mIsActivated:Z

.field private blacklist mOnStateChangeListener:Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mIsActivated:Z

    .line 38
    iput-object p2, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mOnStateChangeListener:Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;

    .line 40
    if-eqz p2, :cond_0

    .line 41
    invoke-interface {p2, v0}, Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;->onStateChanged(Z)V

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 45
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x10809d5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mFrameDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 48
    .local v3, "anim1":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    sget-object v4, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_10:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 50
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 52
    new-array v4, v2, [I

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 53
    .local v4, "anim2":Landroid/animation/ValueAnimator;
    invoke-virtual {v4, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    sget-object v5, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_10:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 58
    invoke-virtual {v5, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    iget-object v5, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    aput-object v4, v2, v0

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 60
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x42
    .end array-data

    :array_1
    .array-data 4
        0x42
        0x0
    .end array-data
.end method

.method public static blacklist animate(Landroid/content/Context;Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;

    .line 63
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 64
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 65
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 66
    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 68
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    .line 71
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 73
    .local v1, "wm":Landroid/view/WindowManager;
    :try_start_0
    new-instance v2, Lcom/samsung/android/multiwindow/BlinkEffectPopup;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/multiwindow/BlinkEffectPopup;-><init>(Landroid/content/Context;Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;)V

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "BlinkEffectPopup"

    const-string v4, "Can not animate for the blinking effect"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 100
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mFrameDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mFrameDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    return-void
.end method

.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 133
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mIsActivated:Z

    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "BlinkEffectPopup"

    const-string v2, "Can not remove a view for the blinking effect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mIsActivated:Z

    .line 140
    iget-object v1, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mOnStateChangeListener:Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;

    if-eqz v1, :cond_0

    .line 141
    invoke-interface {v1, v0}, Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;->onStateChanged(Z)V

    .line 144
    :cond_0
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 118
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mIsActivated:Z

    if-eqz v0, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "BlinkEffectPopup"

    const-string v2, "Can not remove a view for the blinking effect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mIsActivated:Z

    .line 125
    iget-object v1, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mOnStateChangeListener:Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;

    if-eqz v1, :cond_0

    .line 126
    invoke-interface {v1, v0}, Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;->onStateChanged(Z)V

    .line 129
    :cond_0
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 148
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 114
    return-void
.end method

.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 107
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 108
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mFrameDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->invalidate()V

    .line 110
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 2

    .line 81
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mIsActivated:Z

    .line 83
    iget-object v1, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mOnStateChangeListener:Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;

    if-eqz v1, :cond_0

    .line 84
    invoke-interface {v1, v0}, Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;->onStateChanged(Z)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 87
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    .line 91
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mIsActivated:Z

    .line 93
    iget-object v1, p0, Lcom/samsung/android/multiwindow/BlinkEffectPopup;->mOnStateChangeListener:Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;

    if-eqz v1, :cond_0

    .line 94
    invoke-interface {v1, v0}, Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;->onStateChanged(Z)V

    .line 96
    :cond_0
    return-void
.end method
