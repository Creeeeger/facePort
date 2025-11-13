.class public Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static MAXIMUM_APNS_OVER_IPC:I = 0x3e8

.field public static TAG:Ljava/lang/String; = "ApnSettingsPolicy"


# instance fields
.field public lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static generateToken(II)I
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public createApnSettings(Lcom/samsung/android/knox/net/apn/ApnSettings;)J
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApnSettingsPolicy.createApnSettings"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :try_start_0
    sget v2, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "IP"

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-wide v0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x1

    invoke-interface {v2, p0, v3, p1}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J

    move-result-wide v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at update APN Settings policy "

    invoke-static {p1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    sget-object p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "createApnSettings: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public deleteApn(J)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApnSettingsPolicy.deleteApn"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->deleteApn(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at APN Settings policy API deleteApn()"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string p1, "deleteApn: "

    invoke-static {p1, p0, v0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getApnList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    const/16 v3, 0x64

    :try_start_1
    invoke-static {v2, v3}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->generateToken(II)I

    move-result v2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v3, v4, v2}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->getApnList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    sget-object v1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at APN Settings policy API getApnList()"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method

.method public getApnSettings(J)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApnSettingsPolicy.getApnSettings"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at APN Settings policy API getApnSettings()"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getPreferredApnSettings()Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->getPreferredApn(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/apn/ApnSettings;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at APN Settings policy API getPreferredApnSettings()"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    if-nez v0, :cond_0

    const-string v0, "apn_settings_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    return-object p0
.end method

.method public saveApnSettings(Lcom/samsung/android/knox/net/apn/ApnSettings;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->updateApnSettings(Lcom/samsung/android/knox/net/apn/ApnSettings;)Z

    move-result p0

    return p0
.end method

.method public setPreferredApn(J)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApnSettingsPolicy.setPreferredApn"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->setPreferredApn(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at APN Settings policy API setPreferredApn()"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setPreferredApn: "

    invoke-static {p1, p0, v0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public updateApnSettings(Lcom/samsung/android/knox/net/apn/ApnSettings;)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApnSettingsPolicy.updateApnSettings"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const/4 v4, 0x0

    :try_start_0
    sget v5, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_3

    if-eqz p1, :cond_3

    iget-object v5, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "IP"

    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v5, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    return v4

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v5, p0, v4, p1}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J

    move-result-wide v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    sget-object p1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at update APN Settings policy "

    invoke-static {p1, v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    cmp-long p0, v2, v0

    if-eqz p0, :cond_5

    const/4 v4, 0x1

    :cond_5
    sget-object p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateApnSettings: "

    invoke-static {p1, p0, v4}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v4
.end method
