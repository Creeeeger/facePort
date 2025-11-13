.class public final Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/ReduceBrightColorsController$Listener;


# static fields
.field public static final excludeDeviceNameSet:Ljava/util/HashSet;


# instance fields
.field public final mIsAvailable:Z

.field public final mSetting:Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;->excludeDeviceNameSet:Ljava/util/HashSet;

    const-string v1, "fck"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(ZLcom/android/systemui/qs/ReduceBrightColorsController;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 11

    move-object v10, p0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    iget-object v0, v10, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    move-object v1, p2

    invoke-interface {p2, v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, p1

    iput-boolean v0, v10, Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;->mIsAvailable:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile$1;

    iget-object v1, v10, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-object/from16 v2, p12

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    const-string v3, "reduce_bright_colors_activated"

    move-object p1, v0

    move-object p2, p0

    move-object/from16 p3, p13

    move-object p4, v1

    move-object/from16 p5, v3

    move/from16 p6, v2

    invoke-direct/range {p1 .. p6}, Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile$1;-><init>(Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;Lcom/android/systemui/util/settings/UserSettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;->mSetting:Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile$1;

    return-void
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.REDUCE_BRIGHT_COLORS_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1392

    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1310e0

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

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;->mSetting:Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile$1;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/UserSettingObserver;->setValue(I)V

    return-void
.end method

.method public final handleDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;->mSetting:Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile$1;

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
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;->mSetting:Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile$1;

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
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;->mSetting:Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile$1;

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

    const p2, 0x7f1310e0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    const p0, 0x7f080aae

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void
.end method

.method public final handleUserSwitch(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;->mSetting:Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile$1;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/UserSettingObserver;->setUserId(I)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/UserSettingObserver;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final isAvailable()Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;->mIsAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "android"

    const-string v3, "config_setColorTransformAccelerated"

    const-string v4, "bool"

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ro.product.vendor.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v1

    :goto_2
    if-lez v0, :cond_4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v2, :cond_4

    move v1, v3

    :cond_4
    return v1
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public final onActivated(Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
