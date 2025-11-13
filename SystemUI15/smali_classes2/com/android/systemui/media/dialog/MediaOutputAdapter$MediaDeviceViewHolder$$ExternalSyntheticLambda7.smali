.class public final synthetic Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/settingslib/media/MediaDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;ZLcom/android/settingslib/media/MediaDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    iput-boolean p2, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda7;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda7;->f$2:Lcom/android/settingslib/media/MediaDevice;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    iget-boolean p2, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda7;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda7;->f$2:Lcom/android/settingslib/media/MediaDevice;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->disableSeekBar()V

    const-string v0, "InfoMediaManager"

    const/4 v1, 0x5

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    if-eqz p2, :cond_2

    iget-object v2, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {v2}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectableMediaDevice()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isDeviceIncluded(Ljava/util/List;Lcom/android/settingslib/media/MediaDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object p2, p1, Lcom/android/systemui/media/dialog/MediaOutputController;->mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    sget-boolean v2, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "MediaOutputMetricLogger"

    const-string v3, "logInteraction - Expansion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getInteractionDeviceType(Lcom/android/settingslib/media/MediaDevice;)I

    move-result v2

    invoke-virtual {p2}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getLoggingPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isSuggestedDevice()Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {p2, v4, v2, v3}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(Ljava/lang/String;IIZ)V

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v1, p0, Lcom/android/settingslib/media/MediaDevice;->mState:I

    iget-object p1, p1, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p1}, Lcom/android/settingslib/media/InfoMediaManager;->getActiveRoutingSession()Landroid/media/RoutingSessionInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "addDeviceToPlayMedia() Ignoring selecting a non-selectable device : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p1, p0, p2}, Lcom/android/settingslib/media/InfoMediaManager;->selectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    iget-object p2, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {p2}, Lcom/android/systemui/media/dialog/MediaOutputController;->getDeselectableMediaDevice()Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isDeviceIncluded(Ljava/util/List;Lcom/android/settingslib/media/MediaDevice;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v1, p0, Lcom/android/settingslib/media/MediaDevice;->mState:I

    iget-object p1, p1, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p1}, Lcom/android/settingslib/media/InfoMediaManager;->getActiveRoutingSession()Landroid/media/RoutingSessionInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "removeDeviceFromMedia() Ignoring deselecting a non-deselectable device : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p1, p0, p2}, Lcom/android/settingslib/media/InfoMediaManager;->deselectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V

    :cond_4
    :goto_0
    return-void
.end method
