.class public abstract Lcom/samsung/android/knox/ddar/DualDARClient;
.super Landroid/app/Service;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/knox/ddar/IDualDARClient;


# static fields
.field public static final DUAL_DAR_SDK_VERSION_1_0_0:Ljava/lang/String; = "1.0.0"

.field public static final ERROR_FAILURE:I = -0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final FEATURE_RESET_PASSWORD:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "DualDARClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private bindClient(Lcom/samsung/android/knox/ddar/IDualDARClient;)Landroid/os/IBinder;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ddar/DualDARManager;->bindClient(Lcom/samsung/android/knox/ddar/IDualDARClient;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static getFileSystemLog(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFileSystemLog(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public getDualDARUsers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getDualDARUsers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledClientLibraryVersion()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstalledClientLibraryVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public installLibrary(Ljava/lang/String;Ljava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ddar/DualDARManager;->installLibrary(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public abstract isSupported(I)Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    invoke-direct {p0, p0}, Lcom/samsung/android/knox/ddar/DualDARClient;->bindClient(Lcom/samsung/android/knox/ddar/IDualDARClient;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public abstract onClearResetPasswordToken(IJ)V
.end method

.method public abstract onClientBringup()Z
.end method

.method public abstract onDataLockStateChange(IZ)V
.end method

.method public abstract onDualDARDestroyForUser(I)Z
.end method

.method public abstract onDualDARSetupForUser(I)Z
.end method

.method public abstract onPasswordAuth(I[B)Z
.end method

.method public abstract onPasswordChange(I[B[B)Z
.end method

.method public abstract onResetPasswordWithToken(I[BJ[B)Z
.end method

.method public abstract onSetResetPasswordToken(I[BJ[B)Z
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public setSecret(ILjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Byte;

    array-length v3, v3

    new-array v3, v3, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Byte;

    array-length v6, v6

    if-ge v5, v6, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Byte;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v3, v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Byte;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/samsung/android/knox/ddar/Secret;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Lcom/samsung/android/knox/ddar/Secret;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    invoke-static {p0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->setSecret(ILjava/util/List;)V

    return-void
.end method
