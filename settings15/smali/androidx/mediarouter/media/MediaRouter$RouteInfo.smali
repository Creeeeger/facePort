.class public final Landroidx/mediarouter/media/MediaRouter$RouteInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCanDisconnect:Z

.field public mConnectionState:I

.field public final mControlFilters:Ljava/util/ArrayList;

.field public mDescription:Ljava/lang/String;

.field public mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

.field public final mDescriptorId:Ljava/lang/String;

.field public mDeviceType:I

.field public mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

.field public mDynamicGroupState:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;

.field public mEnabled:Z

.field public mExtras:Landroid/os/Bundle;

.field public mIconUri:Landroid/net/Uri;

.field public mMemberRoutes:Ljava/util/List;

.field public mName:Ljava/lang/String;

.field public mPlaybackStream:I

.field public mPlaybackType:I

.field public mPresentationDisplayId:I

.field public final mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

.field public mSettingsIntent:Landroid/content/IntentSender;

.field public final mUniqueId:Ljava/lang/String;

.field public mVolume:I

.field public mVolumeHandling:I

.field public mVolumeMax:I


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDynamicGroupState()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicGroupState:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicGroupState:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;

    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicGroupState:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;

    return-object p0
.end method

.method public final getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroidx/mediarouter/media/MediaRouteProvider;

    return-object p0
.end method

.method public final isDefaultOrBluetooth()Z
    .locals 4

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    iget v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouteProvider;->mMetadata:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "There is no default route.  The media router has not yet been fully initialized."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isGroup()Z
    .locals 1

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSelectable()Z
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSelected()Z
    .locals 1

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z
    .locals 7

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->ensureControlCategories()V

    iget-object v1, p1, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter;

    if-eqz v4, :cond_1

    move v5, v0

    :goto_1
    if-ge v5, v1, :cond_1

    iget-object v6, p1, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "selector must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I
    .locals 12

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_23

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    if-eqz p1, :cond_23

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    iget-object v2, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    iget-object v4, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v5, "status"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    move v0, v2

    :cond_1
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    iget-object v4, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v5, "iconUri"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    if-nez v4, :cond_2

    move-object v4, v6

    goto :goto_1

    :cond_2
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :goto_1
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v6

    goto :goto_2

    :cond_3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    move v0, v2

    :cond_4
    iget-boolean v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    iget-object v4, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v5, "enabled"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eq v3, v4, :cond_5

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    move v0, v2

    :cond_5
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    iget-object v4, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v5, "connectionState"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v3, v4, :cond_6

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    move v0, v2

    :cond_6
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->ensureControlFilters()V

    iget-object v4, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mControlFilters:Ljava/util/List;

    if-ne v3, v4, :cond_7

    goto/16 :goto_7

    :cond_7
    if-eqz v3, :cond_12

    if-nez v4, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentFilter;

    if-ne v5, v7, :cond_a

    goto :goto_3

    :cond_a
    if-eqz v5, :cond_12

    if-nez v7, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v5}, Landroid/content/IntentFilter;->countActions()I

    move-result v8

    invoke-virtual {v7}, Landroid/content/IntentFilter;->countActions()I

    move-result v9

    if-eq v8, v9, :cond_c

    goto :goto_6

    :cond_c
    move v9, v1

    :goto_4
    if-ge v9, v8, :cond_e

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {v5}, Landroid/content/IntentFilter;->countCategories()I

    move-result v8

    invoke-virtual {v7}, Landroid/content/IntentFilter;->countCategories()I

    move-result v9

    if-eq v8, v9, :cond_f

    goto :goto_6

    :cond_f
    move v9, v1

    :goto_5
    if-ge v9, v8, :cond_9

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    goto :goto_6

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_11
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_7

    :cond_12
    :goto_6
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->ensureControlFilters()V

    iget-object v3, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mControlFilters:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v0, v2

    :goto_7
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackType:I

    iget-object v4, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v5, "playbackType"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v3, v4, :cond_13

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackType:I

    move v0, v2

    :cond_13
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    iget-object v4, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v5, "playbackStream"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v3, v4, :cond_14

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    move v0, v2

    :cond_14
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    iget-object v4, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v5, "deviceType"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_15

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    move v0, v2

    :cond_15
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    iget-object v4, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v5, "volumeHandling"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v8, 0x3

    if-eq v3, v4, :cond_16

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    move v0, v8

    :cond_16
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    iget-object v4, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v5, "volume"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_17

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    move v0, v8

    :cond_17
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    iget-object v4, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v5, "volumeMax"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_18

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    goto :goto_8

    :cond_18
    move v8, v0

    :goto_8
    iget v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    iget-object v3, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v4, "presentationDisplayId"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v0, v3, :cond_19

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    or-int/lit8 v8, v8, 0x5

    :cond_19
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    iget-object v3, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v4, "extras"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    or-int/lit8 v8, v8, 0x1

    :cond_1a
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    iget-object v3, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v4, "settingsIntent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    or-int/lit8 v8, v8, 0x1

    :cond_1b
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    iget-object v3, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v4, "canDisconnect"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v0, v3, :cond_1c

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    or-int/lit8 v8, v8, 0x5

    :cond_1c
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_1d

    move v1, v2

    :cond_1d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1e
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    iget-object v5, v5, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mMetadata:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    iget-object v5, v5, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    new-instance v7, Landroidx/core/util/Pair;

    invoke-direct {v7, v5, v3}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object v4, v4, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v7, v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    goto :goto_a

    :cond_20
    move-object v5, v6

    :goto_a
    if-eqz v5, :cond_1e

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_1e

    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    move v1, v2

    goto :goto_9

    :cond_21
    if-eqz v1, :cond_22

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    or-int/lit8 v1, v8, 0x1

    goto :goto_b

    :cond_22
    move v1, v8

    :cond_23
    :goto_b
    return v1
.end method

.method public final requestSetVolume(I)V
    .locals 3

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne p0, v1, :cond_0

    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final supportsControlCategory(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaRouter.RouteInfo{ uniqueId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", iconUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", connectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", canDisconnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", playbackType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", playbackStream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", deviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", volumeHandling="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", volumeMax="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", presentationDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", settingsIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", providerPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mMetadata:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", members=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    if-lez v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_1

    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
