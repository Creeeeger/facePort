.class public Lcom/samsung/android/knox/analytics/util/UserManagerHelper;
.super Ljava/lang/Object;
.source "UserManagerHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist USER_TYPE_APP_SEPARATION:I = 0xb

.field private static final blacklist USER_TYPE_COWP:I = 0x9

.field private static final blacklist USER_TYPE_DO:I = 0x2

.field private static final blacklist USER_TYPE_PO:I = 0x0

.field private static final blacklist USER_TYPE_REGULAR:I = 0x7

.field private static final blacklist USER_TYPE_SECURE_FOLDER:I = 0x8


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

.field private blacklist mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v1, "getDevicePolicyManagerService(): could not get DevicePolicyManager!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method private blacklist getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getUserManager()Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private blacklist isCOWP()Z
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v4, "isDoActive(): Exception in DPMS.hasDeviceOwner - "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method


# virtual methods
.method public blacklist getDoPackageName()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const-string v1, ""

    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0, v2}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v4, "isDoActive(): Exception in DPMS.getDeviceOwnerComponent - "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object v2, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoPackageName(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public blacklist getPoPackageName()Ljava/lang/String;
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    const-string v3, ""

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    :try_start_1
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v6}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v7

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v6

    sget-object v7, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v8, "getPoPackageName() - Remote exception: "

    invoke-static {v7, v8, v6}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    goto :goto_0

    :cond_2
    sget-object v4, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPoPackageName(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catch_1
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v5, "getPoPackageName() - Runtime exception: "

    invoke-static {v4, v5, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_3
    :goto_2
    return-object v2
.end method

.method public blacklist getPoPackageName(I)Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const-string v1, ""

    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v4, "getPoPackageName() - Remote exception: "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object v2, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPoPackageName(int userId): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public blacklist getUserType(I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v2, "getUserType(): UserInfo is null!"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    return v1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xb

    return v1

    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isCOWP()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x9

    return v1

    :cond_4
    const/4 v1, 0x0

    return v1

    :cond_5
    const/4 v1, 0x7

    return v1
.end method

.method public blacklist isAnyPOActive()Z
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    :try_start_1
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v6}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v6

    sget-object v7, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v8, "isAnyPOActive() - Remote exception: "

    invoke-static {v7, v8, v6}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    goto :goto_0

    :cond_3
    sget-object v4, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAnyPOActive(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catch_1
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v5, "isAnyPOActive() - Runtime exception: "

    invoke-static {v4, v5, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public blacklist isDoActive()Z
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->hasDeviceOwner()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v4, "isDoActive(): Exception in DPMS.hasDeviceOwner - "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object v2, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDoActive(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
