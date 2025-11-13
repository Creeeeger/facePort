.class public final Lcom/android/systemui/wmshell/BubblesManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mBroadcastReceiver:Lcom/android/systemui/wmshell/BubblesManager$7;

.field public final mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

.field public final mCallbacks:Ljava/util/List;

.field public final mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final mContext:Landroid/content/Context;

.field public final mDreamManager:Landroid/service/dreams/IDreamManager;

.field public mDreamingOrInPreview:Z

.field public mIsScreenUnlocked:Z

.field public mKeyguardShowing:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mNotifUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mNotificationManager:Landroid/app/INotificationManager;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public mPanelExpanded:Z

.field public final mSensitiveNotifProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

.field public final mSensitiveStateChangedListener:Lcom/android/systemui/wmshell/BubblesManager$4;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public final mShouldBubbleUpEntry:Ljava/util/HashMap;

.field public final mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

.field public final mSysuiMainExecutor:Ljava/util/concurrent/Executor;

.field public final mSysuiUiBgExecutor:Ljava/util/concurrent/Executor;

.field public final mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

.field public final mVisualInterruptionDecisionProvider:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/Bubbles;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/shade/ShadeController;Lcom/android/internal/statusbar/IStatusBarService;Landroid/app/INotificationManager;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 10

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p12

    move-object/from16 v5, p13

    move-object/from16 v6, p19

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCallbacks:Ljava/util/List;

    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/systemui/wmshell/BubblesManager;->mIsScreenUnlocked:Z

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/wmshell/BubblesManager;->mShouldBubbleUpEntry:Ljava/util/HashMap;

    new-instance v7, Lcom/android/systemui/wmshell/BubblesManager$7;

    invoke-direct {v7, p0}, Lcom/android/systemui/wmshell/BubblesManager$7;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    move-object v8, p1

    iput-object v8, v0, Lcom/android/systemui/wmshell/BubblesManager;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    iput-object v2, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object v3, v0, Lcom/android/systemui/wmshell/BubblesManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v8, p5

    iput-object v8, v0, Lcom/android/systemui/wmshell/BubblesManager;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationManager:Landroid/app/INotificationManager;

    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/systemui/wmshell/BubblesManager;->mDreamManager:Landroid/service/dreams/IDreamManager;

    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/android/systemui/wmshell/BubblesManager;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    move-object/from16 v8, p10

    iput-object v8, v0, Lcom/android/systemui/wmshell/BubblesManager;->mVisualInterruptionDecisionProvider:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;

    iput-object v4, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotifUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v5, v0, Lcom/android/systemui/wmshell/BubblesManager;->mSensitiveNotifProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    move-object/from16 v8, p14

    iput-object v8, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iput-object v6, v0, Lcom/android/systemui/wmshell/BubblesManager;->mSysuiMainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v8, p20

    iput-object v8, v0, Lcom/android/systemui/wmshell/BubblesManager;->mSysuiUiBgExecutor:Ljava/util/concurrent/Executor;

    if-nez p6, :cond_0

    const-string/jumbo v8, "statusbar"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    iput-object v8, v0, Lcom/android/systemui/wmshell/BubblesManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    new-instance v8, Lcom/android/systemui/wmshell/BubblesManager$6;

    invoke-direct {v8, p0}, Lcom/android/systemui/wmshell/BubblesManager$6;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    move-object/from16 v9, p15

    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    new-instance v8, Lcom/android/systemui/wmshell/BubblesManager$1;

    invoke-direct {v8, p0, p4}, Lcom/android/systemui/wmshell/BubblesManager$1;-><init>(Lcom/android/systemui/wmshell/BubblesManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/systemui/wmshell/BubblesManager$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/wmshell/BubblesManager$2;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    move-object/from16 v8, p11

    check-cast v8, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/systemui/wmshell/BubblesManager$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/wmshell/BubblesManager$3;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    check-cast v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    new-instance v3, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    iput-object v3, v0, Lcom/android/systemui/wmshell/BubblesManager;->mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    check-cast v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {v2, v3}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V

    new-instance v2, Lcom/android/systemui/wmshell/BubblesManager$4;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/wmshell/BubblesManager$4;-><init>(Lcom/android/systemui/wmshell/BubblesManager;Lcom/android/wm/shell/bubbles/Bubbles;)V

    invoke-static {}, Lcom/android/server/notification/Flags;->screenshareNotificationHiding()V

    move-object v3, v5

    check-cast v3, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v3, v2}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/systemui/wmshell/BubblesManager$5;

    move-object/from16 v3, p16

    invoke-direct {v2, p0, v6, v3}, Lcom/android/systemui/wmshell/BubblesManager$5;-><init>(Lcom/android/systemui/wmshell/BubblesManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/model/SysUiState;)V

    move-object v0, v1

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda16;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v6}, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;)V

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda16;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v3, p21

    invoke-virtual {v3, v7, v0, v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static areBubblesEnabled(Landroid/content/Context;Landroid/os/UserHandle;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "notification_bubbles"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p0, v1, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method


# virtual methods
.method public notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;
    .locals 7

    new-instance p0, Lcom/android/wm/shell/bubbles/BubbleEntry;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isDismissableForState(Z)Z

    move-result v3

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result v4

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result v5

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/bubbles/BubbleEntry;-><init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;ZZZZ)V

    return-object p0
.end method

.method public final onUserChangedBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 6

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    if-nez p2, :cond_1

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v4, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, -0x1001

    iput v4, v3, Landroid/app/Notification;->flags:I

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, v3, Landroid/app/Notification;->flags:I

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wmshell/BubblesManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-interface {v3, v4, p2, v5}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v3, p0, Lcom/android/systemui/wmshell/BubblesManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-static {v3, v4, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationChannelHelper;->createConversationChannelIfNeeded(Landroid/content/Context;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v3, v1, v2}, Landroid/app/INotificationManager;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result v3

    if-eqz p2, :cond_3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationManager:Landroid/app/INotificationManager;

    const/4 v4, 0x2

    invoke-interface {v3, v1, v2, v4}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v3, v1, v2, v0}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    const-string v1, "Bubbles"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    const/4 p2, 0x1

    invoke-interface {p0, p2}, Lcom/android/systemui/shade/ShadeController;->collapseShade(Z)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBubbleButton()V

    :cond_4
    :goto_4
    return-void
.end method

.method public final shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mVisualInterruptionDecisionProvider:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;->makeAndLogBubbleDecision(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider$Decision;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider$Decision;->getShouldInterrupt()Z

    move-result p0

    return p0
.end method
