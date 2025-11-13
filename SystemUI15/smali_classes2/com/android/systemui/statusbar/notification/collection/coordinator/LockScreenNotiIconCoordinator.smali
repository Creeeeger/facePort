.class public Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockScreenNotiIconCoordinator"


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field private mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

.field private mHasVisibleNotificationOnKeyguard:Z

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

.field private mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

.field private mNotificationInfoArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginLockListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

.field private final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private mPluginLockMode:I

.field private mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mSubscreenController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;


# direct methods
.method public static synthetic $r8$lambda$GpawaSUv_5G7OekJ2i4jED7fttc(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->notifyLockScreenNotiInfoArrayUpdated(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bdIJ3lLngPSoUtAyyXo8lBfA4ng(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->resetNotificationInfoArray(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lHgANT1mAyePKkO-bm67vvAR_Cg(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->lambda$restoreVisibility$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAmbientState(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Lcom/android/systemui/statusbar/notification/stack/AmbientState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPluginLockMode(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mPluginLockMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStatusBarStateController(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSubscreenController(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mSubscreenController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPluginLockMode(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mPluginLockMode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mneedLockScreenExpandPanel(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->needLockScreenExpandPanel()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$4;

    const-string v1, "LockScreenNotiIconCoordinator"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$4;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$5;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mPluginLockListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mNotificationInfoArray:Ljava/util/ArrayList;

    check-cast p6, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)V

    check-cast p6, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p6, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    check-cast p9, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p9, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->registerPluginLockCallback()V

    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_ALL:Z

    if-eqz p1, :cond_0

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mSubscreenController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    :cond_0
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)V

    invoke-virtual {p7, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->addCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)V

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private applyNotificationInfoArray(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsCovered:Z

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolded:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_2

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v4

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v7

    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget v9, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mPluginLockMode:I

    const/16 v10, 0x8

    if-ne v9, v4, :cond_3

    if-nez v2, :cond_4

    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v9, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mPrimaryBouncerShowing:Z

    if-eqz v9, :cond_5

    :cond_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    if-nez v9, :cond_5

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v9, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    if-nez v9, :cond_6

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    :cond_6
    sget-boolean v9, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_ALL:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mSubscreenController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    if-eqz v9, :cond_7

    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSubScreen()Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v4

    goto :goto_4

    :cond_7
    move v9, v3

    :goto_4
    if-eqz v0, :cond_b

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v11

    if-eqz v11, :cond_9

    if-nez v9, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isInsignificant()Z

    move-result v11

    if-eqz v11, :cond_a

    if-nez v9, :cond_a

    goto :goto_5

    :cond_a
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v11, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mNotificationInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    invoke-direct {v9}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;-><init>()V

    iget-object v12, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-object v12, v9, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v12, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iput-object v12, v9, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v12, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    iput-object v12, v9, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object v7, v9, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_5
    if-eqz v2, :cond_e

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->isNotificationIconsOnlyShowing()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    if-eqz v7, :cond_d

    :cond_c
    sget-object v7, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v9, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v7, v9}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v7}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_e
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->restoreVisibility(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    goto/16 :goto_3

    :cond_f
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mHasVisibleNotificationOnKeyguard:Z

    if-nez v0, :cond_10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mHasVisibleNotificationOnKeyguard:Z

    :cond_10
    return-void
.end method

.method private synthetic lambda$restoreVisibility$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->restoreVisibility(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    return-void
.end method

.method private needLockScreenExpandPanel()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isNeedsToExpandLocksNoti()Z

    move-result p0

    return p0
.end method

.method private notifyLockScreenNotiInfoArrayUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->applyNotificationInfoArray(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mNotificationInfoArray:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mNotificationInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mHasVisibleNotificationOnKeyguard:Z

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private registerPluginLockCallback()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mPluginLockListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    invoke-interface {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    return-void
.end method

.method private resetNotificationInfoArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mNotificationInfoArray:Ljava/util/ArrayList;

    return-void
.end method

.method private restoreVisibility(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeFinalizeFilterListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addFinalizeFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iput-object p0, p1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockScreenNotificationStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    return-void
.end method

.method public bridge synthetic onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDensityOrFontScaleChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDisplayDeviceTypeChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLayoutDirectionChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLocaleListChanged()V
    .locals 0

    return-void
.end method

.method public onLockScreenNotiStateChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    const-string v0, "LockScreenNotiStateChanged"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onMaxBoundsChanged()V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->needLockScreenExpandPanel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNotificationAsCard()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mPluginLockMode:I

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setDragDownOnKeyguard(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->onLockScreenNotiStateChanged()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onSmallestScreenWidthChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onThemeChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onUiModeChanged()V
    .locals 0

    return-void
.end method
