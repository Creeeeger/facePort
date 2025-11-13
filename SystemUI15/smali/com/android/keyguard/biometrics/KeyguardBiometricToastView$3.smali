.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

.field public final synthetic val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimHandler:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimHandler:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimHandler:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const-string p1, "KeyguardBiometricToastView"

    const-string v0, "disappearAnimation end"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    sget v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIconFrom:F

    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->reset()V

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iget-object v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBiometricToastViewStateUpdater:Ljava/util/function/Consumer;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimHandler:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimHandler:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method
