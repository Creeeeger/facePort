.class public final Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->setShownState(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShownByTouch:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsPaused:Z

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHideRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->-$$Nest$msetButtonDisable(Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaption:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
