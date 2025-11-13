.class Lcom/samsung/android/settings/knox/BiometricLockTimer$1$1;
.super Ljava/lang/Object;
.source "BiometricLockTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/BiometricLockTimer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/knox/BiometricLockTimer$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/BiometricLockTimer$1;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$1$1;->this$1:Lcom/samsung/android/settings/knox/BiometricLockTimer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$1$1;->this$1:Lcom/samsung/android/settings/knox/BiometricLockTimer$1;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/BiometricLockTimer$1;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->-$$Nest$fgetmOnTickListener(Lcom/samsung/android/settings/knox/BiometricLockTimer;)Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$1$1;->this$1:Lcom/samsung/android/settings/knox/BiometricLockTimer$1;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$1;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->-$$Nest$fgetmOnTickListener(Lcom/samsung/android/settings/knox/BiometricLockTimer;)Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;->onEnd()V

    :cond_0
    return-void
.end method
