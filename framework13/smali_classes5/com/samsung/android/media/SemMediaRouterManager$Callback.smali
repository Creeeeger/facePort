.class public interface abstract Lcom/samsung/android/media/SemMediaRouterManager$Callback;
.super Ljava/lang/Object;
.source "SemMediaRouterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaRouterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public blacklist onDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "discoveryPreference"    # Landroid/media/RouteDiscoveryPreference;

    .line 302
    return-void
.end method

.method public blacklist onPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p2, "preferredFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist onRequestFailed(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 299
    return-void
.end method

.method public blacklist onRoutesAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    return-void
.end method

.method public blacklist onRoutesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 259
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    return-void
.end method

.method public blacklist onRoutesRemoved(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 253
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    return-void
.end method

.method public blacklist onSessionReleased(Landroid/media/RoutingSessionInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 272
    return-void
.end method

.method public blacklist onSessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 265
    return-void
.end method

.method public blacklist onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 0
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 287
    return-void
.end method

.method public blacklist onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .locals 0
    .param p1, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p2, "newSession"    # Landroid/media/RoutingSessionInfo;

    .line 281
    return-void
.end method
