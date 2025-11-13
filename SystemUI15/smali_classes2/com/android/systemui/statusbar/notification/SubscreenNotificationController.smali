.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public final bubblesOptional:Ljava/util/Optional;

.field public final context:Landroid/content/Context;

.field public final conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

.field public final debugModeFilterProvider:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

.field public final keyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

.field public final mDeviceStateCallback:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mDeviceStateCallback$1;

.field public final mRemoteInputCancelListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mRemoteInputCancelListener$1;

.field public final mediaFeatureFlag:Lcom/android/systemui/media/controls/util/MediaFeatureFlag;

.field public final notifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public final notificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

.field public final notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final pluginAODManagerLazy:Ldagger/Lazy;

.field public final remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public replyActivity:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final subscreenStateListenerList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Ljava/util/Optional;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/media/controls/util/MediaFeatureFlag;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/settings/UserContextProvider;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;",
            "Lcom/android/systemui/bixby2/controller/NotificationController;",
            "Landroid/os/UserManager;",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Lcom/android/systemui/log/LogBuffer;",
            "Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;",
            "Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/media/controls/util/MediaFeatureFlag;",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v14, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    move-object/from16 v11, p5

    iput-object v11, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->pluginAODManagerLazy:Ldagger/Lazy;

    move-object/from16 v2, p7

    iput-object v2, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v3, p8

    iput-object v3, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v13, p12

    iput-object v13, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    move-object/from16 v12, p14

    iput-object v12, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    move-object/from16 v0, p15

    iput-object v0, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->bubblesOptional:Ljava/util/Optional;

    move-object/from16 v0, p17

    iput-object v0, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->debugModeFilterProvider:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    move-object/from16 v0, p18

    iput-object v0, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->keyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

    move-object/from16 v0, p19

    iput-object v0, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v0, p20

    iput-object v0, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mediaFeatureFlag:Lcom/android/systemui/media/controls/util/MediaFeatureFlag;

    move-object/from16 v0, p21

    iput-object v0, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    move-object/from16 v0, p22

    iput-object v0, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-object/from16 v0, p23

    iput-object v0, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCreater;->Companion:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCreater$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    new-instance v17, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p2

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p9

    move-object/from16 v8, p16

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v0 .. v16}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v10, v17

    goto/16 :goto_1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-eqz v0, :cond_1

    new-instance v17, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p2

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p9

    move-object/from16 v8, p16

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v0 .. v16}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CLEAR_COVER:Z

    if-eqz v0, :cond_2

    new-instance v17, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p2

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p9

    move-object/from16 v8, p16

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v0 .. v16}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    move-object/from16 v0, p0

    :goto_1
    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mDeviceStateCallback$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mDeviceStateCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V

    move-object/from16 v2, p9

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V

    move-object/from16 v3, p11

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;->listeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v3, v2}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceStateManager;

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_3
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initialize()V

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->subscreenStateListenerList:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mRemoteInputCancelListener$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mRemoteInputCancelListener$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mRemoteInputCancelListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mRemoteInputCancelListener$1;

    return-void
.end method


# virtual methods
.method public final hideDetailNotif()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_8

    const-class v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    const-string v5, "   hide recyclerview "

    invoke-static {v5, v4, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsGhost:Z

    :cond_3
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputActionIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mRemoteInputCancelListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mRemoteInputCancelListener$1;

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->subscreenStateListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1;

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1;->onHideDetail(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    goto :goto_4

    :cond_6
    move-object p0, v1

    :goto_4
    if-nez p0, :cond_7

    goto :goto_5

    :cond_7
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    :cond_8
    :goto_5
    return-void
.end method

.method public final onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSubScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "entryAdded parent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const-string v2, "S.S.N."

    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsReplyNotification:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsReplyNotification:Z

    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isProper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "entryAdded - add popup key"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showPopupEntryKeySet:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    :cond_1
    return-void
.end method

.method public final onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz p0, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onEntryRemoved parent : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const-string v1, "S.S.N."

    invoke-static {p2, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showPopupEntryKeySet:Landroid/util/ArraySet;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    sget-boolean p2, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_PENDING_CALL_FULLSCRREN_INTENT:Z

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    if-eqz p2, :cond_0

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iget-object v3, p2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPendingFullscreenEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v2, p2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPendingFullscreenEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSubScreen()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notifyListAdapterItemRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notifyGroupAdapterItemRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListUpdateItemHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onEntryRemoved parent - remove List index : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", group index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v3, 0x1

    if-ltz p2, :cond_1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsNotificationRemoved:Z

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListRemoveEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1, v3}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->updateNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string p2, "REMOVE fullscreenIntent notification - "

    invoke-static {p2, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->removeSmartReplyHashMap(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p2, :cond_6

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    if-ne p2, v3, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    if-eqz p2, :cond_4

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p0, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    if-eqz p1, :cond_5

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mIsCustomNotificationUpdated:Ljava/lang/Boolean;

    :cond_5
    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_6
    return-void
.end method

.method public final onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSubScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "entryUpdated parent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const-string v2, "S.S.N."

    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsReplyNotification:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsReplyNotification:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isProper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "entryUpdated - add popup key"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showPopupEntryKeySet:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final onFoldStateChanged(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_GHOST_NOTIFICATION:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotification()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->foldStateChanged(Z)V

    :cond_1
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public final replyNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    sget-boolean v3, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_GHOST_NOTIFICATION:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->useHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_4

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsGhost:Z

    if-nez v3, :cond_4

    iput-boolean v4, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsGhost:Z

    const-class v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "   "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " will be ghost "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputActionIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mRemoteInputCancelListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mRemoteInputCancelListener$1;

    invoke-virtual {v0, v3, v5}, Landroid/app/PendingIntent;->addCancelListener(Ljava/util/concurrent/Executor;Landroid/app/PendingIntent$CancelListener;)Z

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->subscreenStateListenerList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1;->onReply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v0, :cond_7

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsReplyNotification:Z

    :cond_7
    if-eqz v0, :cond_e

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;

    if-eqz v2, :cond_e

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v2, :cond_8

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_5

    :cond_8
    move-object v3, v1

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hideDetailAdapterAfterBubbleReply parent - Entry  : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "S.S.N."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v3, :cond_9

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->removeGroupDataArrayItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_9
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_b

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v3, :cond_b

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-eqz v3, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_6

    :cond_a
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notifyListAdapterItemRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    :cond_b
    :goto_6
    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_GHOST_NOTIFICATION:Z

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_d

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->useHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotification()V

    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsUpdatedAllMainList:Z

    :cond_d
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mBubbleReplyEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->removeMainHashItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideSmartReplyErrorMessage()V

    :cond_f
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->replyNotification(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final requestDozeState(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->pluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->requestMODState(IZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->requestMODState(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->debugModeFilterProvider:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v0, :cond_1

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_8

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.allowDuringSetup"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_1
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isCurrentProfile(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->keyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

    check-cast v0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->shouldHideNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mediaFeatureFlag:Lcom/android/systemui/media/controls/util/MediaFeatureFlag;

    iget-object p0, p0, Lcom/android/systemui/media/controls/util/MediaFeatureFlag;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->Companion:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Companion;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_0
    return v1
.end method

.method public final useHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNotificationHistoryEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/NotificationManager;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Landroid/app/NotificationManager;->semGetNotificationHistoryForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    if-lez p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method
