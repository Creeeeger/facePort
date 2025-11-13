.class Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;
.super Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionWorker;
.source "DeviceIDProvisionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceIDProvisionSynchronousWorker"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;->this$0:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

    invoke-direct {p0, p1}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionWorker;-><init>(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;-><init>(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;)V

    return-void
.end method


# virtual methods
.method public blacklist setupSynchronous(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    if-lez p1, :cond_3

    if-ltz p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;->setupProvisionContext()Z

    move-result v1

    if-nez v1, :cond_1

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Device ID provision setup trial %d failed. Waiting before retry."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceIDProvisionManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v0, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    int-to-long v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_0
    const-string v1, "Device ID provision wait count expired."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to setup Device ID provision context due to timeout. [wait time = %d(ms), max wait count = %d]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Illegal max wait count provided. Expected nonnegative number. [max wait count = %d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Illegal wait time provided. Expected positive number. [wait time = %d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
