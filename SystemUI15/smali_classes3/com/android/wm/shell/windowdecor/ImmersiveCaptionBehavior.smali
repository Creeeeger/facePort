.class public final Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCaption:Landroid/view/View;

.field public final mCaptionHeight:I

.field public mDownTime:J

.field public mDownY:F

.field public final mHandler:Landroid/os/Handler;

.field public final mHide:Landroid/animation/Animator;

.field public final mHideRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

.field public mIsPaused:Z

.field public mIsShowing:Z

.field public mPositionToShow:I

.field public final mShow:Landroid/animation/Animator;

.field public final mShowRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

.field public mShownByTouch:Z

.field public final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public static -$$Nest$msetButtonDisable(Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_0

    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaption:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaption:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_2

    const/16 v4, 0x8

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Handler;Landroid/view/View;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;I)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShowRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;I)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHideRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShownByTouch:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsPaused:Z

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaption:Landroid/view/View;

    iput p4, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaptionHeight:I

    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    const/4 p4, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [F

    aput p2, v3, v1

    aput p4, v3, v2

    invoke-static {p3, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShow:Landroid/animation/Animator;

    const-wide/16 v3, 0x12c

    invoke-virtual {p2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v5, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;

    invoke-direct {v6, p0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;-><init>(Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;)V

    invoke-virtual {p2, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    new-array v0, v0, [F

    aput p4, v0, v1

    aput p2, v0, v2

    invoke-static {p3, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHide:Landroid/animation/Animator;

    invoke-virtual {p1, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$2;-><init>(Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImmersiveCaptionBehavior_hide: callers="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    const-string v2, "MultiTaskingWindowDecorationViewHolder"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHide:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHide:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method public final pause()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHideRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImmersiveCaptionBehavior_pause: Remove hide runnable, callers="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    const-string v2, "MultiTaskingWindowDecorationViewHolder"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsPaused:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShownByTouch:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->show()V

    return-void
.end method

.method public final setShownState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    const-string p0, "ImmersiveCaptionBehavior_setShownState="

    const-string v0, ", callers="

    invoke-static {p0, v0, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 p1, 0x3

    const-string v0, "MultiTaskingWindowDecorationViewHolder"

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHide:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    const-string v1, "MultiTaskingWindowDecorationViewHolder"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHide:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const-string v0, "ImmersiveCaptionBehavior_show: cancel hide anim"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ImmersiveCaptionBehavior_show: callers="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShow:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShow:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method
