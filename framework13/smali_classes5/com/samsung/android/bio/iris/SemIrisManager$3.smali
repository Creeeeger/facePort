.class Lcom/samsung/android/bio/iris/SemIrisManager$3;
.super Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback$Stub;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/iris/SemIrisManager;->addLockoutResetCallback(Lcom/samsung/android/bio/iris/SemIrisManager$LockoutResetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

.field final synthetic blacklist val$callback:Lcom/samsung/android/bio/iris/SemIrisManager$LockoutResetCallback;

.field final synthetic blacklist val$powerManager:Landroid/os/PowerManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/os/PowerManager;Lcom/samsung/android/bio/iris/SemIrisManager$LockoutResetCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/bio/iris/SemIrisManager;

    .line 3684
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$3;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$3;->val$powerManager:Landroid/os/PowerManager;

    iput-object p3, p0, Lcom/samsung/android/bio/iris/SemIrisManager$3;->val$callback:Lcom/samsung/android/bio/iris/SemIrisManager$LockoutResetCallback;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onLockoutReset(J)V
    .locals 3
    .param p1, "deviceId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3692
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$3;->val$powerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "lockoutResetCallback"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 3694
    .local v0, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3696
    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$3;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/bio/iris/SemIrisManager$3$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/bio/iris/SemIrisManager$3$1;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager$3;Landroid/os/PowerManager$WakeLock;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3716
    return-void
.end method
