.class public final Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1;
.super Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1;->this$0:Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;

    invoke-direct {p0}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1;->this$0:Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;->mEntries:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->atomicValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_4
    return-object v0
.end method

.method public final isAppLockEnabled()Z
    .locals 1

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->isAppLockEnabled()Z

    move-result p0

    return p0
.end method

.method public final isInterrupted(Ljava/lang/String;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1;->this$0:Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;->mEntries:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->atomicValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean p0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    return p0

    :cond_4
    return v0
.end method

.method public final isNeedToSanitize(IILjava/lang/String;)Z
    .locals 4

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {p0, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v2

    xor-int/2addr v2, v0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    :cond_1
    move p2, v0

    goto :goto_0

    :cond_2
    move p2, v3

    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    return v0
.end method

.method public final isOngoingAcitivty(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.ongoingActivityNoti.style"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method

.method public final isPanelsEnabled()Z
    .locals 1

    const-class p0, Lcom/android/systemui/statusbar/CommandQueue;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result p0

    return p0
.end method

.method public final isRowPinned(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1;->this$0:Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;->mEntries:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->atomicValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public final isSensitiveStateActive()Z
    .locals 1

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->isSensitiveStateActive()Z

    move-result p0

    return p0
.end method

.method public final isSupportAppLock()Z
    .locals 1

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/systemui/NotiRune;->NOTI_STYLE_APP_LOCK:Z

    return p0
.end method

.method public final requestDozeStateSubScreen(Z)V
    .locals 1

    const-class p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->requestDozeState(IZ)V

    return-void
.end method

.method public final sendClickEvent(Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1;->this$0:Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;->mEntries:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->atomicValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    sget-boolean p0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "SysUIConditionListener"

    const-string/jumbo p1, "sendClickEvent: coverBriefClicked"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    new-instance p1, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->dragAndDropSuccess()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final setInterruption(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1;->this$0:Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;->mEntries:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->atomicValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final shouldHideNotiForAppLockByPackage(Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->isAppLockEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final turnToHeadsUp(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
