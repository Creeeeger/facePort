.class public final Lcom/android/systemui/qs/tiles/ColorCorrectionTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mSetting:Lcom/android/systemui/qs/tiles/ColorCorrectionTile$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    new-instance p7, Lcom/android/systemui/qs/tiles/ColorCorrectionTile$1;

    iget-object p4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    check-cast p10, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p10}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p6

    const-string p5, "accessibility_display_daltonizer_enabled"

    move-object p1, p7

    move-object p2, p0

    move-object p3, p11

    invoke-direct/range {p1 .. p6}, Lcom/android/systemui/qs/tiles/ColorCorrectionTile$1;-><init>(Lcom/android/systemui/qs/tiles/ColorCorrectionTile;Lcom/android/systemui/util/settings/UserSettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object p7, p0, Lcom/android/systemui/qs/tiles/ColorCorrectionTile;->mSetting:Lcom/android/systemui/qs/tiles/ColorCorrectionTile$1;

    return-void
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.android.settings.ACCESSIBILITY_COLOR_SPACE_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1394

    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130ece

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 1

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ColorCorrectionTile;->mSetting:Lcom/android/systemui/qs/tiles/ColorCorrectionTile$1;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/UserSettingObserver;->setValue(I)V

    return-void
.end method

.method public final handleDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ColorCorrectionTile;->mSetting:Lcom/android/systemui/qs/tiles/ColorCorrectionTile$1;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/UserSettingObserver;->setListening(Z)V

    return-void
.end method

.method public final handleSecondaryClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 1

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ColorCorrectionTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ColorCorrectionTile;->mSetting:Lcom/android/systemui/qs/tiles/ColorCorrectionTile$1;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/UserSettingObserver;->setListening(Z)V

    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/ColorCorrectionTile;->mSetting:Lcom/android/systemui/qs/tiles/ColorCorrectionTile$1;

    invoke-virtual {p2}, Lcom/android/systemui/qs/UserSettingObserver;->getValue()I

    move-result p2

    :goto_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p2, 0x7f130ece

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const p0, 0x7f080aab

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    return-void
.end method

.method public final handleUserSwitch(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorCorrectionTile;->mSetting:Lcom/android/systemui/qs/tiles/ColorCorrectionTile$1;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/UserSettingObserver;->setUserId(I)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/UserSettingObserver;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final isAvailable()Z
    .locals 5

    invoke-static {}, Lcom/android/systemui/util/WindowUtils;->isLcdMdnieSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/util/WindowUtils;->isDesktopDualModeMonitorDisplay(Landroid/content/Context;)Z

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v4, "shopdemo"

    invoke-static {p0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    const/16 v4, 0x21

    if-lt v0, v4, :cond_2

    if-nez v3, :cond_2

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method
