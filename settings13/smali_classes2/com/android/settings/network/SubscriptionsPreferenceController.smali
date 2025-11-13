.class public Lcom/android/settings/network/SubscriptionsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SubscriptionsPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;
.implements Lcom/android/settings/network/telephony/DataConnectivityListener$Client;
.implements Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;
.implements Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;,
        Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;
    }
.end annotation


# instance fields
.field private mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

.field final mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

.field private mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mPreferenceGroupKey:Ljava/lang/String;

.field private mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

.field private mStartOrder:I

.field private mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

.field private mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubscriptionPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUpdateListener:Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;


# direct methods
.method public static synthetic $r8$lambda$CsW5n__G6EaO6jXF5ak6X6Iwcgs(Lcom/android/settings/network/SubscriptionsPreferenceController;Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->lambda$isAvailable$2(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RHwXSy0mU7z-eOxPFEnzhMM-QWI(Lcom/android/settings/network/SubscriptionsPreferenceController;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->lambda$update$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RsbDK_YEXt5Rd3lrrLkkbaFJy3c(Lcom/android/settings/network/SubscriptionsPreferenceController;Landroid/telephony/SubscriptionInfo;Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/SubscriptionsPreferenceController;->lambda$update$1(Landroid/telephony/SubscriptionInfo;Lcom/android/settings/widget/GearPreference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSubsPrefCtrlInjector(Lcom/android/settings/network/SubscriptionsPreferenceController;)Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConfig(Lcom/android/settings/network/SubscriptionsPreferenceController;Lcom/android/settingslib/mobile/MobileMappings$Config;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/android/settings/network/SubscriptionsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;Ljava/lang/String;I)V
    .locals 2

    .line 146
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Lcom/android/settings/network/SubscriptionsPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$1;-><init>(Lcom/android/settings/network/SubscriptionsPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    .line 117
    new-instance v0, Landroid/telephony/TelephonyDisplayInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 147
    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mUpdateListener:Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;

    .line 148
    iput-object p4, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroupKey:Ljava/lang/String;

    .line 149
    iput p5, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mStartOrder:I

    .line 150
    const-class p3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 151
    const-class p3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/SubscriptionManager;

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 152
    const-class p3, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 153
    new-instance p3, Landroidx/collection/ArrayMap;

    invoke-direct {p3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Ljava/util/Map;

    .line 154
    new-instance p3, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 155
    new-instance p3, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    .line 156
    new-instance p3, Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/telephony/DataConnectivityListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/DataConnectivityListener$Client;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    .line 157
    new-instance p3, Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/telephony/SignalStrengthListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    .line 158
    new-instance p3, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$Callback;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    .line 159
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->createSubsPrefCtrlInjector()Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    .line 161
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->getConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/SubscriptionsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getCarrierNetworkLevel()I
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->getCarrierNetworkLevel()I

    move-result p0

    return p0
.end method

.method private getMobilePreferenceSummary(I)Ljava/lang/CharSequence;
    .locals 11

    .line 259
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->mobile_data_off_summary:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 263
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_1

    .line 272
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isRegistered()Z

    move-result v0

    .line 273
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->isCarrierNetworkActive()Z

    move-result v10

    .line 274
    iget-object v4, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-object v7, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    move v8, p1

    move v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->getNetworkType(Landroid/content/Context;Lcom/android/settingslib/mobile/MobileMappings$Config;Landroid/telephony/TelephonyDisplayInfo;IZ)Ljava/lang/String;

    move-result-object p1

    .line 276
    iget-object v4, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->isActiveCellularNetwork(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    if-nez v0, :cond_6

    .line 284
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->mobile_data_no_connection:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 277
    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 278
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->mobile_data_connection_active:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 280
    :cond_5
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->preference_summary_default_combination:I

    new-array v2, v2, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/R$string;->mobile_data_connection_active:I

    .line 281
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p1, v2, v1

    .line 280
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 286
    :cond_6
    :goto_3
    invoke-static {p1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isAvailable$2(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 424
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 423
    invoke-virtual {v0, p0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->canSubscriptionBeDisplayed(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$update$0(Landroidx/preference/Preference;)Z
    .locals 0

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->connectCarrierNetwork()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$update$1(Landroid/telephony/SubscriptionInfo;Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->launchMobileNetworkSettings(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unRegisterReceiver()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 173
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private update()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    if-eqz v0, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 213
    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 217
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/SignalStrengthListener;->updateSubscriptionIds(Ljava/util/Set;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->updateSubscriptionIds(Ljava/util/Set;)V

    .line 219
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mUpdateListener:Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;

    invoke-interface {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;->onChildrenUpdated()V

    return-void

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_4

    .line 225
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    .line 228
    :cond_4
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    if-nez v1, :cond_5

    .line 229
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 230
    new-instance v1, Lcom/android/settings/widget/MutableGearPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/settings/widget/MutableGearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    .line 231
    new-instance v2, Lcom/android/settings/network/SubscriptionsPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/SubscriptionsPreferenceController;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 237
    :cond_5
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    new-instance v2, Lcom/android/settings/network/SubscriptionsPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/network/SubscriptionsPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/SubscriptionsPreferenceController;Landroid/telephony/SubscriptionInfo;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    .line 240
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-nez v1, :cond_6

    .line 241
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/MutableGearPreference;->setGearEnabled(Z)V

    .line 244
    :cond_6
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    iget v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mStartOrder:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 247
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/SubscriptionsPreferenceController;->getMobilePreferenceSummary(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/network/SubscriptionsPreferenceController;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/MutableGearPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 251
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 252
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/SignalStrengthListener;->updateSubscriptionIds(Ljava/util/Set;)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->updateSubscriptionIds(Ljava/util/Set;)V

    .line 255
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mUpdateListener:Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;

    invoke-interface {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;->onChildrenUpdated()V

    return-void
.end method


# virtual methods
.method public connectCarrierNetwork()V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 483
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 484
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->connectCarrierNetwork(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)Z

    :cond_1
    return-void
.end method

.method createSubsPrefCtrlInjector()Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;
    .locals 0

    .line 489
    new-instance p0, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;-><init>()V

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 201
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 291
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    .line 295
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->isCarrierNetworkActive()Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->getCarrierNetworkLevel()I

    move-result v1

    goto :goto_1

    .line 299
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->shouldInflateSignalStrength(I)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x6

    .line 304
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$drawable;->ic_signal_strength_zero_bar_no_internet:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 306
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    const/4 v7, 0x2

    .line 309
    invoke-virtual {v5, v7, v6}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v7

    :goto_2
    if-nez v7, :cond_4

    move v7, v2

    goto :goto_3

    .line 315
    :cond_4
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->isRegistered()Z

    move-result v7

    :goto_3
    if-nez v5, :cond_5

    goto :goto_4

    .line 318
    :cond_5
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_6

    move v2, v6

    :cond_6
    :goto_4
    if-nez v7, :cond_7

    if-nez v2, :cond_7

    if-eqz v3, :cond_8

    .line 320
    :cond_7
    iget-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 321
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    xor-int/2addr v0, v6

    .line 320
    invoke-virtual {p1, v2, v1, v4, v0}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->getIcon(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 324
    :cond_8
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 325
    invoke-virtual {v0, v1}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->isActiveCellularNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz v3, :cond_a

    .line 327
    :cond_9
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_a
    return-object p1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 6

    .line 408
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->isAirplaneModeOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 409
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->isCarrierNetworkActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 413
    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 418
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/network/SubscriptionsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/SubscriptionsPreferenceController;)V

    .line 422
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 425
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long p0, v2, v4

    if-ltz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method isCarrierNetworkActive()Z
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    if-eqz p0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->isCarrierNetworkActive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 435
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onDataConnectivityChange()V
    .locals 0

    .line 456
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onMobileDataEnabledChange()V
    .locals 0

    .line 451
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    .line 192
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/DataConnectivityListener;->stop()V

    .line 193
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/SignalStrengthListener;->pause()V

    .line 194
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->pause()V

    .line 195
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->unRegisterReceiver()V

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    invoke-virtual {v1}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/DataConnectivityListener;->start()V

    .line 182
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/SignalStrengthListener;->resume()V

    .line 183
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->resume()V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->registerReceiver()V

    .line 185
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onSignalStrengthChanged()V
    .locals 0

    .line 461
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 442
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v1}, Lcom/android/settings/network/MobileDataEnabledListener;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v1}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    .line 444
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v1, v0}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onTelephonyDisplayInfoChanged(ILandroid/telephony/TelephonyDisplayInfo;)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->getDefaultDataSubscriptionId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 470
    :cond_0
    iput-object p2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 471
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method setIcon(Landroidx/preference/Preference;IZ)V
    .locals 4

    .line 340
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 341
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    :goto_0
    const/4 v3, 0x5

    .line 345
    invoke-virtual {p0, p2}, Lcom/android/settings/network/SubscriptionsPreferenceController;->shouldInflateSignalStrength(I)Z

    move-result p2

    if-eqz p2, :cond_1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x6

    :cond_1
    if-eqz p3, :cond_2

    .line 350
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 351
    :cond_3
    iget-object p2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, v1, v3, v2}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->getIcon(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setWifiPickerTrackerHelper(Lcom/android/settings/wifi/WifiPickerTrackerHelper;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    return-void
.end method

.method shouldInflateSignalStrength(I)Z
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settingslib/net/SignalStrengthUtil;->shouldInflateSignalStrength(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method
