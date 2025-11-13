.class public Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static TAG:Ljava/lang/String; = "DeviceSecurityPolicy"

.field public static final WIPE_EXTERNAL_MEMORY:I = 0x2

.field public static final WIPE_INTERNAL_EXTERNAL_MEMORY:I = 0x3

.field public static final WIPE_INTERNAL_MEMORY:I = 0x1


# instance fields
.field public mContext:Landroid/content/Context;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

.field public mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addClipboardTextData(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addClipboardTextData"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.addClipboardTextData"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->enforceOwnerOnlyAndClipboardPermission(Landroid/content/Context;)V

    const-string/jumbo v0, "simple text"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContext:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearClipboardData()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "clearClipboardData"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "DeviceSecurityPolicy.clearClipboardData"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final enforceOwnerOnlyAndClipboardPermission(Landroid/content/Context;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance p1, Ljava/util/ArrayList;

    const-string v0, "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, p1}, Lcom/samsung/android/knox/AccessController;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public getClipboardTextData()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getClipboardTextData"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->enforceOwnerOnlyAndClipboardPermission(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContext:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final getMiscService()Lcom/samsung/android/knox/IMiscPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v0, :cond_0

    const-string v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    return-object p0
.end method

.method public getRequireDeviceEncryption(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->getRequireDeviceEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with DeviceSecurityPolicy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->getRequireStorageCardEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with DeviceSecurityPolicy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "security_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    return-object p0
.end method

.method public isExternalStorageEncrypted()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISecurityPolicy;->isExternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with DeviceSecurityPolicy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInternalStorageEncrypted()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isInternalStorageEncrypted"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.isInternalStorageEncrypted"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISecurityPolicy;->isInternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with DeviceSecurityPolicy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setExternalStorageEncryption(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.setExternalStorageEncryption"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->setExternalStorageEncryption(Lcom/samsung/android/knox/ContextInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with DeviceSecurityPolicy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setInternalStorageEncryption(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "setInternalStorageEncryption"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.setInternalStorageEncryption"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->setInternalStorageEncryption(Lcom/samsung/android/knox/ContextInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with DeviceSecurityPolicy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.setRequireDeviceEncryption"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISecurityPolicy;->setRequireDeviceEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with DeviceSecurityPolicy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.setRequireStorageCardEncryption"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISecurityPolicy;->setRequireStorageCardEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with DeviceSecurityPolicy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public wipeDevice(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.wipeDevice"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->wipeDevice(Lcom/samsung/android/knox/ContextInfo;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with DeviceSecurityPolicy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
