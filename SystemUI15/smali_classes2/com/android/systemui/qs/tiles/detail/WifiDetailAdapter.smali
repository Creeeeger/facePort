.class public final Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;
.implements Lcom/android/systemui/statusbar/connectivity/AccessPointController$WifiApBleStateChangeCallback;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final instantHotspotList:Ljava/util/ArrayList;

.field public final mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

.field public mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public mAvailable:Landroid/view/ViewGroup;

.field public mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

.field public mConnected:Landroid/view/ViewGroup;

.field public mConnectedNetworksTitle:Landroid/view/View;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mHandler:Landroid/os/Handler;

.field public mHotspotLive:Landroid/view/ViewGroup;

.field public mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

.field public mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

.field public mInstantHotspot:Landroid/view/ViewGroup;

.field public mInstantHotspotItems:Lcom/android/systemui/qs/QSDetailItems;

.field public mIsHavingConvertView:Z

.field public mIsSatelliteModeOn:Z

.field public mItems:Lcom/android/systemui/qs/QSDetailItems;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWifiTile:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WifiDetailAdapter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/connectivity/AccessPointController;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->instantHotspotList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mIsSatelliteModeOn:Z

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    iput-object p8, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p7, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    iput-object p10, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mWifiTile:Lcom/android/systemui/qs/tiles/WifiTile;

    iput-object p6, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    iput-object p9, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mIsHavingConvertView:Z

    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createDetailView convertView="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " State : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mWifiTile:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v4, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " enabled : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v4, v4, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    const-string v5, "WifiDetailAdapter"

    invoke-static {v0, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mIsHavingConvertView:Z

    if-nez v4, :cond_1

    move-object p2, v0

    :cond_1
    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v4, 0x7f0d02fc

    invoke-virtual {p2, v4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a031b

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mConnected:Landroid/view/ViewGroup;

    const v4, 0x7f0a02ca

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mConnectedNetworksTitle:Landroid/view/View;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mConnected:Landroid/view/ViewGroup;

    invoke-static {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mConnected:Landroid/view/ViewGroup;

    invoke-virtual {v4, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v4, "Wifi"

    invoke-virtual {p3, v4}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    sget-boolean p3, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez p3, :cond_2

    sget-boolean p3, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez p3, :cond_2

    sget-boolean p3, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz p3, :cond_3

    :cond_2
    const p3, 0x7f0a0500

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    const v4, 0x7f0a0501

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sget-object v4, Lcom/android/systemui/CvOperator;->sISOCountry:Ljava/lang/String;

    const v4, 0x7f131100

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    invoke-static {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v4, "Hotspot.Available"

    invoke-virtual {p3, v4}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    sget-boolean p3, Lcom/android/systemui/util/Utils;->SPF_SupportInstantHotspot:Z

    if-eqz p3, :cond_4

    const p3, 0x7f0a053d

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInstantHotspot:Landroid/view/ViewGroup;

    const v4, 0x7f0a053e

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v4, "Instant Hotspot"

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInstantHotspot:Landroid/view/ViewGroup;

    invoke-static {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInstantHotspotItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v4, "InstantHotspot.Available"

    invoke-virtual {p3, v4}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInstantHotspot:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInstantHotspotItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    const p3, 0x7f0a0134

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    invoke-static {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string p3, "Wifi.Available"

    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mIsHavingConvertView:Z

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object p3, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p3, p3, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eqz p3, :cond_7

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v4, v4, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSDetailItems$Adapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v6, v4, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v6, :cond_7

    iget v6, v4, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v6, :cond_7

    iget-object v4, v4, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    if-eqz v4, :cond_7

    :cond_6
    move v4, v1

    goto :goto_1

    :cond_7
    move v4, v2

    :goto_1
    const-string v6, "isConnectedVisible = "

    const-string v7, ",getItemCount() = "

    invoke-static {v6, v7, v4}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v7, v7, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSDetailItems$Adapter;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mWifiConnected = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v8, v7, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v8, :cond_8

    iget v8, v7, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v8, :cond_8

    iget-object v7, v7, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    if-eqz v7, :cond_8

    move v7, v1

    goto :goto_2

    :cond_8
    move v7, v2

    :goto_2
    invoke-static {v6, v7, v5}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz p3, :cond_a

    if-eqz v4, :cond_9

    const p3, 0x7f130f56

    goto :goto_3

    :cond_9
    const p3, 0x7f130f58

    goto :goto_3

    :cond_a
    const p3, 0x7f130f55

    :goto_3
    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(I)V

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportInstantHotspot:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInstantHotspotItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    :cond_b
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    if-nez p1, :cond_c

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez p1, :cond_c

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz p1, :cond_e

    :cond_c
    move-object p1, p3

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiSettingsForegroundState(I)V

    :cond_d
    const-string p1, "adding wififoreground"

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    :cond_e
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    const/4 p1, -0x1

    sput p1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWepAllowed:I

    check-cast p3, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->scanForAccessPoints()V

    iget-object p1, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-virtual {v3, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireScanStateChanged(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mConnected:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object p3, p3, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    invoke-virtual {p3}, Lcom/android/systemui/qs/QSDetailItems$Adapter;->getCount()I

    move-result p3

    const/16 v0, 0x8

    if-lez p3, :cond_f

    move p3, v2

    goto :goto_4

    :cond_f
    move p3, v0

    :goto_4
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mConnectedNetworksTitle:Landroid/view/View;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object p3, p3, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    invoke-virtual {p3}, Lcom/android/systemui/qs/QSDetailItems$Adapter;->getCount()I

    move-result p3

    if-lez p3, :cond_10

    goto :goto_5

    :cond_10
    move v2, v0

    :goto_5
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->setItemsVisible(Z)V

    return-object p2
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x98

    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f130f3c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getToggleEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mWifiTile:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mIsSatelliteModeOn:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mWifiTile:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final onAccessPointsChanged(Ljava/util/List;)V
    .locals 14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/wifitrackerlib/WifiEntry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/wifitrackerlib/WifiEntry;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ge v2, v0, :cond_1

    aget-object v5, p1, v2

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v5

    if-eq v5, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    array-length v0, p1

    if-eq v3, v0, :cond_3

    new-array v0, v3, [Lcom/android/wifitrackerlib/WifiEntry;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    array-length v0, p1

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v5, p1, v2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v6

    if-eq v6, v4, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    add-int/lit8 v7, v3, 0x1

    aput-object v5, v6, v3

    move v3, v7

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez p1, :cond_4

    goto/16 :goto_e

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mWifiTile:Lcom/android/systemui/qs/tiles/WifiTile;

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    array-length p1, p1

    if-gtz p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-nez p1, :cond_7

    :cond_6
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireScanStateChanged(Z)V

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireScanStateChanged(Z)V

    :goto_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    const/16 v0, 0x8

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mConnected:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    const v2, 0x7f0a0135

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez p1, :cond_8

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez p1, :cond_8

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportInstantHotspot:Z

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInstantHotspotItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInstantHotspot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_e

    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->instantHotspotList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v4, :cond_21

    move v4, v1

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    array-length v6, v5

    if-ge v4, v6, :cond_21

    aget-object v5, v5, v4

    new-instance v6, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v6}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v7

    iput-object v5, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    check-cast v8, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v9

    if-gez v9, :cond_b

    move v9, v1

    :cond_b
    const/4 v10, 0x4

    if-le v9, v10, :cond_c

    move v9, v10

    :cond_c
    iget-object v11, v5, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v5, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v12, :cond_d

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v13

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v12

    invoke-virtual {v5, v13, v12}, Lcom/android/wifitrackerlib/WifiEntry;->checkWifi6EStandard(II)Z

    move-result v12

    goto :goto_4

    :cond_d
    iget-boolean v12, v11, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->has6EStandard:Z

    :goto_4
    if-eqz v12, :cond_f

    invoke-static {v5}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v11

    sget-object v12, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI6E:[[I

    if-nez v11, :cond_e

    aget-object v9, v12, v9

    aget v9, v9, v2

    goto/16 :goto_9

    :cond_e
    aget-object v9, v12, v9

    aget v9, v9, v1

    goto/16 :goto_9

    :cond_f
    iget-object v12, v5, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v13, 0x6

    if-eqz v12, :cond_11

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v12

    if-ne v12, v13, :cond_10

    :goto_5
    move v12, v2

    goto :goto_6

    :cond_10
    move v12, v1

    goto :goto_6

    :cond_11
    iget v12, v11, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->wifiStandard:I

    if-lt v12, v13, :cond_10

    goto :goto_5

    :goto_6
    if-eqz v12, :cond_13

    invoke-static {v5}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v11

    sget-object v12, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI6:[[I

    if-nez v11, :cond_12

    aget-object v9, v12, v9

    aget v9, v9, v2

    goto :goto_9

    :cond_12
    aget-object v9, v12, v9

    aget v9, v9, v1

    goto :goto_9

    :cond_13
    iget-object v12, v5, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v13, 0x5

    if-eqz v12, :cond_15

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v11

    if-ne v11, v13, :cond_14

    :goto_7
    move v11, v2

    goto :goto_8

    :cond_14
    move v11, v1

    goto :goto_8

    :cond_15
    iget v11, v11, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->wifiStandard:I

    if-lt v11, v13, :cond_14

    goto :goto_7

    :goto_8
    if-eqz v11, :cond_17

    invoke-static {v5}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v11

    sget-object v12, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI5:[[I

    if-nez v11, :cond_16

    aget-object v9, v12, v9

    aget v9, v9, v2

    goto :goto_9

    :cond_16
    aget-object v9, v12, v9

    aget v9, v9, v1

    goto :goto_9

    :cond_17
    invoke-static {v5}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v11

    sget-object v12, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI:[[I

    if-nez v11, :cond_18

    aget-object v9, v12, v9

    aget v9, v9, v2

    goto :goto_9

    :cond_18
    aget-object v9, v12, v9

    aget v9, v9, v1

    :goto_9
    iput v9, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/flags/FeatureFlagsImpl;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWepAllowed(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_19

    if-ne v7, v2, :cond_19

    move v11, v2

    goto :goto_a

    :cond_19
    move v11, v1

    :goto_a
    if-eqz v11, :cond_1a

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f131526

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_1a
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "rampart_blocked_unsecure_wifi_autojoin"

    invoke-static {v11, v12, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v2, :cond_1c

    if-eqz v7, :cond_1b

    if-eq v7, v2, :cond_1b

    if-ne v7, v10, :cond_1c

    :cond_1b
    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v7

    if-nez v7, :cond_1c

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->isAutoJoinEnabled()Z

    move-result v7

    if-nez v7, :cond_1c

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f1314a8

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_1c
    invoke-virtual {v5, v2}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v7

    const/4 v9, 0x2

    const-string v10, "WifiDetailAdapter.InstantHotspot"

    if-ne v7, v9, :cond_1e

    instance-of v7, v5, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    if-eqz v7, :cond_1d

    const-string/jumbo v7, "updating signal strength"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v5, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->getInstantHotspotIcon(Lcom/android/wifitrackerlib/HotspotNetworkEntry;)I

    move-result v5

    iput v5, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    :cond_1d
    iput-boolean v2, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1e
    instance-of v7, v5, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    if-eqz v7, :cond_1f

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "device:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/android/systemui/util/Utils;->SPF_SupportInstantHotspot:Z

    if-eqz v7, :cond_20

    check-cast v5, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->getInstantHotspotIcon(Lcom/android/wifitrackerlib/HotspotNetworkEntry;)I

    move-result v5

    iput v5, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->instantHotspotList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1f
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_21
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->updateHotspotItems()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_22

    goto :goto_d

    :cond_22
    move v2, v1

    :goto_d
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInstantHotspotItems:Lcom/android/systemui/qs/QSDetailItems;

    if-eqz v4, :cond_23

    sget-boolean v5, Lcom/android/systemui/util/Utils;->SPF_SupportInstantHotspot:Z

    if-eqz v5, :cond_23

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->instantHotspotList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInstantHotspotItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance v4, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$5;-><init>(Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_23
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_24

    move v1, v0

    :cond_24
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mConnected:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mConnectedNetworksTitle:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance v0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_25
    :goto_e
    return-void
.end method

.method public final onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 10

    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    instance-of v1, v0, Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    check-cast v0, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p1

    sget-object v1, Lcom/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/flags/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWepAllowed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.wifi.WifiWarning"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "req_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_type"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p1

    if-nez p1, :cond_9

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->DEBUG:Z

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    const-string v1, "AccessPointController"

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "connect networkId="

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "connect to unsaved network "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object p1, v0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean p1, p1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isOpenRoamingNetwork:Z

    if-eqz p1, :cond_5

    iget-object p1, v2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTrackerFactory:Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;

    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "sem_wifi_allowed_oauth_provider"

    invoke-static {p1, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v1, "[cisco]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "wifi_start_connect_ssid"

    const-string/jumbo v1, "wifi_start_openroaming"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;->onSettingsActivityTriggered(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    iget-object v1, v2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mConnectCallback:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$2;

    if-eqz p1, :cond_6

    invoke-virtual {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    goto :goto_3

    :cond_6
    invoke-static {v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->startSettings(Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->forceCollapsePanels()V

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    :goto_3
    new-instance p1, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;)V

    const-wide/16 v0, 0xfa

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_e

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->startSettings(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto/16 :goto_4

    :cond_a
    sget-boolean v1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v1, :cond_e

    :cond_b
    instance-of v1, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    if-eqz v1, :cond_e

    iget-boolean p1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    if-nez p1, :cond_e

    check-cast v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    const/16 v1, 0xf

    if-le p1, v1, :cond_c

    iget-object p1, v2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v2, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    iget v4, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    iget v5, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    iget-object v6, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object v7, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    iget v8, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    iget-boolean v9, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isWifiProfileShareEnabled:Z

    iget-object v1, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/wifi/SemWifiManager;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    move-result v3

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "triggerWifiApBleConnection() : bleDevice -> "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mBattery: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ret: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AccessPointController.AutoHotspot"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "WifiDetailAdapter.AutoHotspot"

    if-eqz v3, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDetailItemClick() - Triggering updateHotspotItems for connecting with apBLE.mWifiMac-> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->updateHotspotItems()V

    goto :goto_4

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDetailItemClick() - Triggering updateHotspotItems for connection time out with apBLE.mWifiMac-> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->updateHotspotItems()V

    :cond_e
    :goto_4
    return-void
.end method

.method public final onSettingsActivityTriggered(Landroid/content/Intent;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method public final onWifiScan(Z)V
    .locals 0

    return-void
.end method

.method public final setItemsVisible(Z)V
    .locals 2

    const-string v0, " setItemsVisible : "

    const-string v1, "WifiDetailAdapter"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance v1, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportInstantHotspot:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInstantHotspotItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    :cond_3
    return-void
.end method

.method public final setToggleState(Z)V
    .locals 6

    const-string v0, "WifiDetailAdapter"

    sget-boolean v1, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v2, "setToggleState "

    invoke-static {v2, v0, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x99

    invoke-static {v2, v3, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mIsSatelliteModeOn:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v2, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiTileBlocked()Z

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mWifiTile:Lcom/android/systemui/qs/tiles/WifiTile;

    if-nez v2, :cond_6

    invoke-virtual {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->isBlockedByEASPolicy$1()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    new-instance p1, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v4, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    :cond_3
    if-eqz v1, :cond_4

    const-string/jumbo v1, "setToggleState fireToggleStateChanged"

    invoke-static {v1, v0, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    invoke-virtual {v4, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Z)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    if-eqz p1, :cond_5

    const p1, 0x7f130f58

    goto :goto_0

    :cond_5
    const p1, 0x7f130f55

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(I)V

    return-void

    :cond_6
    :goto_1
    invoke-virtual {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method public final updateHotspotItems()V
    .locals 12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_18

    sget-boolean v3, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v3, :cond_18

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    const-string v4, "getAutoHotspotEntries() : mBleAccessPoints "

    iget-object v5, v3, Lcom/android/wifitrackerlib/WifiPickerTracker;->mLockAutoHotspot:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string v6, "WifiPickerTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/wifitrackerlib/WifiPickerTracker;->mAutoHotspotEntries:Ljava/util/List;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/wifitrackerlib/WifiPickerTracker;->mAutoHotspotEntries:Ljava/util/List;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    new-instance v5, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v5}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    iput-object v4, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    check-cast v6, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    const/16 v7, -0x3c

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-lt v6, v7, :cond_3

    const/4 v6, 0x4

    goto :goto_2

    :cond_3
    const/16 v7, -0x46

    if-lt v6, v7, :cond_4

    move v6, v9

    goto :goto_2

    :cond_4
    const/16 v7, -0x50

    if-lt v6, v7, :cond_5

    move v6, v8

    goto :goto_2

    :cond_5
    const/16 v7, -0x5a

    if-lt v6, v7, :cond_6

    move v6, v2

    goto :goto_2

    :cond_6
    move v6, v1

    :goto_2
    iget v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    sget v10, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->MHS_WIFI_6_NETWORK:I

    sget-object v11, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI6:[[I

    if-ne v7, v10, :cond_8

    iget v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne v7, v2, :cond_7

    aget-object v6, v11, v6

    aget v6, v6, v2

    goto :goto_3

    :cond_7
    aget-object v6, v11, v6

    aget v6, v6, v1

    goto :goto_3

    :cond_8
    sget v10, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->MHS_WIFI_6E_NETWORK:I

    if-ne v7, v10, :cond_a

    iget v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    sget-object v10, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI6E:[[I

    if-ne v7, v2, :cond_9

    aget-object v6, v10, v6

    aget v6, v6, v2

    goto :goto_3

    :cond_9
    aget-object v6, v10, v6

    aget v6, v6, v1

    goto :goto_3

    :cond_a
    if-ne v7, v10, :cond_c

    iget v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne v7, v2, :cond_b

    aget-object v6, v11, v6

    aget v6, v6, v2

    goto :goto_3

    :cond_b
    aget-object v6, v11, v6

    aget v6, v6, v1

    goto :goto_3

    :cond_c
    iget v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    sget-object v10, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI:[[I

    if-ne v7, v2, :cond_d

    aget-object v6, v10, v6

    aget v6, v6, v2

    goto :goto_3

    :cond_d
    aget-object v6, v10, v6

    aget v6, v6, v1

    :goto_3
    iput v6, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    iget-object v6, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    if-eqz v6, :cond_2

    const-string v6, "WifiDetailAdapter.AutoHotspot"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "updateHotspotItems() - status getting from res.mWifiMac->"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-static {v7, v10, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    iget-object v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    check-cast v6, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    iget-object v6, v6, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v6, :cond_e

    invoke-virtual {v6, v7}, Lcom/samsung/android/wifi/SemWifiManager;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v6

    goto :goto_4

    :cond_e
    move v6, v1

    :goto_4
    const-string v7, "WifiDetailAdapter.AutoHotspot"

    const-string/jumbo v10, "updateHotspotItems() - ConnectedStatus-> "

    const-string v11, " res.mWifiMac-> "

    invoke-static {v6, v10, v11}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-static {v10, v11, v7}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-ne v6, v9, :cond_f

    const-string v5, "WifiDetailAdapter.AutoHotspot"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateHotspotItems() - This mac is connected (do nothing) res.mWifiMac-> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-static {v6, v4, v5}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    const/16 v10, 0xf

    const v11, 0x7f1303cb

    if-gt v9, v10, :cond_10

    iput-boolean v2, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    iput-boolean v1, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f130765

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_10
    iget-boolean v9, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isDataSaverEnabled:Z

    if-eqz v9, :cond_11

    iput-boolean v2, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    iput-boolean v1, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f1314a0

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_11
    iget-boolean v9, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isMobileDataLimitReached:Z

    if-eqz v9, :cond_12

    iput-boolean v2, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    iput-boolean v1, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f13149d

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_12
    iget-boolean v4, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isNotValidNetwork:Z

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f13126f

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_13
    if-eq v6, v2, :cond_15

    if-ne v6, v8, :cond_14

    goto :goto_5

    :cond_14
    if-gez v6, :cond_16

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f13126d

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v2, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    goto :goto_6

    :cond_15
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f13126c

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    :goto_6
    const-string v4, "WifiDetailAdapter.AutoHotspot"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "item.isDisabled : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " item.isClickable : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_17
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance v1, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$4;-><init>(Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_18
    const-string p0, ".AutoHotspot"

    const-string v1, "isPrimaryUser: "

    invoke-static {v1, p0, v0}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_19
    :goto_7
    return-void
.end method
