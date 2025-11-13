.class public Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ALL_ACCOUNTS:Ljava/lang/String; = ".*"

.field public static TAG:Ljava/lang/String; = "DeviceAccountPolicy"


# instance fields
.field public final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

.field public mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method


# virtual methods
.method public addAccountsToAdditionBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.addAccountsToAdditionBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->addAccountsToAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with Device Account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addAccountsToAdditionWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.addAccountsToAdditionWhiteList(String, List<String>)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->addAccountsToAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with Device Account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addAccountsToAdditionWhiteList(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.addAccountsToAdditionWhiteList(String, List<String>, boolean)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->addAccountsToAdditionBlackList(Ljava/lang/String;Ljava/util/List;)Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p3, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed to update wildCard in Blacklist, Wildcard may be already present!"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->addAccountsToAdditionWhiteList(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public addAccountsToRemovalBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.addAccountsToRemovalBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->addAccountsToRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with Device Account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addAccountsToRemovalWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.addAccountsToRemovalWhiteList(String, List<String>)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->addAccountsToRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with Device Account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addAccountsToRemovalWhiteList(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.addAccountsToRemovalWhiteList(String, List<String>, boolean)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->addAccountsToRemovalBlackList(Ljava/lang/String;Ljava/util/List;)Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p3, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed to update wildCard in Blacklist, Wildcard may be already present!"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->addAccountsToRemovalWhiteList(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public clearAccountsFromAdditionBlackList(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.clearAccountsFromAdditionBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->clearAccountsFromAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Device Account policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearAccountsFromAdditionList(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.clearAccountsFromAdditionList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->clearAccountsFromAdditionWhiteList(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->clearAccountsFromAdditionBlackList(Ljava/lang/String;)Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearAccountsFromAdditionWhiteList(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.clearAccountsFromAdditionWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->clearAccountsFromAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Device Account policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearAccountsFromRemovalBlackList(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.clearAccountsFromRemovalBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->clearAccountsFromRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Device Account policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearAccountsFromRemovalList(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.clearAccountsFromRemovalList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->clearAccountsFromRemovalWhiteList(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->clearAccountsFromRemovalBlackList(Ljava/lang/String;)Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearAccountsFromRemovalWhiteList(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.clearAccountsFromRemovalWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->clearAccountsFromRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Device Account policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAccountsFromAdditionBlackLists(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->getAccountsFromAdditionBlackLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Device Account policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAccountsFromAdditionWhiteLists(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->getAccountsFromAdditionWhiteLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Device Account policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAccountsFromRemovalBlackLists(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->getAccountsFromRemovalBlackLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Device Account policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAccountsFromRemovalWhiteLists(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.getAccountsFromRemovalWhiteLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->getAccountsFromRemovalWhiteLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Device Account policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "security_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    if-nez v0, :cond_0

    const-string v0, "device_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    return-object p0
.end method

.method public getSupportedAccountTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->getSupportedAccountTypes()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with Device Account policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with Device Account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with Device Account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with Device Account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public removeAccountsByType(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.removeAccountsByType"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->removeAccountsByType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Security policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeAccountsFromAdditionBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.removeAccountsFromAdditionBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->removeAccountsFromAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with Device Account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeAccountsFromAdditionWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.removeAccountsFromAdditionWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->removeAccountsFromAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with Device Account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeAccountsFromRemovalBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.removeAccountsFromRemovalBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->removeAccountsFromRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with Device Account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeAccountsFromRemovalWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.removeAccountsFromRemovalWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->removeAccountsFromRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with Device Account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
