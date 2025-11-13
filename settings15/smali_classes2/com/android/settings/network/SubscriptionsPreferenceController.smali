.class public final Lcom/android/settings/network/SubscriptionsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;
.implements Lcom/android/settings/network/telephony/DataConnectivityListener$Client;
.implements Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;
.implements Landroid/telephony/TelephonyCallback$CarrierNetworkListener;
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;


# instance fields
.field public mCarrierNetworkChangeMode:Z

.field public mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

.field final mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

.field public final mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

.field public final mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field public mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field public final mPreferenceGroupKey:Ljava/lang/String;

.field public final mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

.field public final mStartOrder:I

.field public mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

.field public final mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

.field public final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final mSubscriptionPreferences:Landroidx/collection/ArrayMap;

.field public final mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field public mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field public final mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mUpdateListener:Lcom/android/settings/network/NetworkMobileProviderController;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;


# direct methods
.method public static $r8$lambda$BR291_GeOIF2WODPNqYWY3PKUzY(Lcom/android/settings/network/SubscriptionsPreferenceController;Landroid/telephony/SubscriptionInfo;)Z
    .locals 13

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/SubscriptionUtil;->REGEX_DISPLAY_NAME_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Lcom/android/settings/network/ProxySubscriptionManager;->getAccessibleSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    move-object v2, v4

    goto/16 :goto_9

    :cond_1
    invoke-static {v2}, Lcom/android/settings/network/SubscriptionUtil;->isEmbeddedSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string p0, "SubscriptionUtil"

    const-string p1, "Do not insert the provision eSIM or NTN eSim"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v5

    if-eqz v5, :cond_16

    const-class v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    iget-object v1, v1, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubscriptionsListener;

    invoke-virtual {v1}, Lcom/android/settings/network/ActiveSubscriptionsListener;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v12

    if-eq v12, v11, :cond_6

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    if-eqz p0, :cond_d

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    if-ne v6, p1, :cond_8

    goto :goto_2

    :cond_9
    move-object v5, v4

    :goto_2
    if-nez v5, :cond_b

    :cond_a
    :goto_3
    move p0, v3

    goto/16 :goto_8

    :cond_b
    array-length p1, p0

    move v1, v3

    :goto_4
    if-ge v1, p1, :cond_a

    aget-object v6, p0, v1

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getIsEuicc()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v6}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v6

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    if-ne v6, v7, :cond_c

    :goto_5
    move p0, v0

    goto/16 :goto_8

    :cond_c
    add-int/2addr v1, v0

    goto :goto_4

    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_10

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_f

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    if-ne p0, p1, :cond_a

    goto :goto_5

    :cond_f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_a

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    if-ne p0, p1, :cond_a

    goto :goto_5

    :cond_10
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v3

    move v5, v1

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    if-ne v7, p1, :cond_11

    move v7, v0

    goto :goto_7

    :cond_11
    move v7, v3

    :goto_7
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    if-eq v6, v11, :cond_13

    if-eqz v7, :cond_12

    goto :goto_5

    :cond_12
    add-int/2addr v5, v0

    goto :goto_6

    :cond_13
    or-int/2addr v1, v7

    goto :goto_6

    :cond_14
    if-lez v5, :cond_15

    goto/16 :goto_3

    :cond_15
    move p0, v1

    :goto_8
    if-eqz p0, :cond_0

    :cond_16
    :goto_9
    if-eqz v2, :cond_17

    goto :goto_a

    :cond_17
    move v0, v3

    :goto_a
    return v0
.end method

.method public static synthetic $r8$lambda$Zec7K2ofpmMnl3Y5V6xOw46FoPM(Lcom/android/settings/network/SubscriptionsPreferenceController;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->launchMobileNetworkSettings(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/NetworkMobileProviderController;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/network/SubscriptionsPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$1;-><init>(Lcom/android/settings/network/SubscriptionsPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    new-instance v0, Landroid/telephony/TelephonyDisplayInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mUpdateListener:Lcom/android/settings/network/NetworkMobileProviderController;

    const-string p3, "provider_model_mobile_network"

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroupKey:Ljava/lang/String;

    const/16 p3, 0xa

    iput p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mStartOrder:I

    const-class p3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-class p3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p3}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-class p3, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance p3, Landroidx/collection/ArrayMap;

    invoke-direct {p3, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Landroidx/collection/ArrayMap;

    new-instance p3, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    new-instance p3, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    new-instance p3, Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/telephony/DataConnectivityListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/DataConnectivityListener$Client;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    new-instance p3, Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/telephony/SignalStrengthListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    new-instance p3, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p3, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mBaseTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p0, p3, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mCallback:Lcom/android/settings/network/SubscriptionsPreferenceController;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p3, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p3, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mDisplayInfos:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance p3, Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    invoke-direct {p3, p2, p1, p0}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    new-instance p1, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    invoke-direct {p1}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileMappings$Config;->readConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/network/SubscriptionsPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public connectCarrierNetwork()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->canConnect()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update$2$1()V

    return-void
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 12

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->isCarrierNetworkActive()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v5, 0x5

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    if-nez v1, :cond_2

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_2
    iget-object v1, v1, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget v1, v1, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    if-gez v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    move v7, v1

    move v8, v5

    goto :goto_4

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->shouldInflateSignalStrength(I)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x6

    goto :goto_3

    :goto_4
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f080620

    invoke-virtual {v1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    if-nez v5, :cond_6

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v6

    :goto_5
    if-nez v6, :cond_7

    move v6, v2

    goto :goto_6

    :cond_7
    invoke-virtual {v6}, Landroid/telephony/NetworkRegistrationInfo;->isRegistered()Z

    move-result v6

    :goto_6
    if-nez v5, :cond_9

    :cond_8
    move v5, v2

    goto :goto_7

    :cond_9
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_8

    move v5, v4

    :goto_7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    if-ne v9, p1, :cond_a

    goto :goto_8

    :cond_a
    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isMobileDataPolicyEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    move v2, v4

    :cond_c
    :goto_8
    if-nez v6, :cond_d

    if-nez v5, :cond_d

    if-eqz v3, :cond_e

    :cond_d
    iget-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    xor-int/lit8 v10, v2, 0x1

    iget-boolean v11, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mCarrierNetworkChangeMode:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSignalStrengthIcon(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_e
    iget-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->activeNetworkIsCellular(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    if-eqz v3, :cond_10

    :cond_f
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x1010435

    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_10
    return-object v1
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 7

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    iget-object v0, v0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->isCarrierNetworkActive()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/settings/network/SubscriptionsPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/SubscriptionsPreferenceController;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long p0, v3, v5

    if-ltz p0, :cond_4

    move v2, v1

    :cond_4
    return v2
.end method

.method public final onAirplaneModeChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update$2$1()V

    return-void
.end method

.method public final onCarrierNetworkChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mCarrierNetworkChangeMode:Z

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update$2$1()V

    return-void
.end method

.method public final onDataConnectivityChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update$2$1()V

    return-void
.end method

.method public final onMobileDataEnabledChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update$2$1()V

    return-void
.end method

.method public final onNumSavedNetworksChanged()V
    .locals 0

    return-void
.end method

.method public final onNumSavedSubscriptionsChanged()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 5
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    iget-object v1, v0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/SignalStrengthListener;->pause()V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    iget-object v1, v0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mBaseTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    iget-object v1, v0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, v0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, v0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/SignalStrengthListener;->resume()V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    iget-object v1, v0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mBaseTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mListeners:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhoneStateListener;

    const/high16 v4, 0x100000

    invoke-virtual {v3, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-static {v0, v1}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update$2$1()V

    return-void
.end method

.method public final onSignalStrengthChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update$2$1()V

    return-void
.end method

.method public final onSubscriptionsChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    iget v2, v1, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    if-eq v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v1, v0}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update$2$1()V

    return-void
.end method

.method public final onWifiEntriesChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update$2$1()V

    return-void
.end method

.method public final onWifiStateChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update$2$1()V

    return-void
.end method

.method public shouldInflateSignalStrength(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x0

    if-eqz p0, :cond_1

    const-string v0, "inflate_signal_strength_bool"

    invoke-virtual {p0, v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public final update$2$1()V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Landroidx/collection/ArrayMap$ValueCollection;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap$ValueCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/SignalStrengthListener;->updateSubscriptionIds(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->updateSubscriptionIds(Ljava/util/Set;)V

    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mUpdateListener:Lcom/android/settings/network/NetworkMobileProviderController;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkMobileProviderController;->onChildrenUpdated()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->isSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    const/4 v2, 0x0

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance v1, Lcom/android/settings/widget/MutableGearPreference;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Lcom/android/settings/widget/MutableGearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    new-instance v3, Lcom/android/settings/network/SubscriptionsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/SubscriptionsPreferenceController;)V

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_6
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    new-instance v3, Lcom/android/settings/network/SubscriptionsPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/network/SubscriptionsPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/SubscriptionsPreferenceController;Landroid/telephony/SubscriptionInfo;)V

    iput-object v3, v1, Lcom/android/settings/widget/GearPreference;->mOnGearClickListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    invoke-virtual {v1}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    iget-object v4, v1, Lcom/android/settings/widget/MutableGearPreference;->mGear:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v4, v1, Lcom/android/settings/widget/MutableGearPreference;->mGear:Landroid/widget/ImageView;

    iget v5, v1, Lcom/android/settings/widget/MutableGearPreference;->mDisabledAlphaValue:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_7
    iput-boolean v3, v1, Lcom/android/settings/widget/GearPreference;->mGearState:Z

    :cond_8
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    iget v4, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mStartOrder:I

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    if-ne v6, v4, :cond_9

    move v6, v7

    goto :goto_2

    :cond_9
    move v6, v3

    :goto_2
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v8

    if-nez v8, :cond_a

    if-eqz v6, :cond_a

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1417fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b

    :cond_a
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    if-nez v5, :cond_b

    goto :goto_3

    :cond_b
    const/4 v2, 0x2

    invoke-virtual {v5, v2, v7}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_c

    move v2, v3

    goto :goto_4

    :cond_c
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->isRegistered()Z

    move-result v2

    :goto_4
    iget-object v5, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->isCarrierNetworkActive()Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_5

    :cond_d
    move v7, v3

    :goto_5
    iget-object v5, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object v8, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-object v10, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget-boolean v11, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mCarrierNetworkChangeMode:Z

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v7, :cond_e

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_7

    :cond_e
    if-eqz v11, :cond_f

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_7

    :cond_f
    invoke-virtual {v10}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v10}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_10
    invoke-virtual {v10}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v5

    invoke-static {v5}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-static {v9}, Lcom/android/settingslib/mobile/MobileMappings;->mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_7
    if-nez v5, :cond_11

    const-string v4, "SubscriptionsPrefCntrlr"

    const-string v5, "Can not get the network\'s icon and description."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    goto :goto_8

    :cond_11
    invoke-static {v5, v8, v4}, Lcom/android/settings/network/MobileIconGroupExtKt;->getSummaryForSub(Lcom/android/settingslib/SignalIcon$MobileIconGroup;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    :goto_8
    iget-object v5, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object v8, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->activeNetworkIsCellular(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_13

    if-eqz v7, :cond_12

    goto :goto_9

    :cond_12
    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1417f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_13
    :goto_9
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_14

    const v5, 0x7f1417f4

    goto :goto_a

    :cond_14
    const v5, 0x7f141804

    :goto_a
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_b

    :cond_15
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f141ca2

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_16
    const-string v2, "<this>"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "</"

    invoke-static {v4, v2, v3}, Lkotlin/text/StringsKt___StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {v4, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    const-string v3, "fromHtml(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_17
    move-object v2, v4

    :goto_b
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/network/SubscriptionsPreferenceController;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/SignalStrengthListener;->updateSubscriptionIds(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->updateSubscriptionIds(Ljava/util/Set;)V

    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mUpdateListener:Lcom/android/settings/network/NetworkMobileProviderController;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkMobileProviderController;->onChildrenUpdated()V

    return-void
.end method
