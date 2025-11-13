.class public Lcom/sec/ims/scab/CABManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/scab/CABManager$CABServiceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CABManager"

.field private static mImsCABService:Lcom/sec/ims/scab/ICABService;


# instance fields
.field private mBound:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/ims/scab/CABManager$CABServiceListener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/ims/scab/CABManager;)Lcom/sec/ims/scab/CABManager$CABServiceListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/scab/CABManager;->mListener:Lcom/sec/ims/scab/CABManager$CABServiceListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfputmImsCABService(Lcom/sec/ims/scab/ICABService;)V
    .locals 0

    sput-object p0, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/scab/CABManager;->mBound:Z

    new-instance v0, Lcom/sec/ims/scab/CABManager$1;

    invoke-direct {v0, p0}, Lcom/sec/ims/scab/CABManager$1;-><init>(Lcom/sec/ims/scab/CABManager;)V

    iput-object v0, p0, Lcom/sec/ims/scab/CABManager;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/sec/ims/scab/CABManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isServiceBinded()Z
    .locals 1

    sget-object p0, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    if-nez p0, :cond_0

    const-string p0, "CABManager"

    const-string v0, "Failed to bind service."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addBatchOfContacts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addBatchOfContacts:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CABManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {p0, p1}, Lcom/sec/ims/scab/ICABService;->addBatchOfContacts(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public businessLineReadyForSync(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "businessLineReadyForSync:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CABManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/scab/ICABService;->businessLineReadyForSync(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public connectService()V
    .locals 1

    const-string p0, "CABManager"

    const-string v0, "!!!!!!!!!!!!!!! DEPRECATED !!!!!!!!!!!!!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deleteBatchOfContacts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteBatchOfContacts:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CABManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {p0, p1}, Lcom/sec/ims/scab/ICABService;->deleteBatchOfContacts(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableService()V
    .locals 2

    const-string v0, "CABManager"

    const-string v1, "disableService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {p0}, Lcom/sec/ims/scab/ICABService;->disableService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public disconnectService()V
    .locals 2

    iget-object v0, p0, Lcom/sec/ims/scab/CABManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/ims/scab/CABManager;->mBound:Z

    if-eqz v0, :cond_0

    const-string v0, "CABManager"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/scab/CABManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/ims/scab/CABManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/scab/CABManager;->mBound:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/ims/scab/CABManager;->mListener:Lcom/sec/ims/scab/CABManager$CABServiceListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/ims/scab/CABManager$CABServiceListener;->onDisconnected()V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableService()V
    .locals 2

    const-string v0, "CABManager"

    const-string v1, "enableService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {p0}, Lcom/sec/ims/scab/ICABService;->enableService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public isPendingUploadContactsExists()Z
    .locals 2

    const-string v0, "CABManager"

    const-string v1, "isPendingUploadContactsExists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {p0}, Lcom/sec/ims/scab/ICABService;->isPendingUploadContactsExists()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBufferDBReadResult(JZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBufferDBReadResult:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CABManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/ims/scab/ICABService;->onBufferDBReadResult(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public processUndownloadedBusinessContacts(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processUndownloadedBusinessContacts: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CABManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {p0, p1}, Lcom/sec/ims/scab/ICABService;->processUndownloadedBusinessContacts(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCABServiceListener(Lcom/sec/ims/scab/CABManager$CABServiceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/scab/CABManager;->mListener:Lcom/sec/ims/scab/CABManager$CABServiceListener;

    return-void
.end method

.method public updateBatchOfContacts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateBatchOfContacts:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CABManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {p0, p1}, Lcom/sec/ims/scab/ICABService;->updateBatchOfContacts(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public uploadAddressBook(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uploadAddressBook:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CABManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/scab/CABManager;->isServiceBinded()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/sec/ims/scab/CABManager;->mImsCABService:Lcom/sec/ims/scab/ICABService;

    invoke-interface {p0, p1}, Lcom/sec/ims/scab/ICABService;->uploadAddressBook(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
