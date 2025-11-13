.class public final Landroidx/mediarouter/media/MediaRoute2Provider;
.super Landroidx/mediarouter/media/MediaRouteProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallback:Landroidx/mediarouter/media/MediaRoute2Provider$Callback;

.field public final mControllerCallback:Landroidx/mediarouter/media/MediaRoute2Provider$ControllerCallback;

.field public final mControllerMap:Ljava/util/Map;

.field public final mHandlerExecutor:Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

.field public final mMediaRouter2:Landroid/media/MediaRouter2;

.field public final mRouteCallback:Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;

.field public final mRouteIdToOriginalRouteIdMap:Ljava/util/Map;

.field public mRoutes:Ljava/util/List;

.field public final mTransferCallback:Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRoute2Provider$Callback;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProvider;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerMap:Ljava/util/Map;

    new-instance v0, Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRouteCallback:Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;

    new-instance v0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mTransferCallback:Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;

    new-instance v0, Landroidx/mediarouter/media/MediaRoute2Provider$ControllerCallback;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRoute2Provider$ControllerCallback;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerCallback:Landroidx/mediarouter/media/MediaRoute2Provider$ControllerCallback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRoutes:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRouteIdToOriginalRouteIdMap:Ljava/util/Map;

    invoke-static {p1}, Landroid/media/MediaRouter2;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    iput-object p2, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mCallback:Landroidx/mediarouter/media/MediaRoute2Provider$Callback;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mHandlerExecutor:Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final getRouteById(Ljava/lang/String;)Landroid/media/MediaRoute2Info;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRoutes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final onCreateDynamicGroupRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
    .locals 2

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerMap:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;

    iget-object v1, v0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mInitialMemberRouteId:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreateRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 2

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRouteIdToOriginalRouteIdMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Landroidx/mediarouter/media/MediaRoute2Provider$MemberRouteController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/mediarouter/media/MediaRoute2Provider$MemberRouteController;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider;Ljava/lang/String;Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;)V

    return-object v0
.end method

.method public final onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 4

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRouteIdToOriginalRouteIdMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerMap:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;

    iget-object v3, v2, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mGroupRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mRoutingController:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {v3}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p1, Landroidx/mediarouter/media/MediaRoute2Provider$MemberRouteController;

    invoke-direct {p1, p0, v0, v2}, Landroidx/mediarouter/media/MediaRoute2Provider$MemberRouteController;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider;Ljava/lang/String;Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;)V

    return-object p1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find the matching GroupRouteController. routeId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", routeGroupId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MR2Provider"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroidx/mediarouter/media/MediaRoute2Provider$MemberRouteController;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, p2}, Landroidx/mediarouter/media/MediaRoute2Provider$MemberRouteController;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider;Ljava/lang/String;Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;)V

    return-object p1
.end method

.method public final onDiscoveryRequestChanged(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V
    .locals 12

    const/4 v0, 0x1

    const-string v1, "android.media.intent.category.LIVE_AUDIO"

    const/4 v2, 0x0

    sget-object v3, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    move-result-object v3

    iget v3, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackCount:I

    :goto_0
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerCallback:Landroidx/mediarouter/media/MediaRoute2Provider$ControllerCallback;

    iget-object v5, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mTransferCallback:Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;

    iget-object v6, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRouteCallback:Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;

    if-lez v3, :cond_7

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    if-nez p1, :cond_1

    new-instance p1, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    sget-object v3, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-direct {p1, v3, v2}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;-><init>(Landroidx/mediarouter/media/MediaRouteSelector;Z)V

    :cond_1
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->ensureSelector()V

    iget-object v3, p1, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteSelector;->getControlCategories()Ljava/util/List;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v7, Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    invoke-direct {v7}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;-><init>()V

    invoke-virtual {v7, v3}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->addControlCategories(Ljava/util/Collection;)V

    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v3

    new-instance v7, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result p1

    invoke-direct {v7, v3, p1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;-><init>(Landroidx/mediarouter/media/MediaRouteSelector;Z)V

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->ensureSelector()V

    iget-object v3, v7, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteSelector;->ensureControlCategories()V

    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v0

    if-nez v3, :cond_2

    new-instance v0, Landroid/media/RouteDiscoveryPreference$Builder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->ensureSelector()V

    iget-object v7, v7, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouteSelector;->getControlCategories()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v11, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    const/4 v10, 0x2

    goto :goto_2

    :sswitch_1
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_2

    :cond_4
    move v10, v0

    goto :goto_2

    :sswitch_2
    const-string v11, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_2

    :cond_5
    move v10, v2

    :goto_2
    packed-switch v10, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v9, "android.media.route.feature.LIVE_VIDEO"

    goto :goto_3

    :pswitch_1
    const-string v9, "android.media.route.feature.LIVE_AUDIO"

    goto :goto_3

    :pswitch_2
    const-string v9, "android.media.route.feature.REMOTE_PLAYBACK"

    :goto_3
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/media/RouteDiscoveryPreference$Builder;

    invoke-direct {v0, v8, v3}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    :goto_4
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mHandlerExecutor:Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1, v6, v0}, Landroid/media/MediaRouter2;->registerRouteCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    invoke-virtual {p1, v1, v5}, Landroid/media/MediaRouter2;->registerTransferCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    invoke-virtual {p0, v1, v4}, Landroid/media/MediaRouter2;->registerControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    goto :goto_5

    :cond_7
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    invoke-virtual {p1, v6}, Landroid/media/MediaRouter2;->unregisterRouteCallback(Landroid/media/MediaRouter2$RouteCallback;)V

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    invoke-virtual {p1, v5}, Landroid/media/MediaRouter2;->unregisterTransferCallback(Landroid/media/MediaRouter2$TransferCallback;)V

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    invoke-virtual {p0, v4}, Landroid/media/MediaRouter2;->unregisterControllerCallback(Landroid/media/MediaRouter2$ControllerCallback;)V

    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b1e3633 -> :sswitch_2
        0x3909bb2a -> :sswitch_1
        0x3a2c33cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final refreshRoutes()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    invoke-virtual {v2}, Landroid/media/MediaRouter2;->getRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRoutes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRoutes:Ljava/util/List;

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRouteIdToOriginalRouteIdMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRoutes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRouteIdToOriginalRouteIdMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot find the original route Id. route="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MR2Provider"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRoutes:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    invoke-static {v2}, Landroidx/mediarouter/media/MediaRouter2Utils;->toMediaRouteDescriptor(Landroid/media/MediaRoute2Info;)Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object v3

    if-eqz v2, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance v1, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;

    invoke-direct {v1}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mSupportsDynamicGroupRoute:Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->addRoute(Landroidx/mediarouter/media/MediaRouteDescriptor;)V

    goto :goto_4

    :cond_9
    new-instance v0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    iget-object v2, v1, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/List;

    iget-boolean v1, v1, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mSupportsDynamicGroupRoute:Z

    invoke-direct {v0, v2, v1}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouteProvider;->setDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    return-void
.end method

.method public final setDynamicRouteDescriptors(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;

    const-string v4, "MR2Provider"

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDynamicRouteDescriptors: No matching routeController found. routingController="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDynamicRouteDescriptors: No selected routes. This may happen when the selected routes become invalid.routingController="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter2Utils;->getRouteIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRoute2Info;

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter2Utils;->toMediaRouteDescriptor(Landroid/media/MediaRoute2Info;)Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRouter2$RoutingController;->getControlHints()Landroid/os/Bundle;

    move-result-object v0

    iget-object v7, v1, Landroidx/mediarouter/media/MediaRouteProvider;->mContext:Landroid/content/Context;

    const v8, 0x7f130c8b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v9, "androidx.mediarouter.media.KEY_SESSION_NAME"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    move-object v7, v9

    :cond_2
    const-string v9, "androidx.mediarouter.media.KEY_GROUP_ROUTE"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v9, Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-direct {v9, v0}, Landroidx/mediarouter/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v9

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v9, "Exception while unparceling control hints."

    invoke-static {v4, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    const/4 v0, 0x1

    if-nez v8, :cond_4

    new-instance v8, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v8, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v9, "connectionState"

    const/4 v10, 0x2

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v7, v8, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v9, "playbackType"

    invoke-virtual {v7, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    new-instance v7, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    invoke-direct {v7, v8}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;-><init>(Landroidx/mediarouter/media/MediaRouteDescriptor;)V

    move-object v8, v7

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRouter2$RoutingController;->getVolume()I

    move-result v7

    iget-object v9, v8, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v10, "volume"

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRouter2$RoutingController;->getVolumeMax()I

    move-result v7

    iget-object v9, v8, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v10, "volumeMax"

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRouter2$RoutingController;->getVolumeHandling()I

    move-result v7

    iget-object v9, v8, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v10, "volumeHandling"

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v7, v8, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_5
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouteDescriptor;->ensureControlFilters()V

    iget-object v6, v6, Landroidx/mediarouter/media/MediaRouteDescriptor;->mControlFilters:Ljava/util/List;

    invoke-virtual {v8, v6}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->addControlFilters(Ljava/util/Collection;)V

    iget-object v6, v8, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_6
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, v8, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    if-nez v9, :cond_8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    :cond_8
    iget-object v9, v8, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v8, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "groupMemberId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v8}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->build()Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRouter2$RoutingController;->getSelectableRoutes()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Landroidx/mediarouter/media/MediaRouter2Utils;->getRouteIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRouter2$RoutingController;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Landroidx/mediarouter/media/MediaRouter2Utils;->getRouteIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouteProvider;->mDescriptor:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    if-nez v1, :cond_b

    const-string v0, "setDynamicRouteDescriptors: providerDescriptor is not set."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-virtual {v8}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor$Builder;

    invoke-direct {v10, v8}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor$Builder;-><init>(Landroidx/mediarouter/media/MediaRouteDescriptor;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x3

    goto :goto_4

    :cond_c
    move v8, v0

    :goto_4
    iput v8, v10, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor$Builder;->mSelectionState:I

    move-object v8, v7

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v10, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor$Builder;->mIsGroupable:Z

    move-object v8, v2

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    new-instance v8, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    iget v13, v10, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor$Builder;->mSelectionState:I

    iget-boolean v15, v10, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor$Builder;->mIsGroupable:Z

    iget-object v12, v10, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor$Builder;->mRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    const/16 v16, 0x1

    move-object v11, v8

    invoke-direct/range {v11 .. v16}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;-><init>(Landroidx/mediarouter/media/MediaRouteDescriptor;IZZZ)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    iput-object v6, v3, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mGroupRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-virtual {v3, v6, v4}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->notifyDynamicRoutesChanged(Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;)V

    return-void
.end method
