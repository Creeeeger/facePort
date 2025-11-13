.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Invalidator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinator;
.implements Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;
.implements Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final appLockNotificationController:Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

.field private final dynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field private final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private keyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$keyguardUpdateMonitorCallback$1;

.field private final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private needUpdateNext:Z

.field private final onSensitiveStateChanged:Ljava/lang/Runnable;

.field private final screenshareSecretFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$screenshareSecretFilter$1;

.field private final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field private final sensitiveNotificationProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/AppLockNotificationController;)V
    .locals 1

    const-string v0, "SensitiveContentInvalidator"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Invalidator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->dynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->sensitiveNotificationProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->appLockNotificationController:Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$onSensitiveStateChanged$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$onSensitiveStateChanged$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->onSensitiveStateChanged:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$keyguardUpdateMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->keyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$keyguardUpdateMonitorCallback$1;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$screenshareSecretFilter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$screenshareSecretFilter$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->screenshareSecretFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$screenshareSecretFilter$1;

    return-void
.end method

.method public static final synthetic access$getKeyguardStateController$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method public static final synthetic access$getSensitiveNotificationProtectionController$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;)Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->sensitiveNotificationProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    return-object p0
.end method

.method public static final synthetic access$setNeedUpdateNext$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->needUpdateNext:Z

    return-void
.end method

.method private static synthetic getKeyguardUpdateMonitorCallback$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getNeedUpdateNext$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->dynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/notification/Flags;->screenshareNotificationHiding()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->sensitiveNotificationProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->onSensitiveStateChanged:Ljava/lang/Runnable;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;)V

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreRenderInvalidator(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Invalidator;)V

    invoke-static {}, Lcom/android/server/notification/Flags;->screenshareNotificationHiding()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->screenshareSecretFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$screenshareSecretFilter$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addFinalizeFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->keyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$keyguardUpdateMonitorCallback$1;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onBeforeRenderList(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setHasRedactedNotifications(Z)V

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->needUpdateNext:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v5, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometricAndIsBypassing(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    return-void

    :cond_3
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->needUpdateNext:Z

    invoke-static {}, Lcom/android/server/notification/Flags;->screenshareNotificationHiding()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->sensitiveNotificationProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->isSensitiveStateActive()Z

    move-result v3

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v5, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v6, v5, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v7, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    if-eqz v3, :cond_6

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    move v3, v2

    :goto_0
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->dynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    move-result v7

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v6}, Lcom/android/systemui/util/SettingsHelper;->isAllowPrivateNotificationsWhenUnsecure(I)Z

    move-result v1

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt;->access$extractAllRepresentativeEntries(Ljava/util/List;)Lkotlin/sequences/Sequence;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$onBeforeRenderList$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$onBeforeRenderList$1;

    invoke-static {v8, v9}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v8

    new-instance v9, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v9, v8}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    :goto_2
    invoke-virtual {v9}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-virtual {v9}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    if-nez v5, :cond_9

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v11, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v11, v10}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_3

    :cond_8
    move v11, v2

    goto :goto_4

    :cond_9
    :goto_3
    move v11, v4

    :goto_4
    sget-boolean v12, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    if-eqz v12, :cond_f

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    if-nez v11, :cond_b

    :goto_5
    move v11, v2

    goto :goto_6

    :cond_b
    if-nez v7, :cond_c

    move v11, v4

    goto :goto_6

    :cond_c
    if-ne v10, v6, :cond_d

    goto :goto_5

    :cond_d
    const/4 v11, -0x1

    if-ne v10, v11, :cond_e

    goto :goto_5

    :cond_e
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v11, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget-object v11, v11, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeparateWorkChallenge:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v10, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v11

    :cond_f
    :goto_6
    invoke-static {}, Lcom/android/server/notification/Flags;->screenshareNotificationHiding()V

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->sensitiveNotificationProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    check-cast v10, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->shouldProtectNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v10

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v12, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v12, v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v12

    if-eqz v11, :cond_10

    if-eqz v12, :cond_10

    move v13, v4

    goto :goto_7

    :cond_10
    move v13, v2

    :goto_7
    iget-object v14, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v14, :cond_11

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v14

    if-ne v14, v4, :cond_11

    invoke-virtual {v8, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setSensitive(ZZ)V

    goto :goto_2

    :cond_11
    sget-boolean v14, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    if-eqz v14, :cond_12

    iput-boolean v11, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mUserPublic:Z

    :cond_12
    sget-boolean v11, Lcom/android/systemui/NotiRune;->NOTI_STYLE_APP_LOCK:Z

    if-eqz v11, :cond_13

    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->appLockNotificationController:Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

    check-cast v14, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;

    invoke-virtual {v14, v8}, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->shouldHideNotiForAppLock(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v14

    iget-object v15, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v15, :cond_14

    xor-int/lit8 v4, v14, 0x1

    iget-boolean v2, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowPublicExpander:Z

    if-eq v2, v4, :cond_14

    iput-boolean v4, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowPublicExpander:Z

    iget-object v2, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    const/4 v15, 0x0

    invoke-virtual {v2, v4, v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtonsDuringLayout(ZZ)V

    goto :goto_8

    :cond_13
    const/4 v14, 0x0

    :cond_14
    :goto_8
    if-nez v13, :cond_16

    if-nez v10, :cond_16

    if-eqz v11, :cond_15

    if-eqz v14, :cond_15

    goto :goto_9

    :cond_15
    const/4 v15, 0x0

    goto :goto_a

    :cond_16
    :goto_9
    const/4 v15, 0x1

    :goto_a
    invoke-virtual {v8, v15, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setSensitive(ZZ)V

    if-nez v12, :cond_18

    if-nez v10, :cond_18

    if-eqz v11, :cond_17

    if-eqz v14, :cond_17

    goto :goto_b

    :cond_17
    const/4 v15, 0x0

    goto :goto_c

    :cond_18
    :goto_b
    const/4 v15, 0x1

    :goto_c
    iget-boolean v2, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRawValueHide:Z

    if-eq v2, v15, :cond_1a

    iput-boolean v15, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRawValueHide:Z

    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnHideRawValueChangedListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v2}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$mOnHideRawValueChangedListener$1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->TAG:Ljava/lang/String;

    iget-boolean v11, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRawValueHide:Z

    const-string v13, "hide change : "

    const-string v14, " | "

    invoke-static {v13, v14, v11}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v11

    if-eqz v11, :cond_19

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->convertOngoingActivityData(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->notifyUpdateItemNowbarObservers(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;)V

    goto :goto_d

    :cond_19
    const-string/jumbo v11, "updateNowbarItemWhenSensitivityChanged() : ongoingActivityData is null"

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_1a
    invoke-static {}, Lcom/android/server/notification/Flags;->screenshareNotificationHiding()V

    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_1b

    xor-int/lit8 v4, v10, 0x1

    iget-boolean v8, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowPublicExpander:Z

    if-eq v8, v4, :cond_1b

    iput-boolean v4, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowPublicExpander:Z

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    const/4 v8, 0x0

    invoke-virtual {v2, v4, v8}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtonsDuringLayout(ZZ)V

    goto :goto_e

    :cond_1b
    const/4 v8, 0x0

    :goto_e
    sget-boolean v2, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->hasRedactedNotifications()Z

    move-result v2

    if-nez v2, :cond_1c

    if-eqz v12, :cond_1c

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2, v12}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setHasRedactedNotifications(Z)V

    :cond_1c
    move v2, v8

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_1d
    return-void
.end method

.method public onDynamicPrivacyChanged()V
    .locals 1

    const-string v0, "onDynamicPrivacyChanged"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    return-void
.end method
