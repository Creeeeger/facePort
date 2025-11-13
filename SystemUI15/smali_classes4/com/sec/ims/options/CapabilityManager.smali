.class public Lcom/sec/ims/options/CapabilityManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final LOG_TAG_BASE:Ljava/lang/String; = "CapabilityManager"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

.field private mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

.field private mPhoneId:I

.field private mQueuedCapabilityListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/options/CapabilityListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQueuedCapabilityListener(Lcom/sec/ims/options/CapabilityManager;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/options/CapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmImsCapabilityService(Lcom/sec/ims/options/CapabilityManager;Lcom/sec/ims/options/ICapabilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    const-string v0, "CapabilityManager"

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/ims/options/CapabilityManager;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    const-string v0, "CapabilityManager"

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-direct {p0}, Lcom/sec/ims/options/CapabilityManager;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CapabilityManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/ims/options/CapabilityManager;->connect()V

    return-void
.end method


# virtual methods
.method public addFakeCapabilityInfo(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, p0}, Lcom/sec/ims/options/ICapabilityService;->addFakeCapabilityInfo(Ljava/util/List;ZI)V

    :cond_0
    return-void
.end method

.method public connect()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Not recommended in main thread."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Already connected."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Connecting to CapabilityDiscoveryService..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/ims/options/CapabilityManager$1;

    invoke-direct {v0, p0}, Lcom/sec/ims/options/CapabilityManager$1;-><init>(Lcom/sec/ims/options/CapabilityManager;)V

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.CapabilityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/ims/options/CapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, p0, v2, v3}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method public disconnect()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/ims/options/CapabilityManager$ConnectionListener;->onDisconnected()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disconnect: IllegalArgumentException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public getAllCapabilities()[Lcom/sec/ims/options/Capabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/ims/options/ICapabilityService;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCapabilities(Landroid/net/Uri;I)Lcom/sec/ims/options/Capabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    iget p0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v1, p1, p2, p0}, Lcom/sec/ims/options/ICapabilityService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getCapabilitiesByContactId(Ljava/lang/String;I)[Lcom/sec/ims/options/Capabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, p0}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCapabilitiesById(I)Lcom/sec/ims/options/Capabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesById(II)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCapabilitiesByNumber(Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, p0}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesByNumber(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCapabilitiesWithDelay(Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, p0}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesWithDelay(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCapabilitiesWithFeature(Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, p0}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesWithFeature(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCapabilitiesWithFeatureByUriList(Ljava/util/List;II)[Lcom/sec/ims/options/Capabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;II)[",
            "Lcom/sec/ims/options/Capabilities;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, p3, p0}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesWithFeatureByUriList(Ljava/util/List;III)[Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOwnCapabilities()Lcom/sec/ims/options/Capabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/ims/options/ICapabilityService;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerListener(Lcom/sec/ims/options/CapabilityListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerListener: listener = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerListener: not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/ims/options/CapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v1, p1, Lcom/sec/ims/options/CapabilityListener;->callback:Lcom/sec/ims/options/ICapabilityServiceEventListener;

    iget p0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1, p0}, Lcom/sec/ims/options/ICapabilityService;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    iput-object p0, p1, Lcom/sec/ims/options/CapabilityListener;->mToken:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setConnectionListener(Lcom/sec/ims/options/CapabilityManager$ConnectionListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/ims/options/CapabilityManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sec/ims/options/CapabilityManager$ConnectionListener;->onConnected()V

    :cond_0
    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    return-void
.end method

.method public setUserActivity(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/options/ICapabilityService;->setUserActivity(ZI)V

    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/sec/ims/options/CapabilityListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregisterListener: listener = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/sec/ims/options/CapabilityListener;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unregisterListener: not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/ims/options/CapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object p1, p1, Lcom/sec/ims/options/CapabilityListener;->mToken:Ljava/lang/String;

    iget p0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/options/ICapabilityService;->unregisterListener(Ljava/lang/String;I)V

    return-void
.end method
