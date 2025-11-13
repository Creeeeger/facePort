.class public Lcom/samsung/android/knox/ex/PermissionChecker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String; = "PermissionChecker"

.field public static mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;IILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static enforceKnoxAccessPermission(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "PermissionChecker"

    invoke-static {}, Lcom/samsung/android/knox/ex/PermissionChecker;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/ex/PermissionChecker;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceKnoxV2VerifyCaller(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/PermissionChecker;->checkPermission(Landroid/content/Context;IILjava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p0}, Lcom/samsung/android/knox/ex/PermissionChecker;->isOrganizationOwnedDeviceWithManagedProfile(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "This API is works only with managedProfile(WPC)"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/knox/ex/PermissionChecker;->hasDeviceOwner(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "This API is works only with managed device(DO)"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-nez v1, :cond_5

    invoke-static {p0, p1, p2, p4}, Lcom/samsung/android/knox/ex/PermissionChecker;->checkPermission(Landroid/content/Context;IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Application doesn\'t have this permission:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p0

    const-string p1, "Failed talking with enterprise policy service"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method public static enforceKnoxAccessPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/ex/PermissionChecker;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/ex/PermissionChecker;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceKnoxV2Permission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PermissionChecker"

    const-string v0, "Failed talking with enterprise policy service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 1

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public static getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ex/PermissionChecker;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ex/PermissionChecker;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/ex/PermissionChecker;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    return-object v0
.end method

.method public static getUserManager(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 1

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public static hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/ex/PermissionChecker;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/ex/PermissionChecker;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "PermissionChecker"

    const-string p2, "Failed talking with enterprise policy service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasDeviceOwner(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/PermissionChecker;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isManagedProfile(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/PermissionChecker;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result p0

    return p0
.end method

.method public static isOrganizationOwnedDeviceWithManagedProfile(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/PermissionChecker;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p0

    return p0
.end method
