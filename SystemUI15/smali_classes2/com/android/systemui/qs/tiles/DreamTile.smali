.class public final Lcom/android/systemui/qs/tiles/DreamTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mDreamManager:Landroid/service/dreams/IDreamManager;

.field public final mDreamOnlyEnabledForDockUser:Z

.field public final mDreamSettingObserver:Lcom/android/systemui/qs/tiles/DreamTile$3;

.field public final mDreamSupported:Z

.field public final mEnabledSettingObserver:Lcom/android/systemui/qs/tiles/DreamTile$2;

.field public final mIconDocked:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public final mIconUndocked:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public mIsDocked:Z

.field public final mReceiver:Lcom/android/systemui/qs/tiles/DreamTile$1;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;ZZ)V
    .locals 6

    move-object v0, p0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    const v1, 0x7f080aa6

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/DreamTile;->mIconDocked:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const v1, 0x7f080aa7

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/DreamTile;->mIconUndocked:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/DreamTile;->mIsDocked:Z

    new-instance v1, Lcom/android/systemui/qs/tiles/DreamTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/DreamTile$1;-><init>(Lcom/android/systemui/qs/tiles/DreamTile;)V

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/DreamTile;->mReceiver:Lcom/android/systemui/qs/tiles/DreamTile$1;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/DreamTile;->mDreamManager:Landroid/service/dreams/IDreamManager;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/DreamTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v1, Lcom/android/systemui/qs/tiles/DreamTile$2;

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-object/from16 v3, p13

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v4

    const-string/jumbo v5, "screensaver_enabled"

    move-object p1, v1

    move-object p2, p0

    move-object/from16 p3, p11

    move-object p4, v2

    move-object p5, v5

    move p6, v4

    invoke-direct/range {p1 .. p6}, Lcom/android/systemui/qs/tiles/DreamTile$2;-><init>(Lcom/android/systemui/qs/tiles/DreamTile;Lcom/android/systemui/util/settings/UserSettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/DreamTile;->mEnabledSettingObserver:Lcom/android/systemui/qs/tiles/DreamTile$2;

    new-instance v1, Lcom/android/systemui/qs/tiles/DreamTile$3;

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v4, "screensaver_components"

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v5

    move-object p1, v1

    move-object p4, v2

    move-object p5, v4

    move p6, v5

    invoke-direct/range {p1 .. p6}, Lcom/android/systemui/qs/tiles/DreamTile$3;-><init>(Lcom/android/systemui/qs/tiles/DreamTile;Lcom/android/systemui/util/settings/UserSettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/DreamTile;->mDreamSettingObserver:Lcom/android/systemui/qs/tiles/DreamTile$3;

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/DreamTile;->mUserTracker:Lcom/android/systemui/settings/UserTrackerImpl;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/DreamTile;->mDreamSupported:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/DreamTile;->mDreamOnlyEnabledForDockUser:Z

    return-void
.end method


# virtual methods
.method public final getActiveDream()Landroid/content/ComponentName;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mUserTracker:Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/service/dreams/IDreamManager;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    return-object v0

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get active dream"

    invoke-static {p0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getContentDescription(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DreamTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DreamTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.DREAM_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130f39

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "QSDream"

    const-string v0, "Can\'t dream"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mReceiver:Lcom/android/systemui/qs/tiles/DreamTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    if-eqz p1, :cond_0

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mEnabledSettingObserver:Lcom/android/systemui/qs/tiles/DreamTile$2;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/UserSettingObserver;->setListening(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mDreamSettingObserver:Lcom/android/systemui/qs/tiles/DreamTile$3;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/UserSettingObserver;->setListening(Z)V

    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DreamTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DreamTile;->getActiveDream()Landroid/content/ComponentName;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, p2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/DreamTile;->getContentDescription(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mIsDocked:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mIconDocked:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mIconUndocked:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_0
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DreamTile;->getActiveDream()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mEnabledSettingObserver:Lcom/android/systemui/qs/tiles/DreamTile$2;

    invoke-virtual {p2}, Lcom/android/systemui/qs/UserSettingObserver;->getValue()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p2, "QSDream"

    const-string v2, "Can\'t check if dreaming"

    invoke-static {p2, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    :cond_2
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_2

    :cond_3
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :goto_2
    return-void
.end method

.method public final isAvailable()Z
    .locals 1

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mDreamSupported:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mDreamOnlyEnabledForDockUser:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DreamTile;->mUserTracker:Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
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
