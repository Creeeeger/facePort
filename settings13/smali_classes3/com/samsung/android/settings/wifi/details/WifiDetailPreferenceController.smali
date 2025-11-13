.class public Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiDetailPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;,
        Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;,
        Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;,
        Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mConnectedViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDisconnectedViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;

.field private mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mGatewayPref:Landroidx/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private mHeaderInsetPref:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private final mIconInjector:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

.field private final mInManageNetwork:Z

.field private mIpAddressPref:Landroidx/preference/Preference;

.field private mLatitude:D

.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mLongitude:D

.field private mMacAddressPref:Landroidx/preference/Preference;

.field private mNetwork:Landroid/net/Network;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkDiagnosticsPref:Landroidx/preference/Preference;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private mPasspointPref:Landroidx/preference/Preference;

.field private mRouterLocation:Landroidx/preference/Preference;

.field private mRssiSignalLevel:I

.field private final mSAScreenId:Ljava/lang/String;

.field private mSecurityPref:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSubnetPref:Landroidx/preference/Preference;

.field private mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSpeedPref:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEntityHeaderController(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/PreferenceFragmentCompat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGatewayPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mGatewayPref:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeaderInsetPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mHeaderInsetPref:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconInjector(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mIconInjector:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInManageNetwork(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mInManageNetwork:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIpAddressPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatitude(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLatitude:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkProperties(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/LinkProperties;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLongitude(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLongitude:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMacAddressPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkCapabilities(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasspointPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasspointPref:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRouterLocation(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mRouterLocation:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRssiSignalLevel(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecurityPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mSecurityPref:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/wifi/SemWifiManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubnetPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mSubnetPref:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewer(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConfig(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInfo(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiSpeedPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiSpeedPref:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLatitude(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLatitude:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLinkProperties(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/LinkProperties;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLongitude(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLongitude:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetworkCapabilities(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/NetworkCapabilities;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRssiSignalLevel(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WifiDetailsPrefCtrl"

    const/4 v1, 0x3

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->DBG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/samsung/android/wifi/SemWifiManager;Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;ZLjava/lang/String;)V
    .locals 2

    .line 196
    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p3, -0x1

    .line 111
    iput p3, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 134
    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLatitude:D

    .line 135
    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLongitude:D

    .line 142
    new-instance p3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 143
    invoke-virtual {p3}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 146
    new-instance p3, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 198
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 199
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    .line 200
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 201
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 202
    iput-object p5, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mHandler:Landroid/os/Handler;

    .line 203
    iput-object p7, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 204
    iput-object p8, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 205
    iput-object p9, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mIconInjector:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

    .line 206
    iput-object p6, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 207
    invoke-virtual {p6, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 208
    iput-boolean p10, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mInManageNetwork:Z

    .line 209
    iput-object p11, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mSAScreenId:Ljava/lang/String;

    .line 211
    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mDisconnectedViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;

    .line 212
    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectedViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    .line 213
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mDisconnectedViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static newInstance(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/samsung/android/wifi/SemWifiManager;ZLjava/lang/String;)Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;
    .locals 13

    .line 230
    new-instance v12, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    new-instance v9, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

    move-object v3, p2

    invoke-direct {v9, p2}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;-><init>(Landroid/content/Context;)V

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/samsung/android/wifi/SemWifiManager;Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;ZLjava/lang/String;)V

    return-object v12
.end method

.method private openMapPage()V
    .locals 4

    .line 355
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geo:0,0?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 357
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 358
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string p0, "WifiDetailsPrefCtrl"

    const-string v0, "Open map application"

    .line 359
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 361
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_application_not_found:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 362
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private setupEntityHeader(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 281
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    sget v2, Lcom/android/settings/R$id;->entity_header:I

    .line 282
    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 280
    invoke-static {v0, v1, p1}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    return-void
.end method

.method private updateNetworkInfo()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    .line 288
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 289
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectedViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    .line 295
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 296
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 297
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 298
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 299
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mDisconnectedViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 237
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "wifi_detail_header"

    .line 238
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 240
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->setupEntityHeader(Lcom/android/settingslib/widget/LayoutPreference;)V

    const-string v0, "header_inset"

    .line 242
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mHeaderInsetPref:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string v0, "wifi_speed"

    .line 243
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiSpeedPref:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

    .line 244
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_network_speed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->setTitle(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiSpeedPref:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->sec_wifi_network_speed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "security"

    .line 247
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mSecurityPref:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

    .line 248
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_security:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->setTitle(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mSecurityPref:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->sec_wifi_network_security:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "passpoint"

    .line 251
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasspointPref:Landroidx/preference/Preference;

    const-string v0, "mac_address"

    .line 252
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Landroidx/preference/Preference;

    const-string v0, "ip_address"

    .line 253
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Landroidx/preference/Preference;

    const-string v0, "wifi_gateway"

    .line 254
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mGatewayPref:Landroidx/preference/Preference;

    const-string v0, "subnet_mask"

    .line 255
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mSubnetPref:Landroidx/preference/Preference;

    const-string v0, "router_location"

    .line 258
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mRouterLocation:Landroidx/preference/Preference;

    const-string v0, "network_diagnostics"

    .line 260
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkDiagnosticsPref:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 264
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 336
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "router_location"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->openMapPage()V

    const/4 p0, 0x1

    return p0

    .line 351
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    .line 317
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 318
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 319
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 320
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 322
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 307
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->updateNetworkInfo()V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshPage()V

    .line 310
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public onUpdated()V
    .locals 1

    .line 327
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->updateNetworkInfo()V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshPage()V

    .line 331
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    check-cast p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->refreshPreferences()V

    return-void
.end method
