.class public Lcom/samsung/android/isrb/IsrbManager;
.super Ljava/lang/Object;
.source "IsrbManager.java"


# static fields
.field private static final greylist IIsrbManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/samsung/android/isrb/IIsrbManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "IsrbManager"


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/isrb/IsrbManager$1;

    invoke-direct {v0}, Lcom/samsung/android/isrb/IsrbManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/isrb/IsrbManager;->IIsrbManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/isrb/IsrbManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static greylist getService()Lcom/samsung/android/isrb/IIsrbManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/isrb/IsrbManager;->IIsrbManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/isrb/IIsrbManager;

    return-object v0
.end method


# virtual methods
.method public blacklist isBootCompleteState()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/isrb/IsrbManager;->getService()Lcom/samsung/android/isrb/IIsrbManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/isrb/IIsrbManager;->isBootCompleteState()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "IsrbManager"

    const-string v3, "RemoteException in isBootCompleteState : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public blacklist setFakeTime()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/isrb/IsrbManager;->getService()Lcom/samsung/android/isrb/IIsrbManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/isrb/IIsrbManager;->setFakeTime()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IsrbManager"

    const-string v2, "RemoteException in setFakeTime : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public blacklist setIsrbEnable(Z)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/isrb/IsrbManager;->getService()Lcom/samsung/android/isrb/IIsrbManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/isrb/IIsrbManager;->setIsrbEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IsrbManager"

    const-string v2, "RemoteException in setIsrbEnable : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
