.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController$Callback;
.implements Lcom/android/systemui/facewidget/FaceWidgetNotificationController;


# instance fields
.field public final mBriefCallbacks:Ljava/util/ArrayList;

.field public mContext:Landroid/content/Context;

.field public mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

.field public mMediaDataListener:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

.field public final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field public mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

.field public mNowbarWatcher:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$nowbarWatcher$1;

.field public mPanelViewControllerLazy:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mBriefCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    return-void
.end method


# virtual methods
.method public final dismissOngoingActivityNotification(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissOngoingActivityNotification(Ljava/lang/String;)V

    return-void
.end method

.method public final expandToNotifications()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->countOpenNotificationPanelFromStatusbarOnLockscreen()V

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->expandToNotifications()V

    :cond_0
    return-void
.end method

.method public final getActiveNotificationSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getAllNotifications()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getEntryKey(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNotificationPackageName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNotificationUid(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getNowBarItemList()Ljava/util/ArrayList;
    .locals 3

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const-string v1, "getNowBarItemList size = "

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->convertOngoingActivityData(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getNowBarRootView()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mPanelViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNowBarContainer:Landroid/view/View;

    if-nez p0, :cond_0

    const-string p0, "NotificationPanelView"

    const-string v0, "provideFaceWidgetNowBarContainer nowbarRootView is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getPluginLockDataGravity()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getLockStarValues()Lcom/samsung/systemui/splugins/lockstar/LockStarValues;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/LockStarValues;->getNotificationIconGravity()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockData;->getGravity(I)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    const/16 p0, 0x11

    return p0
.end method

.method public final getPluginLockDataMarginTop()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getLockStarValues()Lcom/samsung/systemui/splugins/lockstar/LockStarValues;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/LockStarValues;->getNotificationTopMargin()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockData;->getTop(I)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getPluginLockDataPaddingEnd()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getLockStarValues()Lcom/samsung/systemui/splugins/lockstar/LockStarValues;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/LockStarValues;->getNotificationIconPaddingEnd()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockData;->getPaddingEnd(I)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getPluginLockDataPaddingStart()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getLockStarValues()Lcom/samsung/systemui/splugins/lockstar/LockStarValues;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/LockStarValues;->getNotificationIconPaddingStart()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockData;->getPaddingStart(I)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final initPlugin(Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->init(Ljava/util/function/Consumer;)V

    :cond_0
    iput-object p2, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mContext:Landroid/content/Context;

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->nowbarObservers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNowbarWatcher:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$nowbarWatcher$1;

    if-eqz p1, :cond_2

    sget-object p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->nowbarWatcher:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$nowbarWatcher$1;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNowbarWatcher:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$nowbarWatcher$1;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->nowbarObservers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->nowbarWatcher:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$nowbarWatcher$1;

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNowbarWatcher:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$nowbarWatcher$1;

    :cond_2
    :goto_0
    return-void
.end method

.method public final isPluginLockDataAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isTransformAnimating()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return v0
.end method

.method public final onClick()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mShadeController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShade(Landroid/view/View;Z)V

    return-void
.end method

.method public final onExternalExpandNowbarCardAttached(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;Z)V
    .locals 3

    const-string v0, "FaceWidgetNotificationControllerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onExternalExpandNowbarCardAttached targetItem = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " attached + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->getNowBarViewStyle()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mBriefCallbacks:Ljava/util/ArrayList;

    monitor-enter p1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mBriefCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mBriefCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/aibrief/control/BriefNowBarCallBack;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Lcom/android/systemui/aibrief/control/BriefNowBarCallBack;->onFullScreenShowingChanged(Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p1

    goto :goto_3

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_3
    return-void
.end method

.method public final onTopNowBarItemChangedFromNowbar(Ljava/lang/String;)V
    .locals 5

    const-string v0, "onTopNowBarItemChangedFromNowbar sbnId = "

    const-string v1, " NowbarWatcher + "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNowbarWatcher:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$nowbarWatcher$1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetNotificationControllerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNowbarWatcher:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$nowbarWatcher$1;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    const-string v0, "MEDIA_NOWBAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getMediaData()Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    const-string v2, " RECEIVED ID - "

    const-string v3, " and our current top is "

    const-string v4, " and index "

    invoke-static {v2, p1, v3, p0, v4}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v1

    :goto_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ge p0, v0, :cond_1

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-static {v3, v2}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    const-string v2, "found index - "

    const-string v3, " and after rotation top is "

    const-string v4, " and count "

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->notifyUpdateObservers()V

    :cond_3
    return-void
.end method

.method public final onTouchEvent(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz p0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mScreenOn:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const-string v1, "1005"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mShadeController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShade(Landroid/view/View;Z)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Swipe down icon only"

    invoke-static {p0, v1, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Tap icon only"

    invoke-static {p0, v1, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final removeItem(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->onNowBarItemRemoved(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeItem "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceWidgetNotificationControllerWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final setNotificationIconsOnlyContainer()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mFaceWidgetNotificationController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    const v0, 0x7f0a0cf8

    const v1, 0x7f0a0d05

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->setTagId(II)V

    :cond_0
    return-void
.end method

.method public final swapLastItemToFirst()V
    .locals 2

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    invoke-static {p0, v0}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public final updateItem(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->onNowBarItemUpdated(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateItem "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceWidgetNotificationControllerWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
