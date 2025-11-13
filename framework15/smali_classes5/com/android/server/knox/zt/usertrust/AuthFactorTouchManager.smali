.class public Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;
.super Ljava/lang/Object;
.source "AuthFactorTouchManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AuthFactorTouchManager"

.field private static blacklist mAuthFactorTouchManager:Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;


# instance fields
.field private blacklist isEnableListenerRegistered:Z

.field private blacklist isServiceConnected:Z

.field private final blacklist mAuthTouchEventListener:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/knox/zt/usertrust/IAuthTouchEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->mAuthTouchEventListener:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->isServiceConnected:Z

    iput-boolean v0, p0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->isEnableListenerRegistered:Z

    iput-object p1, p0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private blacklist connectService()V
    .locals 0

    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;
    .locals 1

    sget-object v0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->mAuthFactorTouchManager:Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

    invoke-direct {v0, p0}, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->mAuthFactorTouchManager:Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

    :cond_0
    sget-object v0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->mAuthFactorTouchManager:Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

    return-object v0
.end method

.method private blacklist isServiceInstalled(Landroid/content/ComponentName;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    return v0
.end method


# virtual methods
.method public blacklist isEnableListenerRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->isEnableListenerRegistered:Z

    return v0
.end method

.method public blacklist isServiceConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->isServiceConnected:Z

    return v0
.end method

.method public blacklist onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->mAuthTouchEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->mAuthTouchEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/zt/usertrust/IAuthTouchEventListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/zt/usertrust/IAuthTouchEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "AuthFactorTouchManager"

    const-string v3, "Failed to notify AuthTouchEventListener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->mAuthTouchEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public blacklist registerAuthTouchEventListener(Lcom/samsung/android/knox/zt/usertrust/IAuthTouchEventListener;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerAuthTouchEventListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthFactorTouchManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->mAuthTouchEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setTouchEvent(ZZ)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unregisterAuthTouchEventListener(Lcom/samsung/android/knox/zt/usertrust/IAuthTouchEventListener;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterAuthTouchEventListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthFactorTouchManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->mAuthTouchEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    const/4 v0, 0x1

    return v0
.end method
