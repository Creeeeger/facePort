.class final Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;
.super Ljava/lang/Object;
.source "SemMediaRouterManager.java"

# interfaces
.implements Landroid/media/MediaRouter2Manager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaRouterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CallbackRecord"
.end annotation


# instance fields
.field public final blacklist mCallback:Lcom/samsung/android/media/SemMediaRouterManager$Callback;

.field final synthetic blacklist this$0:Lcom/samsung/android/media/SemMediaRouterManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/SemMediaRouterManager;Lcom/samsung/android/media/SemMediaRouterManager$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/media/SemMediaRouterManager;
    .param p2, "callback"    # Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    .line 57
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;->this$0:Lcom/samsung/android/media/SemMediaRouterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;->mCallback:Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 63
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 64
    return v0

    .line 66
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 67
    return v2

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;->mCallback:Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    move-object v3, p1

    check-cast v3, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;

    iget-object v3, v3, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;->mCallback:Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;->mCallback:Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist onPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    .line 114
    .local p2, "preferredFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;->mCallback:Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/SemMediaRouterManager$Callback;->onPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 115
    return-void
.end method

.method public blacklist onRequestFailed(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 119
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;->mCallback:Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/SemMediaRouterManager$Callback;->onRequestFailed(I)V

    .line 120
    return-void
.end method

.method public blacklist onRoutesAdded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;->mCallback:Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/SemMediaRouterManager$Callback;->onRoutesAdded(Ljava/util/List;)V

    .line 80
    return-void
.end method

.method public blacklist onRoutesChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;->mCallback:Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/SemMediaRouterManager$Callback;->onRoutesChanged(Ljava/util/List;)V

    .line 90
    return-void
.end method

.method public blacklist onRoutesRemoved(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;->mCallback:Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/SemMediaRouterManager$Callback;->onRoutesRemoved(Ljava/util/List;)V

    .line 85
    return-void
.end method

.method public blacklist onSessionReleased(Landroid/media/RoutingSessionInfo;)V
    .locals 1
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 99
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;->mCallback:Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/SemMediaRouterManager$Callback;->onSessionReleased(Landroid/media/RoutingSessionInfo;)V

    .line 100
    return-void
.end method

.method public blacklist onSessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .locals 1
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;->mCallback:Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/SemMediaRouterManager$Callback;->onSessionUpdated(Landroid/media/RoutingSessionInfo;)V

    .line 95
    return-void
.end method

.method public blacklist onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 1
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 109
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;->mCallback:Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/SemMediaRouterManager$Callback;->onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 110
    return-void
.end method

.method public blacklist onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .locals 1
    .param p1, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p2, "newSession"    # Landroid/media/RoutingSessionInfo;

    .line 104
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;->mCallback:Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/SemMediaRouterManager$Callback;->onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V

    .line 105
    return-void
.end method
