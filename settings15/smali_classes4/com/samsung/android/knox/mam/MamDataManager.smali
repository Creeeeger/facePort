.class public Lcom/samsung/android/knox/mam/MamDataManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final KNOX_CUSTOM_MANAGER_SERVICE:Ljava/lang/String; = "knoxcustom"

.field public static final TAG:Ljava/lang/String; = "MamDataManager"

.field public static sContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public static sMamDeviceManager:Lcom/samsung/android/knox/mam/MamDataManager;


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/mam/MamDataManager;
    .locals 4

    const-class v0, Lcom/samsung/android/knox/mam/MamDataManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/mam/MamDataManager;->sMamDeviceManager:Lcom/samsung/android/knox/mam/MamDataManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/mam/MamDataManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/mam/MamDataManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/mam/MamDataManager;->sMamDeviceManager:Lcom/samsung/android/knox/mam/MamDataManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/mam/MamDataManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/mam/MamDataManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZ)V

    sput-object v1, Lcom/samsung/android/knox/mam/MamDataManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    :cond_2
    :goto_1
    sget-object v1, Lcom/samsung/android/knox/mam/MamDataManager;->sMamDeviceManager:Lcom/samsung/android/knox/mam/MamDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final getContentResolver()Landroid/content/ContentResolver;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "getSystemContext"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object p0
.end method

.method public isKnoxPrivacyPolicyAcceptedInitially()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isKnoxPrivacyPolicyAcceptedOrWithdrawnByUserSettings()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/mam/MamDataManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isKnoxPrivacyPolicyAcceptedOrWithdrawnByUserSettings()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "MamDataManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setKnoxPrivacyPolicyByUserSettings(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/mam/MamDataManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setKnoxPrivacyPolicyByUserSettings(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MamDataManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
