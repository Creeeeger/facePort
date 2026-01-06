.class Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$2;
.super Ljava/lang/Object;
.source "VisualEffectContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->loadCustomizedAnimation(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$2;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$2;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$2;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$2;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->access$300(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$2;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$2;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$2;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->access$300(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
