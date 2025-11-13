.class Lcom/samsung/android/camera/iris/SemIrisManager$3$1;
.super Ljava/lang/Object;
.source "SemIrisManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/iris/SemIrisManager$3;->onLockoutReset(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/camera/iris/SemIrisManager$3;

.field final synthetic blacklist val$wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/camera/iris/SemIrisManager$3;Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/camera/iris/SemIrisManager$3;

    .line 1672
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3$1;->this$1:Lcom/samsung/android/camera/iris/SemIrisManager$3;

    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 1676
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3$1;->this$1:Lcom/samsung/android/camera/iris/SemIrisManager$3;

    iget-object v0, v0, Lcom/samsung/android/camera/iris/SemIrisManager$3;->val$callback:Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;->onLockoutReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1678
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1679
    nop

    .line 1680
    return-void

    .line 1678
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$3$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1679
    throw v0
.end method
