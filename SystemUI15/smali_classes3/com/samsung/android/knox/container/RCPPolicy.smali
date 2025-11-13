.class public Lcom/samsung/android/knox/container/RCPPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CALENDAR:Ljava/lang/String; = "Calendar"

.field public static final CONTACTS:Ljava/lang/String; = "Contacts"

.field public static final EXPORT_DATA:Ljava/lang/String; = "knox-export-data"

.field public static final IMPORT_DATA:Ljava/lang/String; = "knox-import-data"

.field public static final NOTIFICATIONS:Ljava/lang/String; = "Notifications"

.field public static final SANITIZE_DATA:Ljava/lang/String; = "knox-sanitize-data"

.field public static final TAG:Ljava/lang/String; = "RCPPolicy"

.field public static gRCPService:Lcom/samsung/android/knox/container/IRCPPolicy;


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static declared-synchronized getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/container/RCPPolicy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/container/RCPPolicy;->gRCPService:Lcom/samsung/android/knox/container/IRCPPolicy;

    if-nez v1, :cond_0

    const-string v1, "mum_container_rcp_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/container/IRCPPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/container/RCPPolicy;->gRCPService:Lcom/samsung/android/knox/container/IRCPPolicy;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/container/RCPPolicy;->gRCPService:Lcom/samsung/android/knox/container/IRCPPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public allowMoveAppsToContainer(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RCPPolicy.allowMoveAppsToContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v0

    const-string v1, "RCPPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, " RCP policy service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IRCPPolicy;->allowMoveAppsToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with RCP policy service: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public allowMoveFilesToContainer(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RCPPolicy.allowMoveFilesToContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v0

    const-string v1, "RCPPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, " RCP policy service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IRCPPolicy;->allowMoveFilesToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with RCP policy service: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public allowMoveFilesToOwner(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RCPPolicy.allowMoveFilesToOwner"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v0

    const-string v1, "RCPPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, " RCP policy service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IRCPPolicy;->allowMoveFilesToOwner(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with RCP policy service: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public allowShareClipboardDataToContainer(Z)Z
    .locals 4

    const-string/jumbo v0, "retVal after MUM is "

    iget-object v1, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RCPPolicy.allowShareClipboardDataToContainer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    const-string v2, "RCPPolicy"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p0, " RCP policy service is not yet ready!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/container/IRCPPolicy;->allowShareClipboardDataToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with RCP policy service: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v3
.end method

.method public allowShareClipboardDataToOwner(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RCPPolicy.allowShareClipboardDataToOwner"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v0

    const-string v1, "RCPPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, " RCP policy service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IRCPPolicy;->allowShareClipboardDataToOwner(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with RCP policy service: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public getAllowChangeDataSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v0

    const-string v1, "RCPPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, " RCP policy service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IRCPPolicy;->getAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed talking with RCP policy service: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public getListFromAllowChangeDataSyncPolicy(Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v0

    const-string v1, "RCPPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, " RCP policy service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IRCPPolicy;->getListFromAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed talking with RCP policy service: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method public getNotificationSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v0

    const-string v1, "RCPPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, " RCP policy service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IRCPPolicy;->getNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed talking with RCP policy service: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method public getPackagesFromNotificationSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v0

    const-string v1, "RCPPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, " RCP policy service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IRCPPolicy;->getPackagesFromNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed talking with RCP policy service: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method public isMoveAppsToContainerAllowed()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v0

    const-string v1, "RCPPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, " RCP policy service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IRCPPolicy;->isMoveAppsToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed talking with RCP policy service: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public isMoveFilesToContainerAllowed()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v0

    const-string v1, "RCPPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, " RCP policy service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IRCPPolicy;->isMoveFilesToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed talking with RCP policy service: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public isMoveFilesToOwnerAllowed()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v0

    const-string v1, "RCPPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, " RCP policy service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IRCPPolicy;->isMoveFilesToOwnerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed talking with RCP policy service: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public isShareClipboardDataToContainerAllowed()Z
    .locals 4

    const-string/jumbo v0, "retVal after MUM is "

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    const-string v2, "RCPPolicy"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p0, " RCP policy service is not yet ready!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/container/IRCPPolicy;->isShareClipboardDataToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed talking with RCP policy service: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v3
.end method

.method public isShareClipboardDataToOwnerAllowed()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v0

    const-string v1, "RCPPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, " RCP policy service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IRCPPolicy;->isShareClipboardDataToOwnerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed talking with RCP policy service: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RCPPolicy.setAllowChangeDataSyncPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v0

    const-string v1, "RCPPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, " RCP policy service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/container/IRCPPolicy;->setAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed talking with RCP policy service: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RCPPolicy.setNotificationSyncPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v0

    const-string v1, "RCPPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, " RCP policy service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/container/IRCPPolicy;->setNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed talking with RCP policy service: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v2
.end method
