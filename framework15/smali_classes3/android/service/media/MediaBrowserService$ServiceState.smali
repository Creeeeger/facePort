.class Landroid/service/media/MediaBrowserService$ServiceState;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceState"
.end annotation


# instance fields
.field private final blacklist mConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/service/media/MediaBrowserService$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSession:Landroid/media/session/MediaSession$Token;

.field final synthetic blacklist this$0:Landroid/service/media/MediaBrowserService;


# direct methods
.method public static synthetic blacklist $r8$lambda$q_IDS0UBWytZoZ88cflfXtgsATE(Landroid/service/media/MediaBrowserService$ServiceState;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/media/MediaBrowserService$ServiceState;->clearConnectionsOnHandler()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnections(Landroid/service/media/MediaBrowserService$ServiceState;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSession(Landroid/service/media/MediaBrowserService$ServiceState;)Landroid/media/session/MediaSession$Token;
    .locals 0

    iget-object p0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mSession:Landroid/media/session/MediaSession$Token;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/media/session/MediaSession$Token;)V
    .locals 0

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mSession:Landroid/media/session/MediaSession$Token;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/media/MediaBrowserService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ServiceState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/media/MediaBrowserService$ServiceState;-><init>(Landroid/service/media/MediaBrowserService;)V

    return-void
.end method

.method private blacklist clearConnectionsOnHandler()V
    .locals 5

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :try_start_0
    iget-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onDisconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    iget-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "onDisconnectRequest for %s failed"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaBrowserService"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addSubscriptionOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 6

    invoke-interface {p2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSubscription for callback that isn\'t registered id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaBrowserService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v5, :cond_2

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    invoke-static {p4, v5}, Landroid/media/browse/MediaBrowserUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    goto :goto_0

    :cond_3
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, p4}, Landroid/service/media/MediaBrowserService$ServiceState;->performLoadChildrenOnHandler(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist connectOnHandler(Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-interface/range {p5 .. p5}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    iget-object v0, v9, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v9, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    new-instance v12, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    const/4 v8, 0x0

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/service/media/MediaBrowserService$ConnectionRecord;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService$BrowserRoot;)V

    invoke-static {v0, v12}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    iget-object v0, v9, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    move/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual {v0, v10, v12, v13}, Landroid/service/media/MediaBrowserService;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;

    move-result-object v14

    iget-object v0, v9, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    const-string v15, "MediaBrowserService"

    if-nez v14, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No root for client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface/range {p5 .. p5}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnectFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v4, p5

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v14

    invoke-direct/range {v1 .. v8}, Landroid/service/media/MediaBrowserService$ConnectionRecord;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService$BrowserRoot;)V

    iget-object v1, v9, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v11, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, v9, Landroid/service/media/MediaBrowserService$ServiceState;->mSession:Landroid/media/session/MediaSession$Token;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v1}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Landroid/service/media/MediaBrowserService$ServiceState;->mSession:Landroid/media/session/MediaSession$Token;

    iget-object v3, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v3}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v4, p5

    :try_start_2
    invoke-interface {v4, v1, v2, v3}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    move-object/from16 v4, p5

    :goto_1
    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v4, p5

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling onConnect() failed. Dropping client. pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v9, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method

.method public blacklist getBinder()Landroid/service/media/MediaBrowserService$ServiceBinder;
    .locals 1

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmBinder(Landroid/service/media/MediaBrowserService;)Landroid/service/media/MediaBrowserService$ServiceBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isValidPackage(Ljava/lang/String;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-virtual {v1}, Landroid/service/media/MediaBrowserService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public blacklist notifyChildrenChangeOnHandler(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v3, v2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-static {p2, v6}, Landroid/media/browse/MediaBrowserUtils;->hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {p0, p1, v2, v6}, Landroid/service/media/MediaBrowserService$ServiceState;->performLoadChildrenOnHandler(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method public blacklist notifySessionTokenInitializedOnHandler(Landroid/media/session/MediaSession$Token;)V
    .locals 5

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    :try_start_0
    iget-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iget-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v3}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v4}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is no longer valid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaBrowserService"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist performLoadChildrenOnHandler(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V
    .locals 7

    new-instance v6, Landroid/service/media/MediaBrowserService$ServiceState$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/service/media/MediaBrowserService$ServiceState$1;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/Object;Landroid/service/media/MediaBrowserService$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v1, p2}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    if-nez p3, :cond_0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-virtual {v1, p1, v0}, Landroid/service/media/MediaBrowserService;->onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-virtual {v1, p1, v0, p3}, Landroid/service/media/MediaBrowserService;->onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V

    :goto_0
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$Result;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist performLoadItemOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/ResultReceiver;)V
    .locals 9

    invoke-interface {p2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaItem for callback that isn\'t registered id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaBrowserService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v8, Landroid/service/media/MediaBrowserService$ServiceState$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, v1

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/service/media/MediaBrowserService$ServiceState$2;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/Object;Landroid/service/media/MediaBrowserService$ConnectionRecord;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v3, v1}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-virtual {v3, p1, v2}, Landroid/service/media/MediaBrowserService;->onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    invoke-virtual {v2}, Landroid/service/media/MediaBrowserService$Result;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist postOnHandler(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmHandler(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist release()V
    .locals 2

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmHandler(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/service/media/MediaBrowserService$ServiceState$$ExternalSyntheticLambda0;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist removeConnectionRecordOnHandler(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 4

    invoke-interface {p1}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method

.method public blacklist removeSubscriptionOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;)Z
    .locals 6

    invoke-interface {p2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSubscription for callback that isn\'t registered id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaBrowserService"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p3, :cond_2

    iget-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    iget-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v5, :cond_3

    const/4 v2, 0x1

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return v2
.end method
