.class public Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TurnOnWifiAutomaticallySettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;,
        Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;,
        Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentConnectedNetworkId:I

.field private mFavoriteApCandidateCategory:Landroidx/preference/PreferenceCategory;

.field private mFavoriteApCategory:Landroidx/preference/PreferenceCategory;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mScreenId:Ljava/lang/String;

.field mSemWifiConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$9jQk9an_s2pZsg-Kx9r0tMvYlF8(Lcom/samsung/android/wifi/SemWifiConfiguration;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->lambda$setFavoriteApList$0(Lcom/samsung/android/wifi/SemWifiConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OuvGgRa-jfyknlK3g7JlfEWArG4(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->lambda$setFavoriteApList$2(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Pqs1Jb1HWqh6c0N1RWW9i1F3GWk(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->lambda$setFavoriteApCandidatesList$3(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yIcBB7F6lLCdk01TJyo_zAZmKFU(Lcom/samsung/android/wifi/SemWifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->lambda$setFavoriteApList$1(Lcom/samsung/android/wifi/SemWifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentConnectedNetworkId(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mCurrentConnectedNetworkId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFavoriteApCandidateCategory(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;)Landroidx/preference/PreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mFavoriteApCandidateCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetFavoriteApList(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->setFavoriteApList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNetworkScore(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->updateNetworkScore(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 67
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "WIFI_270"

    .line 78
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mScreenId:Ljava/lang/String;

    .line 343
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getAccessPointPreference(Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;
    .locals 4

    .line 314
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$style;->PreferenceThemeOverlay:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 316
    new-instance v2, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;

    invoke-direct {v2, p0, v1, p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;-><init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 317
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 319
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-object v2
.end method

.method private getFavoriteCandidatePreference(Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;
    .locals 4

    .line 324
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$style;->PreferenceThemeOverlay:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 326
    new-instance v2, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;

    invoke-direct {v2, p0, v1, p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;-><init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 327
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 329
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-object v2
.end method

.method private isCurrentlyConnected(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    .line 219
    iget p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mCurrentConnectedNetworkId:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 220
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private synthetic lambda$setFavoriteApCandidatesList$3(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;)Z
    .locals 3

    .line 291
    iget-object v0, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 294
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->hasNetworkLocation(Lcom/samsung/android/wifi/SemWifiManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget v1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    if-lez v1, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 299
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->isCurrentlyConnected(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    if-eq p0, v2, :cond_2

    :cond_1
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    const/16 p1, 0x9

    if-ge p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$setFavoriteApList$0(Lcom/samsung/android/wifi/SemWifiConfiguration;)Ljava/lang/String;
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$setFavoriteApList$1(Lcom/samsung/android/wifi/SemWifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$setFavoriteApList$2(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;)Z
    .locals 3

    .line 256
    iget-object v0, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 259
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->hasNetworkLocation(Lcom/samsung/android/wifi/SemWifiManager;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    const/16 p1, 0x9

    if-ge p0, p1, :cond_0

    if-ne p0, v2, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setEmptyFavoriteApItem(Landroidx/preference/PreferenceCategory;)V
    .locals 1

    .line 334
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 336
    sget p0, Lcom/android/settings/R$layout;->sec_preference_wifi_no_network:I

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p0, 0x0

    .line 337
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 338
    sget p0, Lcom/android/settings/R$string;->wifi_autowifi_empty_pref_title:I

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 339
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setFavoriteApCandidatesList()V
    .locals 5

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mFavoriteApCandidateCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 278
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mCurrentConnectedNetworkId:I

    goto :goto_0

    .line 280
    :cond_0
    iput v2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mCurrentConnectedNetworkId:I

    .line 282
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 284
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSemWifiConfigs:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-eqz v3, :cond_1

    .line 286
    new-instance v4, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;

    invoke-direct {v4, p0, v2, v3}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;-><init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;Landroid/net/wifi/WifiConfiguration;Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 290
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;)V

    .line 291
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v0

    const-wide/16 v1, 0x5

    .line 303
    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    .line 304
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 306
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;

    .line 307
    iget-object v1, v1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->getFavoriteCandidatePreference(Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;

    move-result-object v1

    .line 308
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mFavoriteApCandidateCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mFavoriteApCandidateCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->setEmptyFavoriteApItem(Landroidx/preference/PreferenceCategory;)V

    return-void
.end method

.method private setFavoriteApEnabled(Ljava/lang/Boolean;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mFavoriteApCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 215
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mFavoriteApCandidateCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private setFavoriteApList()V
    .locals 5

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 242
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mFavoriteApCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 243
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 244
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda1;-><init>()V

    new-instance v4, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda2;-><init>()V

    .line 245
    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSemWifiConfigs:Ljava/util/Map;

    .line 247
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 248
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSemWifiConfigs:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-eqz v3, :cond_0

    .line 250
    new-instance v4, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;

    invoke-direct {v4, p0, v2, v3}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;-><init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;Landroid/net/wifi/WifiConfiguration;Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;)V

    .line 256
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v0

    .line 263
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 265
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mFavoriteApCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 266
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;

    .line 267
    iget-object v1, v1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->getAccessPointPreference(Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mFavoriteApCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mFavoriteApCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->setEmptyFavoriteApItem(Landroidx/preference/PreferenceCategory;)V

    return-void
.end method

.method private updateNetworkScore(II)V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 228
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, p2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSemWifiConfigs:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-nez v2, :cond_1

    .line 231
    new-instance v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Ljava/lang/String;)V

    .line 233
    :cond_1
    iput p1, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 234
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6a

    return p0
.end method

.method public initSwitchBar()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSimCardReady(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    .line 207
    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    .line 208
    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isAirplaneMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 206
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isAutoWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isAutoWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->setFavoriteApEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 119
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 120
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onBackKey()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->resetBadgedNetwork(Landroid/content/Context;)V

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnKeyBackPressedListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;)V

    .line 202
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    sget p1, Lcom/android/settings/R$xml;->sec_auto_wifi_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    const-string p1, "favorite_ap_list"

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mFavoriteApCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "favorite_ap_candidate_list"

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mFavoriteApCandidateCategory:Landroidx/preference/PreferenceCategory;

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 102
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    const-string v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 103
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 104
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.server.wifi.AutoWifiNotificationController.SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.location.MODE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 108
    iput p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mCurrentConnectedNetworkId:I

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnKeyBackPressedListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;)V

    .line 113
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->hasNewFavoriteNetwork(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    const-string v0, "WIFI_270"

    const-string v1, "1284"

    .line 112
    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 172
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnKeyBackPressedListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;)V

    .line 174
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->initSwitchBar()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WIFI_270"

    const-string v1, "1280"

    .line 181
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->resetBadgedNetwork(Landroid/content/Context;)V

    .line 184
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 155
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "TurnOnWifiAutomaticallySettings"

    const-string v0, "Receiver not registered"

    .line 160
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const-string p0, "WIFI_270"

    const-string p1, "1282"

    .line 189
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 126
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "WIFI_270"

    .line 127
    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedAutoWifi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->initSwitchBar()V

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->setFavoriteApList()V

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->setFavoriteApCandidatesList()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 166
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 167
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->resetBadgedNetwork(Landroid/content/Context;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    .line 141
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "sem_auto_wifi_control_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p1, "WIFI_270"

    const-string v2, "1281"

    .line 143
    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 144
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->setFavoriteApEnabled(Ljava/lang/Boolean;)V

    return-void
.end method
