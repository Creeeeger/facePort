.class final Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/media/MediaRouter2Manager$Callback;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# virtual methods
.method public final onPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final onRequestFailed(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final onRouteListingPreferenceUpdated(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final onRoutesUpdated()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final onSessionReleased(Landroid/media/RoutingSessionInfo;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final onSessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 0

    return-void
.end method

.method public final onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .locals 1

    sget-boolean p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onTransferred() oldSession : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newSession : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ManagerInfoMediaManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method
