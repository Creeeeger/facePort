.class public final Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;


# instance fields
.field public final mBubbles:Ljava/util/Optional;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mEventLog:Lcom/android/systemui/util/EventLog;

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mSuppressors:Ljava/util/List;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field protected mUseHeadsUp:Z


# direct methods
.method public constructor <init>(Landroid/os/PowerManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;Landroid/os/Handler;Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/util/EventLog;Landroid/content/Context;Ljava/util/Optional;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PowerManager;",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;",
            "Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            "Lcom/android/systemui/util/EventLog;",
            "Landroid/content/Context;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUseHeadsUp:Z

    move-object v2, p1

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mPowerManager:Landroid/os/PowerManager;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mEventLog:Lcom/android/systemui/util/EventLog;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mBubbles:Ljava/util/Optional;

    new-instance v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$1;

    move-object v3, p8

    invoke-direct {v2, p0, p8}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$1;-><init>(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;Landroid/os/Handler;)V

    const-string v3, "heads_up_notifications_enabled"

    invoke-interface {v1, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v3, "ticker_gets_heads_up"

    invoke-interface {v1, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v3, v4, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$1;->onChange(Z)V

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method public static getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;
    .locals 0

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->shouldLaunch:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUPPRESSED_ONLY_BY_DND:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUPPRESSED_BY_DND:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final canAlertAwakeCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVrMode:Z

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logNoAlertingSuppressedBy(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationAlertsInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationAlertsInteractor;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationAlertsInteractor;->disableFlagsRepository:Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepository;

    check-cast v2, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;->disableFlags:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;

    iget v2, v2, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;->disable1:I

    const/high16 v5, 0x40000

    and-int/2addr v2, v5

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    invoke-virtual {v4, p1, v0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logNoAlertingSuppressedBy(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->isSuspended()Z

    move-result v1

    const-string v2, "InterruptionStateProvider"

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object p2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoAlertingAppSuspended$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoAlertingAppSuspended$2;

    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v1, v2, p0, p2, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, p2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_4
    return v0

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

    check-cast p0, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->shouldHideNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz p2, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object p2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoAlertingNotificationHidden$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoAlertingNotificationHidden$2;

    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v1, v2, p0, p2, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, p2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_6
    return v0

    :cond_7
    return v3
.end method

.method public final canHeadsUpCommonForFrontCoverScreen(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationAlertsInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationAlertsInteractor;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationAlertsInteractor;->disableFlagsRepository:Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepository;

    check-cast v1, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;->disableFlags:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;

    iget v1, v1, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;->disable1:I

    const/high16 v4, 0x40000

    and-int/2addr v1, v4

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    xor-int/2addr v1, v3

    if-eqz v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUseHeadsUp:Z

    if-nez p0, :cond_4

    return v2

    :cond_4
    const/16 p0, 0x10

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v3
.end method

.method public final checkHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    return v10

    :cond_0
    iget-object v2, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-boolean v0, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsHeadsUpByBriefExpanding:Z

    const/4 v11, 0x1

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    const-string v12, "InterruptionStateProvider"

    if-nez v0, :cond_9

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->semFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_1

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {v0, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPresenterLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationPresenter;

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-ne v0, v11, :cond_9

    iget-object v0, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.android.cts.verifier"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No  Heads up : DISABLE_HEADS_UP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_2
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->semFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    move v0, v10

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isPopStyleBrief()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-class v0, Landroid/app/INotificationManager;

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v4, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    :try_start_0
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/app/INotificationManager;->isEdgeLightingAllowed(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " shouldHeadsUp.isEdgeLightingAllowed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " no Heads up : edgelighting enabled app. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_5
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    if-eqz v0, :cond_6

    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v4, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSubScreen()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " no Heads up : subscreen mode."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_6
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No  Heads up : remote lock state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_7
    iget-object v0, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No  Heads up : suspended: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v0

    if-eqz v0, :cond_9

    return v10

    :cond_9
    :goto_2
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_a

    return v10

    :cond_a
    iget-object v0, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUseHeadsUp:Z

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    if-nez v2, :cond_b

    if-eqz p2, :cond_2a

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpFeatureDisabled$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpFeatureDisabled$2;

    iget-object v2, v14, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v12, v0, v1, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto/16 :goto_f

    :cond_b
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_f

    :cond_c
    iget-object v2, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz p2, :cond_2a

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoAlertingGroupAlertBehavior$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoAlertingGroupAlertBehavior$2;

    iget-object v2, v14, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v12, v0, v1, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto/16 :goto_f

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastFullScreenIntentLaunchTime:J

    const-wide/16 v15, 0x7d0

    add-long/2addr v6, v15

    cmp-long v2, v4, v6

    if-gez v2, :cond_e

    move v2, v11

    goto :goto_3

    :cond_e
    move v2, v10

    :goto_3
    if-eqz v2, :cond_f

    if-eqz p2, :cond_2a

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoAlertingRecentFullscreen$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoAlertingRecentFullscreen$2;

    iget-object v2, v14, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v12, v0, v1, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto/16 :goto_f

    :cond_f
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertAwakeCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_f

    :cond_10
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v4, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->isSnoozed(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_11

    move v0, v11

    goto :goto_4

    :cond_11
    move v0, v10

    :goto_4
    if-eqz v15, :cond_12

    if-nez v0, :cond_12

    if-eqz p2, :cond_2a

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpPackageSnoozed$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpPackageSnoozed$2;

    iget-object v2, v14, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v12, v0, v1, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto/16 :goto_f

    :cond_12
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_13

    move v0, v11

    goto :goto_5

    :cond_13
    move v0, v10

    :goto_5
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mBubbles:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mBubbles:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/bubbles/Bubbles;

    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-boolean v2, v2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeVisible:Z

    xor-int/2addr v2, v11

    goto :goto_6

    :cond_14
    move v2, v11

    :goto_6
    if-eqz v2, :cond_15

    move v2, v11

    goto :goto_7

    :cond_15
    move v2, v10

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v0, :cond_16

    if-eqz v2, :cond_16

    if-eqz p2, :cond_2a

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpAlreadyBubbled$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpAlreadyBubbled$2;

    iget-object v2, v14, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v12, v0, v1, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto/16 :goto_f

    :cond_16
    const/16 v0, 0x10

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p2, :cond_2a

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpSuppressedByDnd$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpSuppressedByDnd$2;

    iget-object v2, v14, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v12, v0, v1, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto/16 :goto_f

    :cond_17
    iget-object v0, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_18

    if-eqz p2, :cond_2a

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpNotImportant$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpNotImportant$2;

    iget-object v2, v14, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v12, v0, v1, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto/16 :goto_f

    :cond_18
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDreaming()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_8

    :cond_19
    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide v4

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v2

    sub-long v6, v2, v4

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v6, v2

    if-gez v2, :cond_1a

    goto :goto_8

    :cond_1a
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gtz v2, :cond_1b

    if-eqz p2, :cond_1e

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    const-string/jumbo v8, "when <= 0"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logMaybeHeadsUpDespiteOldWhen(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JJLjava/lang/String;)V

    goto :goto_8

    :cond_1b
    iget-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1c

    if-eqz p2, :cond_1e

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    const-string v8, "full-screen intent"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logMaybeHeadsUpDespiteOldWhen(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JJLjava/lang/String;)V

    goto :goto_8

    :cond_1c
    invoke-virtual {v0}, Landroid/app/Notification;->isForegroundService()Z

    move-result v2

    if-eqz v2, :cond_1d

    if-eqz p2, :cond_1e

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    const-string v8, "foreground service"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logMaybeHeadsUpDespiteOldWhen(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JJLjava/lang/String;)V

    goto :goto_8

    :cond_1d
    invoke-virtual {v0}, Landroid/app/Notification;->isUserInitiatedJob()Z

    move-result v0

    if-eqz v0, :cond_27

    if-eqz p2, :cond_1e

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    const-string/jumbo v8, "user initiated job"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logMaybeHeadsUpDespiteOldWhen(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JJLjava/lang/String;)V

    :cond_1e
    :goto_8
    move v0, v10

    :goto_9
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v4, :cond_21

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v6, v5, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_a

    :cond_1f
    move v3, v10

    goto :goto_b

    :cond_20
    :goto_a
    move v3, v11

    :goto_b
    check-cast v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v4, v9}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v4

    if-eqz v3, :cond_21

    if-eqz v4, :cond_21

    :goto_c
    move v2, v11

    goto :goto_d

    :cond_21
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_c

    :cond_22
    move v2, v10

    :goto_d
    if-eqz v2, :cond_23

    if-eqz p2, :cond_2a

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpSuppressedBy$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpSuppressedBy$2;

    iget-object v2, v14, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v12, v0, v1, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    const-string v1, "StatusBarNotificationPresenter"

    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto/16 :goto_f

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_24
    if-eqz v15, :cond_26

    if-eqz p2, :cond_25

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logHeadsUpPackageSnoozeBypassedHasFsi$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logHeadsUpPackageSnoozeBypassedHasFsi$2;

    iget-object v3, v14, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v3, v12, v0, v2, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v2, v4, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    iget-object v2, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->HUN_SNOOZE_BYPASSED_POTENTIALLY_SUPPRESSED_FSI:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    invoke-interface {v1, v3, v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :cond_25
    :goto_e
    move v10, v11

    goto :goto_f

    :cond_26
    if-eqz p2, :cond_25

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logHeadsUp$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logHeadsUp$2;

    iget-object v2, v14, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v12, v0, v1, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_e

    :cond_27
    if-eqz p2, :cond_28

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpOldWhen$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpOldWhen$2;

    iget-object v3, v14, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v3, v12, v0, v2, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v2, v8, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-wide v4, v8, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    iput-wide v6, v8, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    invoke-virtual {v3, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_28
    iget-object v0, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    iget-object v2, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->HUN_SUPPRESSED_OLD_WHEN:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    invoke-interface {v1, v3, v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    goto :goto_f

    :cond_29
    if-eqz p2, :cond_2a

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpNotInUse$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpNotInUse$2;

    iget-object v2, v14, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v12, v0, v1, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_2a
    :goto_f
    return v10
.end method

.method public final getFullScreenIntentDecision(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;
    .locals 3

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isStickyAndNotDemoted()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SHOW_STICKY_HUN:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FULL_SCREEN_INTENT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    return-object p0

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result v1

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v2

    if-ge v2, v0, :cond_2

    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_NOT_IMPORTANT_ENOUGH:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUPPRESSIVE_GROUP_ALERT_BEHAVIOR:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUPPRESSIVE_BUBBLE_METADATA:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUSPENDED:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_DEVICE_NOT_INTERACTIVE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDreaming()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_DEVICE_IS_DREAMING:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_KEYGUARD_SHOWING:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->checkHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_EXPECTED_TO_HUN:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->semFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_f

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->semFlags:I

    and-int/lit16 p1, p1, 0x4000

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_c

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_KEYGUARD_OCCLUDED:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    move-result-object p0

    return-object p0

    :cond_b
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_LOCKED_SHADE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    move-result-object p0

    return-object p0

    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_d

    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_NOT_PROVISIONED:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result p0

    if-nez p0, :cond_e

    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_USER_SETUP_INCOMPLETE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    move-result-object p0

    return-object p0

    :cond_e
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_NO_HUN_OR_KEYGUARD:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_0
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_EXPECTED_TO_BRIEF:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    move-result-object p0

    return-object p0
.end method

.method public final logFullScreenIntentDecision(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;)V
    .locals 8

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$2;->$SwitchMap$com$android$systemui$statusbar$notification$interruption$NotificationInterruptStateProvider$FullScreenIntentDecision:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    const-string v4, "231322873"

    const v5, 0x534e4554

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mEventLog:Lcom/android/systemui/util/EventLog;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget-boolean p0, p2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->shouldLaunch:Z

    const-string v0, "InterruptionStateProvider"

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logFullscreen$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logFullscreen$2;

    iget-object v3, v7, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v3, v0, p2, v2, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p2

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v3, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoFullscreen$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoFullscreen$2;

    iget-object v3, v7, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v3, v0, p2, v2, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p2

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v3, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "no hun or keyguard"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6, v5, v2}, Lcom/android/systemui/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->FSI_SUPPRESSED_NO_HUN_OR_KEYGUARD:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": Expected not to HUN while not on keyguard"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p1, p0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logNoFullscreenWarning(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "bubbleMetadata"

    const-string v4, "274759612"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6, v5, v2}, Lcom/android/systemui/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->FSI_SUPPRESSED_SUPPRESSIVE_BUBBLE_METADATA:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": BubbleMetadata may prevent HUN"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p1, p0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logNoFullscreenWarning(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "groupAlertBehavior"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6, v5, v2}, Lcom/android/systemui/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->FSI_SUPPRESSED_SUPPRESSIVE_GROUP_ALERT_BEHAVIOR:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": GroupAlertBehavior will prevent HUN"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p1, p0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logNoFullscreenWarning(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertAwakeCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    if-nez v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1

    :cond_3
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    const-string v4, "InterruptionStateProvider"

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "No bubble up: notification: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t mw"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isMultiWindowBlockListApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoBubbleNoMetadata$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoBubbleNoMetadata$2;

    const/4 v2, 0x0

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v3, v4, p0, v0, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return v1
.end method
