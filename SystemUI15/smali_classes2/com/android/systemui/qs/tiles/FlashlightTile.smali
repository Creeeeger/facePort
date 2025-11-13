.class public Lcom/android/systemui/qs/tiles/FlashlightTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/SQSTileImpl;",
        "Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;"
    }
.end annotation


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

.field public final mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field public mIsLowBattery:Z

.field public mListening:Z

.field public final mReceiver:Lcom/android/systemui/qs/tiles/FlashlightTile$1;

.field public final mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSubscreenContext:Landroid/content/Context;

.field public final mSubscreenFlashlightController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 11

    move-object v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p12

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    const v3, 0x7f080e7e

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v4, 0x7f080e9f

    const v5, 0x7f080ebe

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v4, 0x7f080e7f

    const v5, 0x7f080e9e

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    iput-boolean v3, v0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mListening:Z

    new-instance v3, Lcom/android/systemui/qs/tiles/FlashlightTile$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/FlashlightTile$1;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mReceiver:Lcom/android/systemui/qs/tiles/FlashlightTile$1;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object v4, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {v1, v4, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    iput-object v4, v0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    move-object/from16 v5, p11

    iput-object v5, v0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance v5, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    iget-object v6, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v7, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v8, v0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-boolean v9, v0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    iget-object v10, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    move-object p1, v5

    move-object p2, p0

    move-object/from16 p3, p10

    move-object p4, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    invoke-direct/range {p1 .. p9}, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Lcom/android/systemui/util/SettingsHelper;ZLandroid/os/Handler;)V

    iput-object v5, v0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.sec.android.systemui.action.FLASHLIGHT_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    iget-object v1, v1, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSubscreenContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSubscreenFlashlightController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    return-object p0
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x77

    return p0
.end method

.method public final getSearchWords()Ljava/util/ArrayList;
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSearchWords()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f03006d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1310da

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    if-eqz v1, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->ensureCameraID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v2, "init camera id from handleClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/systemui/qs/tiles/FlashlightTile$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile;Lcom/android/systemui/animation/Expandable;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isFlashlightTileBlocked()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_2

    move-object p1, v1

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez p1, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsThermalRestricted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1313e4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->showUnavailableMessage()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1306d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    return-void

    :cond_6
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    if-eqz p1, :cond_c

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSubscreenFlashlightController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    if-eqz p1, :cond_c

    if-eqz v1, :cond_8

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    iget-object v2, p1, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    if-eqz v2, :cond_b

    check-cast v2, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    invoke-virtual {v2}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->getActivityState()I

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {p1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {p1}, Lcom/android/systemui/qp/util/SubscreenUtil;->closeSubscreenPanel()V

    if-eqz v1, :cond_a

    const/4 p1, 0x0

    check-cast v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    :cond_a
    new-instance p1, Lcom/android/systemui/qs/tiles/FlashlightTile$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/FlashlightTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_b
    invoke-virtual {p1}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->startFlashActivity()V

    :goto_1
    return-void

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    if-eqz v1, :cond_d

    check-cast v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    :cond_d
    return-void
.end method

.method public final handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleDestroy : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mReceiver:Lcom/android/systemui/qs/tiles/FlashlightTile$1;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final handleSecondaryClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isAvailable()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    if-nez v0, :cond_1

    monitor-enter v1

    :try_start_0
    iget-boolean p1, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsThermalRestricted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1313e4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->showUnavailableMessage()V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1306d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_FLASHLIGHT_INTENSITY:Z

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->isTorchStrengthControllable()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleSecondaryClick: torch strength change is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->handleClick(Lcom/android/systemui/animation/Expandable;)V

    :goto_0
    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mListening:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->ensureCameraID()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-ne p2, v0, :cond_0

    goto :goto_3

    :cond_0
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p2}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1310da

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eqz v0, :cond_2

    const/4 p2, 0x2

    :cond_2
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    if-eqz v0, :cond_3

    move-object v1, p0

    goto :goto_1

    :cond_3
    move-object v1, p2

    :goto_1
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object p2, p0

    :goto_2
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->nextIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_3
    return-void
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mHasFlashlight:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0, v0}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public final onFlashlightAvailabilityChanged(Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final onFlashlightChanged(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    new-instance p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;Z)V

    iget-object p1, v0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onFlashlightError()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final showWarningMessage(Ljava/lang/CharSequence;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSubscreenContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    :goto_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
