.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStopCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->stopVI()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStopCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->stopVI()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method
