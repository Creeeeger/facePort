.class public Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;
.super Landroidx/preference/Preference;
.source "Hotspot20Preference.java"


# instance fields
.field private final OAUTH_KEY:Ljava/lang/String;

.field private final OPENROAMING_FQDN:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mFriendlyName:Ljava/lang/String;

.field private final mIsOAuth:Z

.field private final mOpenRoamingSettings:Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

.field private final mPasspoint:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field private final mScreenId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/hotspot2/PasspointConfiguration;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v0, "oauth_provider"

    .line 45
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->OAUTH_KEY:Ljava/lang/String;

    const-string v0, "samsung.openroaming.net"

    .line 46
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->OPENROAMING_FQDN:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mPasspoint:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 55
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mFriendlyName:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mScreenId:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mFragment:Landroidx/fragment/app/Fragment;

    .line 58
    new-instance p3, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

    invoke-direct {p3, p1}, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mOpenRoamingSettings:Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

    .line 59
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mIsOAuth:Z

    .line 60
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private isUserAllowedOAuthAgreement(Ljava/lang/String;)Z
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mOpenRoamingSettings:Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;->isUserAllowedOAuthAgreement(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private launchPasspointDetailsFragment()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mPasspoint:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_chosen_passpoint_key"

    .line 100
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mFriendlyName:Ljava/lang/String;

    const-string v2, "key_chosen_passpoint_friendly_name"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;

    .line 105
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/16 v1, 0x6a

    .line 107
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mFriendlyName:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .line 65
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Before calling EULA : isOAuth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mIsOAuth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isUserAllow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cisco"

    .line 67
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->isUserAllowedOAuthAgreement(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Hotspot20Preference"

    .line 66
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mIsOAuth:Z

    if-eqz v0, :cond_1

    .line 70
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->isUserAllowedOAuthAgreement(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->launchPasspointDetailsFragment()V

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.net.wifi.wifiguider"

    .line 74
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.net.wifi.wifiguider.OPENROAMING_EULA"

    .line 75
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "oauth_provider"

    .line 76
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->launchPasspointDetailsFragment()V

    const/4 v0, 0x0

    .line 85
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mScreenId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 86
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mScreenId:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0x0

    :goto_2
    const-string v2, "1272"

    invoke-static {p0, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    return-void
.end method
