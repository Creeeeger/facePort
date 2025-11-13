.class Lcom/samsung/android/settings/knox/BiometricLockTimer$2;
.super Ljava/lang/Object;
.source "BiometricLockTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/BiometricLockTimer;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/BiometricLockTimer;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$2;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$2;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->-$$Nest$fgetmOnTickListener(Lcom/samsung/android/settings/knox/BiometricLockTimer;)Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$2;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->-$$Nest$fgetmOnTickListener(Lcom/samsung/android/settings/knox/BiometricLockTimer;)Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;->onStop()V

    :cond_0
    return-void
.end method
