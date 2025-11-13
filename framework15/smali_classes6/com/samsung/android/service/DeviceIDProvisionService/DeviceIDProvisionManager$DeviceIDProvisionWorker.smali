.class Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionWorker;
.super Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;
.source "DeviceIDProvisionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceIDProvisionWorker"
.end annotation


# instance fields
.field private blacklist setupCompleted:Z

.field final synthetic blacklist this$0:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionWorker;->this$0:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;-><init>(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase-IA;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionWorker;->setupCompleted:Z

    return-void
.end method

.method public static blacklist isSupportGAKDeviceID()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isSupportStrongboxDeviceID()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist provisionDeviceID(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionWorker;->setupCompleted:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->provisionDeviceID(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Device ID provision requested but setup is not completed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setupProvisionContext()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionWorker;->setupCompleted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->setupProvisionContext()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionWorker;->setupCompleted:Z

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionWorker;->setupCompleted:Z

    return v0
.end method
