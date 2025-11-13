.class final Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/media/MediaRouter2Manager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/media/ManagerInfoMediaManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/media/ManagerInfoMediaManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/ManagerInfoMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iget-object p2, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/ManagerInfoMediaManager;

    iget-object p2, p2, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/ManagerInfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    :cond_0
    return-void
.end method

.method public final onRequestFailed(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/ManagerInfoMediaManager;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/InfoMediaManager;->dispatchOnRequestFailed(I)V

    return-void
.end method

.method public final onRouteListingPreferenceUpdated(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/ManagerInfoMediaManager;

    iget-object v0, v0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/ManagerInfoMediaManager;

    iget-object p1, p1, Lcom/android/settingslib/media/InfoMediaManager;->mPreferenceItemMap:Ljava/util/Map;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/media/RouteListingPreference;->getItems()Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/android/settingslib/media/InfoMediaManager$Api34Impl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settingslib/media/InfoMediaManager$Api34Impl$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/ManagerInfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    return-void
.end method

.method public final onRoutesUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/ManagerInfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    return-void
.end method

.method public final onSessionReleased(Landroid/media/RoutingSessionInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/ManagerInfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    return-void
.end method

.method public final onSessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/ManagerInfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    return-void
.end method

.method public final onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 0

    return-void
.end method

.method public final onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .locals 2

    sget-boolean v0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTransferred() oldSession : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newSession : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ManagerInfoMediaManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/ManagerInfoMediaManager;

    invoke-virtual {p1}, Lcom/android/settingslib/media/InfoMediaManager;->rebuildDeviceList()V

    iget-object p0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/ManagerInfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->notifyCurrentConnectedDeviceChanged()V

    return-void
.end method
