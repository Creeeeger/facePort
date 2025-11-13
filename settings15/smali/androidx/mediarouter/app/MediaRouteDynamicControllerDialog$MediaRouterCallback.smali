.class public final Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    return-void
.end method


# virtual methods
.method public final onRouteAdded()V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateRoutesView()V

    return-void
.end method

.method public final onRouteChanged(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 2

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_2

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;->isGroupable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mGroupableRoutes:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateViewsIfNeeded()V

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateRoutes()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateRoutesView()V

    :goto_1
    return-void
.end method

.method public final onRouteRemoved()V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateRoutesView()V

    return-void
.end method

.method public final onRouteSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateViewsIfNeeded()V

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateRoutes()V

    return-void
.end method

.method public final onRouteUnselected()V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateRoutesView()V

    return-void
.end method

.method public final onRouteVolumeChanged(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 3

    iget v0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    sget-boolean v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "onRouteVolumeChanged(), route.getVolume:"

    const-string v2, "MediaRouteCtrlDialog"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouteForVolumeUpdatingByUser:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq v0, p1, :cond_2

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mVolumeSliderHolderMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    if-eqz p0, :cond_2

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->setMute(Z)V

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mVolumeSlider:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    return-void
.end method
