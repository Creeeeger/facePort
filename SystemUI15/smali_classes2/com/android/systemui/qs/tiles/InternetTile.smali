.class public final Lcom/android/systemui/qs/tiles/InternetTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final WIFI_SETTINGS:Landroid/content/Intent;


# instance fields
.field public final mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

.field public final mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field public final mHandler:Landroid/os/Handler;

.field public final mInternetDialogManager:Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;

.field public mLastTileState:I

.field public final mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/InternetTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/statusbar/connectivity/AccessPointController;Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    new-instance p1, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/InternetTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    iput-object p12, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mInternetDialogManager:Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mHandler:Landroid/os/Handler;

    iput-object p10, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    iput-object p11, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    move-object p2, p10

    check-cast p2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object p2, p2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {p10, p0, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p2, "InternetTile:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTile$State;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mLastTileState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mSignalCallback="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/tiles/InternetTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7e

    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130f09

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tiles/InternetTile$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/InternetTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/InternetTile;Lcom/android/systemui/animation/Expandable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleUpdateCellularState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleUpdateCellularState: CellularCallbackInfo = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const/4 v3, 0x2

    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v3}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    const-class v3, Landroid/widget/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mAirplaneModeEnabled:Z

    const v4, 0x7f080aa3

    const-string v7, ""

    if-eqz v3, :cond_2

    iget v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mQsTypeIcon:I

    sget-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->MOBILE_DATA_ACTIVITY_ICONS:[I

    const v8, 0x7f080855

    if-eq v3, v8, :cond_2

    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const p0, 0x7f1312a9

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto/16 :goto_7

    :cond_2
    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mNoDefaultNetwork:Z

    if-eqz v3, :cond_5

    iget-boolean p2, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mNoNetworksAvailable:Z

    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mEnabled:Z

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const p0, 0x7f080aa2

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const p0, 0x7f130f1a

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto/16 :goto_7

    :cond_4
    :goto_1
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const p0, 0x7f130f1b

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto/16 :goto_7

    :cond_5
    new-instance v2, Lcom/android/systemui/qs/tiles/InternetTile$SignalIcon;

    iget v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mMobileSignalIconId:I

    invoke-direct {v2, v3}, Lcom/android/systemui/qs/tiles/InternetTile$SignalIcon;-><init>(I)V

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v2, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mDataSubscriptionName:Ljava/lang/CharSequence;

    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mRoaming:Z

    const v4, 0x7f1304cb

    if-eqz v3, :cond_7

    iget-object v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mDataContentDescription:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mDataContentDescription:Ljava/lang/CharSequence;

    if-nez p2, :cond_6

    move-object p2, v7

    goto :goto_2

    :cond_6
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v8, 0x7f130c34

    filled-new-array {v3, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v4, v8, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_7
    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mRoaming:Z

    if-eqz v3, :cond_8

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_8
    iget-object p2, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mDataContentDescription:Ljava/lang/CharSequence;

    :goto_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v2, :cond_9

    move-object p0, v7

    goto :goto_4

    :cond_9
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-static {p0, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    goto :goto_6

    :cond_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez p2, :cond_b

    move-object p0, v7

    goto :goto_5

    :cond_b
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-static {p0, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    goto :goto_6

    :cond_c
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f130c12

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    :goto_6
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_7
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne p0, v6, :cond_d

    iput-object v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    goto :goto_8

    :cond_d
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    :goto_8
    if-eqz v1, :cond_e

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "handleUpdateCellularState: BooleanState = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/plugins/qs/QSTile$State;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public final handleUpdateEthernetState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleUpdateEthernetState: EthernetCallbackInfo = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mConnected:Z

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f130f09

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const/4 p0, 0x2

    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget p0, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetSignalIconId:I

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object p0, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetContentDescription:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "handleUpdateEthernetState: BooleanState = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/plugins/qs/QSTile$State;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    if-nez p2, :cond_0

    const-string v3, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/qs/logging/QSLogger;->logInternetTileUpdate(ILjava/lang/String;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    new-instance p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    invoke-direct {p2, v1}, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;-><init>(I)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->copyTo(Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateCellularState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;)V

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    instance-of v0, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    new-instance p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    invoke-direct {p2, v1}, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;-><init>(I)V

    monitor-enter v0

    :try_start_2
    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->copyTo(Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateWifiState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;)V

    goto/16 :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_2
    instance-of v0, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    iput v3, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    check-cast p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    new-instance v0, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;-><init>(I)V

    monitor-enter p2

    :try_start_4
    iget-boolean v1, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mConnected:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mConnected:Z

    iget v1, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetSignalIconId:I

    iput v1, v0, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetSignalIconId:I

    iget-object v1, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetContentDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetContentDescription:Ljava/lang/String;

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateEthernetState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;)V

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_3
    iget p2, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    if-nez p2, :cond_4

    new-instance p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    invoke-direct {p2, v1}, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;-><init>(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    invoke-virtual {v1, p2}, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->copyTo(Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;)V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateCellularState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;)V

    goto :goto_1

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :cond_4
    if-ne p2, v2, :cond_5

    new-instance p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    invoke-direct {p2, v1}, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;-><init>(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    invoke-virtual {v1, p2}, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->copyTo(Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;)V

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateWifiState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;)V

    goto :goto_1

    :catchall_4
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p0

    :cond_5
    if-ne p2, v3, :cond_6

    new-instance p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    invoke-direct {p2, v1}, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;-><init>(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mEthernetInfo:Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mEthernetInfo:Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    iget-boolean v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mConnected:Z

    iput-boolean v2, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mConnected:Z

    iget v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetSignalIconId:I

    iput v2, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetSignalIconId:I

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetContentDescription:Ljava/lang/String;

    iput-object v1, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetContentDescription:Ljava/lang/String;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateEthernetState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;)V

    goto :goto_1

    :catchall_5
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw p0

    :cond_6
    :goto_1
    return-void
.end method

.method public final handleUpdateWifiState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;)V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleUpdateWifiState: WifiCallbackInfo = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mEnabled:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget v2, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    if-lez v2, :cond_1

    iget-object v2, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget v5, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    if-lez v5, :cond_2

    iget-object v5, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    if-nez v5, :cond_2

    move v3, v4

    :cond_2
    iget-boolean v5, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mIsTransient:Z

    iget-object v6, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/InternetTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v6, 0x7f130f59

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_3
    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    const/4 v5, 0x2

    iput v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iget-boolean v5, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mEnabled:Z

    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f130f09

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iget-boolean v9, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mAirplaneModeEnabled:Z

    const v10, 0x7f130f1a

    const v11, 0x7f130f1b

    const v12, 0x7f080aa3

    if-eqz v9, :cond_7

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-nez v3, :cond_4

    iput v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v12}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const v3, 0x7f1312a9

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto/16 :goto_2

    :cond_4
    if-nez v2, :cond_6

    invoke-static {v12}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoNetworksAvailable:Z

    if-eqz v3, :cond_5

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto/16 :goto_2

    :cond_6
    iget v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_2

    :cond_7
    iget-boolean v9, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoDefaultNetwork:Z

    if-eqz v9, :cond_a

    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoNetworksAvailable:Z

    if-nez v3, :cond_9

    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mEnabled:Z

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const v3, 0x7f080aa2

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_9
    :goto_1
    invoke-static {v12}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_a
    iget-boolean v9, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mIsTransient:Z

    if-eqz v9, :cond_b

    const v3, 0x10805d4

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_2

    :cond_b
    iget-boolean v9, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    const v10, 0x1080608

    if-nez v9, :cond_c

    iput v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v10}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_2

    :cond_c
    if-eqz v2, :cond_d

    iget v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_2

    :cond_d
    if-eqz v3, :cond_e

    invoke-static {v10}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_2

    :cond_e
    invoke-static {v10}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eqz v4, :cond_f

    if-eqz v2, :cond_f

    iget-object v2, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalContentDescription:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/InternetTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_f
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_10

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_10
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/InternetTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const p2, 0x7f130118

    invoke-virtual {v7, p2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    if-eqz v1, :cond_11

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "handleUpdateWifiState: BooleanState = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/plugins/qs/QSTile$State;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void
.end method

.method public final isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->forceExpandIcon:Z

    return-object p0
.end method
