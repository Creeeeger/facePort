.class public final Lcom/android/systemui/qs/tiles/DndTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DND_SETTINGS:Landroid/content/Intent;

.field public static final mZenOneHourSession:I


# instance fields
.field public final mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field public final mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;

.field public mDndMenuSelectedItem:I

.field public mDndMenuSummary:Ljava/lang/String;

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public mIsSettingsUpdated:Z

.field public mLastDndDurationSelected:I

.field public mListening:Z

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final mPrefListener:Lcom/android/systemui/qs/tiles/DndTile$3;

.field public mPreviousSetZenDuration:I

.field public final mSettingZenDuration:Lcom/android/systemui/qs/tiles/DndTile$1;

.field public final mSettingsObserver:Lcom/android/systemui/qs/tiles/DndTile$2;

.field public final mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mZenCallback:Lcom/android/systemui/qs/tiles/DndTile$4;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$ZenModeSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/DndTile;->DND_SETTINGS:Landroid/content/Intent;

    const/16 v0, 0x3c

    sput v0, Lcom/android/systemui/qs/tiles/DndTile;->mZenOneHourSession:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/ZenModeController;Landroid/content/SharedPreferences;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 8

    move-object v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p15

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    const/4 v3, 0x0

    iput v3, v0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSelectedItem:I

    const/4 v4, -0x1

    iput v4, v0, Lcom/android/systemui/qs/tiles/DndTile;->mLastDndDurationSelected:I

    iput-boolean v3, v0, Lcom/android/systemui/qs/tiles/DndTile;->mIsSettingsUpdated:Z

    const/4 v3, -0x2

    iput v3, v0, Lcom/android/systemui/qs/tiles/DndTile;->mPreviousSetZenDuration:I

    new-instance v3, Lcom/android/systemui/qs/tiles/DndTile$2;

    iget-object v4, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/tiles/DndTile$2;-><init>(Lcom/android/systemui/qs/tiles/DndTile;Landroid/os/Handler;)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/DndTile;->mSettingsObserver:Lcom/android/systemui/qs/tiles/DndTile$2;

    new-instance v4, Lcom/android/systemui/qs/tiles/DndTile$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/DndTile$3;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object v4, v0, Lcom/android/systemui/qs/tiles/DndTile;->mPrefListener:Lcom/android/systemui/qs/tiles/DndTile$3;

    new-instance v4, Lcom/android/systemui/qs/tiles/DndTile$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/DndTile$4;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v5, p11

    iput-object v5, v0, Lcom/android/systemui/qs/tiles/DndTile;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {v1, v5, v4}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/systemui/qs/tiles/DndTile$1;

    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    iget-object v6, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v6}, Lcom/android/systemui/qs/QSHost;->getUserId()I

    move-result v6

    const-string/jumbo v7, "zen_duration"

    move-object p1, v4

    move-object p2, p0

    move-object/from16 p3, p12

    move-object p4, v5

    move-object p5, v7

    move p6, v6

    invoke-direct/range {p1 .. p6}, Lcom/android/systemui/qs/tiles/DndTile$1;-><init>(Lcom/android/systemui/qs/tiles/DndTile;Lcom/android/systemui/util/settings/UserSettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v4, v0, Lcom/android/systemui/qs/tiles/DndTile;->mSettingZenDuration:Lcom/android/systemui/qs/tiles/DndTile$1;

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/DndTile;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string/jumbo v4, "zen_mode"

    invoke-interface {v2, v4, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Ljava/lang/String;Landroid/database/ContentObserver;)V

    new-instance v4, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;

    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v6, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v7, v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    move-object p1, v4

    move-object p3, v5

    move-object p4, v6

    move-object/from16 p5, p10

    move-object/from16 p6, p15

    move-object p7, v3

    move-object/from16 p8, v7

    invoke-direct/range {p1 .. p8}, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/DndTile;Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/util/settings/GlobalSettings;Landroid/database/ContentObserver;Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;)V

    iput-object v4, v0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/DndTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/QSZenModeDialogMetricsLogger;

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/tiles/dialog/QSZenModeDialogMetricsLogger;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x5a0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    long-to-int p1, p1

    div-int/lit8 p2, p1, 0x3c

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final getApplicationNameFromPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;

    return-object p0
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x76

    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130eef

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserManager:Landroid/os/UserManager;

    iget p1, p1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const-string v1, "no_adjust_volume"

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {p1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p1, 0x10404d4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleClick refresh value "

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "handleClick ="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v3, v3, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-static {v1, v3, p1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    xor-int/2addr p1, v0

    const-string/jumbo v1, "setZen state: "

    invoke-static {v1, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "zen_duration"

    const/4 v5, -0x1

    invoke-static {p1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v5, :cond_4

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {p0, p1, v2, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object p0

    iget-object p0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    check-cast v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v1, v0, p0, v3}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    check-cast v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v1, v0, v4, v3}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v1, 0x1030223

    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/DndTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/DndTile;Landroid/view/ContextThemeWrapper;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    check-cast v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mSettingZenDuration:Lcom/android/systemui/qs/tiles/DndTile$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/UserSettingObserver;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mSettingsObserver:Lcom/android/systemui/qs/tiles/DndTile$2;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    invoke-interface {p0, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final handleSecondaryClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mPrefListener:Lcom/android/systemui/qs/tiles/DndTile$3;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mSettingZenDuration:Lcom/android/systemui/qs/tiles/DndTile$1;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/UserSettingObserver;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mSettingsObserver:Lcom/android/systemui/qs/tiles/DndTile$2;

    if-nez p1, :cond_2

    const-string/jumbo p1, "zen_mode"

    invoke-interface {v0, p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Ljava/lang/String;Landroid/database/ContentObserver;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    :goto_1
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget p2, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleUpdateState zen "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    :cond_3
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p2, 0x7f130f3b

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const p0, 0x7f080e6d

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_2
    return-void
.end method

.method public final handleUserSwitch(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mSettingZenDuration:Lcom/android/systemui/qs/tiles/DndTile$1;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/UserSettingObserver;->setUserId(I)V

    return-void
.end method

.method public final isAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "DndTileVisible"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0, v0}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method
