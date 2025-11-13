.class public interface abstract Landroid/media/MediaRouter2Manager$Callback;
.super Ljava/lang/Object;
.source "MediaRouter2Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public blacklist onDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .locals 1

    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/media/MediaRouter2Manager$Callback;->onPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public blacklist onPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public blacklist onRequestFailed(I)V
    .locals 0

    return-void
.end method

.method public blacklist onRouteListingPreferenceUpdated(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .locals 0

    return-void
.end method

.method public blacklist onRoutesUpdated()V
    .locals 0

    return-void
.end method

.method public blacklist onSessionReleased(Landroid/media/RoutingSessionInfo;)V
    .locals 0

    return-void
.end method

.method public blacklist onSessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .locals 0

    return-void
.end method

.method public blacklist onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 0

    return-void
.end method

.method public blacklist onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .locals 0

    return-void
.end method
