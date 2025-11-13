.class public Lcom/samsung/android/knox/AccessController;
.super Ljava/lang/Object;
.source "AccessController.java"


# direct methods
.method public static enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/samsung/android/knox/AccessController;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/AccessController;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string v0, "EnterpriseDeviceManager"

    const-string v1, "Failed talking with enterprise policy service"

    .line 60
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object p0
.end method

.method private static getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .locals 1

    const-string v0, "enterprise_policy"

    .line 68
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method public static throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 1

    .line 15
    iget-boolean p0, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-nez p0, :cond_0

    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be called on the parent instance"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
