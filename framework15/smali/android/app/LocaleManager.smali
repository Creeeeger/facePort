.class public Landroid/app/LocaleManager;
.super Ljava/lang/Object;
.source "LocaleManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LocaleManager"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Landroid/app/ILocaleManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/ILocaleManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/LocaleManager;->mService:Landroid/app/ILocaleManager;

    return-void
.end method

.method private blacklist setApplicationLocales(Ljava/lang/String;Landroid/os/LocaleList;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/LocaleManager;->mService:Landroid/app/ILocaleManager;

    iget-object v1, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/ILocaleManager;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public whitelist getApplicationLocales()Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/LocaleManager;->getApplicationLocales(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationLocales(Ljava/lang/String;)Landroid/os/LocaleList;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/LocaleManager;->mService:Landroid/app/ILocaleManager;

    iget-object v1, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/ILocaleManager;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOverrideLocaleConfig()Landroid/app/LocaleConfig;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/app/LocaleManager;->mService:Landroid/app/ILocaleManager;

    iget-object v1, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/ILocaleManager;->getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSystemLocales()Landroid/os/LocaleList;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/LocaleManager;->mService:Landroid/app/ILocaleManager;

    invoke-interface {v0}, Landroid/app/ILocaleManager;->getSystemLocales()Landroid/os/LocaleList;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setApplicationLocales(Landroid/os/LocaleList;)V
    .locals 2

    iget-object v0, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/app/LocaleManager;->setApplicationLocales(Ljava/lang/String;Landroid/os/LocaleList;Z)V

    return-void
.end method

.method public whitelist setApplicationLocales(Ljava/lang/String;Landroid/os/LocaleList;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/LocaleManager;->setApplicationLocales(Ljava/lang/String;Landroid/os/LocaleList;Z)V

    return-void
.end method

.method public whitelist setOverrideLocaleConfig(Landroid/app/LocaleConfig;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/app/LocaleManager;->mService:Landroid/app/ILocaleManager;

    iget-object v1, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/app/ILocaleManager;->setOverrideLocaleConfig(Ljava/lang/String;ILandroid/app/LocaleConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSystemLocales(Landroid/os/LocaleList;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
