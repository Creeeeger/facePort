.class Lcom/samsung/android/settings/knox/BiometricLockTimer$1;
.super Ljava/util/TimerTask;
.source "BiometricLockTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/BiometricLockTimer;->start()V
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

    .line 56
    iput-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$1;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$1;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/knox/BiometricLockTimer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/knox/BiometricLockTimer$TickRunnable;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$1;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-static {v2}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->-$$Nest$fgetmCount(Lcom/samsung/android/settings/knox/BiometricLockTimer;)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/settings/knox/BiometricLockTimer$TickRunnable;-><init>(Lcom/samsung/android/settings/knox/BiometricLockTimer;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$1;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->-$$Nest$fgetmCount(Lcom/samsung/android/settings/knox/BiometricLockTimer;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->-$$Nest$fputmCount(Lcom/samsung/android/settings/knox/BiometricLockTimer;J)V

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$1;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->-$$Nest$fgetmTimer(Lcom/samsung/android/settings/knox/BiometricLockTimer;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$1;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->-$$Nest$fgetmTimer(Lcom/samsung/android/settings/knox/BiometricLockTimer;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$1;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->-$$Nest$fputmTimer(Lcom/samsung/android/settings/knox/BiometricLockTimer;Ljava/util/Timer;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$1;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/knox/BiometricLockTimer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/knox/BiometricLockTimer$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/knox/BiometricLockTimer$1$1;-><init>(Lcom/samsung/android/settings/knox/BiometricLockTimer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
