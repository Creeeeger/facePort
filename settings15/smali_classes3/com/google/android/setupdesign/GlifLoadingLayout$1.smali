.class public final Lcom/google/android/setupdesign/GlifLoadingLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/setupdesign/GlifLoadingLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/GlifLoadingLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout$1;->this$0:Lcom/google/android/setupdesign/GlifLoadingLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Animate enable:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/setupdesign/GlifLoadingLayout$1;->this$0:Lcom/google/android/setupdesign/GlifLoadingLayout;

    sget v0, Lcom/google/android/setupdesign/GlifLoadingLayout;->MIN_ALLOWED_ILLUSTRATION_HEIGHT_RATIO:F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "animator_duration_scale"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :catch_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ". Animation end."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlifLoadingLayout"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout$1;->this$0:Lcom/google/android/setupdesign/GlifLoadingLayout;

    iget-boolean p1, p1, Lcom/google/android/setupdesign/GlifLoadingLayout;->workFinished:Z

    if-eqz p1, :cond_0

    const-string p1, "GlifLoadingLayout"

    const-string v0, "Animation repeat but work finished, run the register runnable."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout$1;->this$0:Lcom/google/android/setupdesign/GlifLoadingLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLoadingLayout;->finishRunnable(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/google/android/setupdesign/GlifLoadingLayout$1;->this$0:Lcom/google/android/setupdesign/GlifLoadingLayout;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->workFinished:Z

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
