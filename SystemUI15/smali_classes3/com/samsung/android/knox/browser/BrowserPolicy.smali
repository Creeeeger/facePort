.class public Lcom/samsung/android/knox/browser/BrowserPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static TAG:Ljava/lang/String; = "BrowserPolicy"


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "browser_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/browser/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    iput-object p1, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method


# virtual methods
.method public addWebBookmarkBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.addWebBookmarkBitmap"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->addWebBookmarkBitmap(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed addWebBookmarkBitmap"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addWebBookmarkByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.addWebBookmarkByteBuffer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->addWebBookmarkByteBuffer(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;[B)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed addWebBookmarkByteBuffer"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearHttpProxy()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.clearHttpProxy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->clearHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public deleteWebBookmark(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.deleteWebBookmark"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->deleteWebBookmark(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed deleteWebBookmark"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAutoFillSetting()Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getBrowserSettingStatus(I)Z

    move-result p0

    return p0
.end method

.method public getBrowserSettingStatus(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getCookiesSetting()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getBrowserSettingStatus(I)Z

    move-result p0

    return p0
.end method

.method public getForceFraudWarningSetting()Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getBrowserSettingStatus(I)Z

    move-result p0

    return p0
.end method

.method public getHttpProxy()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->getHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getJavaScriptSetting()Z
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getBrowserSettingStatus(I)Z

    move-result p0

    return p0
.end method

.method public getPopupsSetting()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getBrowserSettingStatus(I)Z

    move-result p0

    return p0
.end method

.method public final getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    if-nez v0, :cond_0

    const-string v0, "browser_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/browser/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    return-object p0
.end method

.method public setAutoFillSetting(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.setAutoFillSetting"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->setBrowserSettingStatus(ZI)Z

    move-result p0

    return p0
.end method

.method public setBrowserSettingStatus(ZI)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->setBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCookiesSetting(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.setCookiesSetting"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->setBrowserSettingStatus(ZI)Z

    move-result p0

    return p0
.end method

.method public setForceFraudWarningSetting(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.setForceFraudWarningSetting"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->setBrowserSettingStatus(ZI)Z

    move-result p0

    return p0
.end method

.method public setHttpProxy(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.setHttpProxy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->setHttpProxy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setJavaScriptSetting(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.setJavaScriptSetting"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->setBrowserSettingStatus(ZI)Z

    move-result p0

    return p0
.end method

.method public setPopupsSetting(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.setPopupsSetting"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->setBrowserSettingStatus(ZI)Z

    move-result p0

    return p0
.end method
