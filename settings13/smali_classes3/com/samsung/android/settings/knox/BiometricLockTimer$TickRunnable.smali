.class Lcom/samsung/android/settings/knox/BiometricLockTimer$TickRunnable;
.super Ljava/lang/Object;
.source "BiometricLockTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/BiometricLockTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TickRunnable"
.end annotation


# instance fields
.field private mSetCount:J

.field final synthetic this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/BiometricLockTimer;J)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$TickRunnable;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p2, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$TickRunnable;->mSetCount:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$TickRunnable;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->-$$Nest$fgetmOnTickListener(Lcom/samsung/android/settings/knox/BiometricLockTimer;)Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$TickRunnable;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->-$$Nest$fgetmOnTickListener(Lcom/samsung/android/settings/knox/BiometricLockTimer;)Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$TickRunnable;->mSetCount:J

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;->onTick(J)V

    :cond_0
    return-void
.end method
