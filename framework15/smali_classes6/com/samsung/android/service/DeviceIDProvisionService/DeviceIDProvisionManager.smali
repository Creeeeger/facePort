.class public Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;
.super Ljava/lang/Object;
.source "DeviceIDProvisionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;,
        Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;,
        Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;,
        Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;,
        Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionWorker;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DeviceIDProvisionManager"


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minstallDeviceID(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;->installDeviceID(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "_nativeJni.dk.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private native blacklist installDeviceID(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static blacklist isAvailable()Z
    .locals 11

    const-string v0, "ro.factory.factory_binary"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ro.boot.em.status"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    nop

    const-string v3, "ro.product.first_api_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x21

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    nop

    const-string v6, "ro.vendor.build.version.sdk"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    nop

    const-string v6, "ro.build.flavor"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "a14m"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "a14xm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "a24"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "a34x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v6, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v2

    :goto_3
    if-eqz v3, :cond_5

    if-nez v4, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    move v7, v2

    goto :goto_4

    :cond_5
    move v7, v5

    :goto_4
    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Device ID provision attributes: [factory binary = %b, production device = %b, device ID attestation support = %b]"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "DeviceIDProvisionManager"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-nez v7, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->getInstance()Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->isProvisioned()Z

    move-result v5

    xor-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, "Device ID provision criteria: [first boot = %b]"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    :goto_5
    return v5
.end method


# virtual methods
.method public blacklist provisionForATCommand(I)I
    .locals 3

    new-instance v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;-><init>(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker-IA;)V

    const/16 v1, 0x3e8

    const/16 v2, 0xa

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;->setupSynchronous(II)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDProvisionSynchronousWorker;->provisionDeviceID(I)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    const-string v1, "DeviceIDProvisionManager"

    const-string v2, "Successfully provisioned device ID requested externally."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    const/16 v2, -0x2cf8

    return v2
.end method

.method public blacklist provisionForFirstBoot()V
    .locals 4

    new-instance v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;

    const/16 v1, 0x3e8

    const/16 v2, 0x12c

    const v3, 0x493e0

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;-><init>(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;III)V

    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorker;->start()V

    return-void
.end method
