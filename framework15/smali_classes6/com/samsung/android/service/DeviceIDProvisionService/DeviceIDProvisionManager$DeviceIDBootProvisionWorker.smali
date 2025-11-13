.class Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;
.super Ljava/lang/Thread;
.source "DeviceIDProvisionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceIDBootProvisionWorker"
.end annotation


# instance fields
.field private final blacklist initialWaitTimeMs:I

.field private final blacklist maxWaitCount:I

.field private final blacklist retryWaitTimeMs:I

.field final synthetic blacklist this$0:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

.field private final blacklist worker:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;->this$0:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance p1, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;

    iget-object v0, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;->this$0:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;-><init>(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker-IA;)V

    iput-object p1, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;->worker:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;

    const-string p1, "Illegal wait time provided. Expected positive number. [wait time = %d]"

    if-lez p2, :cond_2

    if-lez p3, :cond_1

    if-ltz p4, :cond_0

    iput p2, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;->initialWaitTimeMs:I

    iput p3, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;->retryWaitTimeMs:I

    iput p4, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;->maxWaitCount:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Illegal max wait count provided. Expected nonnegative number. [max wait count = %d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    const-string v0, "DeviceIDProvisionManager"

    :try_start_0
    iget v1, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;->initialWaitTimeMs:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    const-string v2, "Initial wait was interrupted while waiting for Device ID boot provision. Ignoring."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->getInstance()Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->isProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Boot provision was disabled. It will be tried after another reboot."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;->worker:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;

    iget v2, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;->retryWaitTimeMs:I

    iget v3, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;->maxWaitCount:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;->setupSynchronous(II)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    const/4 v1, -0x1

    invoke-static {}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionWorker;->isSupportGAKDeviceID()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;->worker:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;->provisionDeviceID(I)I

    move-result v2

    move v1, v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provisionDeviceID for SKeymaster failed. ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionWorker;->isSupportStrongboxDeviceID()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;->worker:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;->provisionDeviceID(I)I

    move-result v2

    move v1, v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provisionDeviceID for StrongboxKeymaster failed. ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    invoke-static {}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->getInstance()Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->setProvisioned()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to set boot provisioned status. [ret = %d]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v2, "provisionDeviceID success"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    return-void
.end method
