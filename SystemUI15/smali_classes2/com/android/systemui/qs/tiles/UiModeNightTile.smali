.class public final Lcom/android/systemui/qs/tiles/UiModeNightTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mDetailAdapter:Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;

.field public final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public mIsNeedToBlockOnClick:Z

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

.field public final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "hh:mm a"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 11

    move-object v10, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    const v0, 0x7f0810a9

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIsNeedToBlockOnClick:Z

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    new-instance v0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;)V

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;

    iget-object v0, v10, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    move-object/from16 v1, p11

    invoke-interface {v1, v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v10, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    move-object/from16 v1, p12

    invoke-interface {v1, v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p9

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    return-void
.end method


# virtual methods
.method public final canChangeNightMode()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "current_theme_support_night_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->isMinimalBatteryUseEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->canChangeNightMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;

    return-object p0
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->canChangeNightMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->showNightModeMenuDisabledReasonToast()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.DARK_MODE_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6aa

    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string p0, "onClick is blocked when tile state is unavailable"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->isPowerSavingAndTurnOnDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "onClick is blocked when Power saving mode with turn dark mode option is on "

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->showSnackbar(Lcom/android/systemui/animation/Expandable;)V

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIsNeedToBlockOnClick:Z

    if-eqz p1, :cond_3

    const-string p0, "onClick is blocked when dark mode is updating"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->canChangeNightMode()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "onClick is blocked when device does not support dark mode"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->showNightModeMenuDisabledReasonToast()V

    return-void

    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIsNeedToBlockOnClick:Z

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    new-instance v0, Lcom/android/systemui/qs/tiles/UiModeNightTile$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPBE1030"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleLongClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->isPowerSavingAndTurnOnDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "LongClick is blocked when Power saving mode with turn dark mode option is on "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->showSnackbar(Lcom/android/systemui/animation/Expandable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick(Lcom/android/systemui/animation/Expandable;)V

    :goto_0
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    const/16 v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f131078

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->isMinimalBatteryUseEnabled()Z

    move-result p2

    const/4 v0, 0x2

    if-eqz p2, :cond_1

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->canChangeNightMode()Z

    move-result p2

    if-nez p2, :cond_2

    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_2

    :cond_2
    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIsNeedToBlockOnClick:Z

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eqz p2, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :goto_2
    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIsNeedToBlockOnClick:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p2, :cond_5

    new-instance v0, Lcom/android/systemui/qs/tiles/UiModeNightTile$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/UiModeNightTile$2;-><init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public final isMinimalBatteryUseEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "minimal_battery_use"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final isPowerSavingAndTurnOnDarkModeEnabled()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "pms_settings_dark_mode_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->isMinimalBatteryUseEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;

    iget-object v1, v0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public final onPowerSaveChanged(Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final showItPolicyToast()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final showNightModeMenuDisabledReasonToast()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->isMinimalBatteryUseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f131070

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f13106f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/systemui/qs/tiles/UiModeNightTile$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile$3;-><init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showSnackbar(Lcom/android/systemui/animation/Expandable;)V
    .locals 4

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f14055d

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1}, Lcom/android/systemui/animation/Expandable;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f131079

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->makeInternal(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f131071

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;-><init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    const/16 p1, 0xbb8

    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->duration:I

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public final updateUiModeState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0, p1}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f131073

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_2
    return-void
.end method
