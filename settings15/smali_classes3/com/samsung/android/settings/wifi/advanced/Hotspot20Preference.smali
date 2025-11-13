.class public Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFriendlyName:Ljava/lang/String;

.field public final mIsOAuth:Z

.field public final mOpenRoamingSettings:Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

.field public final mPasspoint:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field public final mScreenId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mPasspoint:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mFriendlyName:Ljava/lang/String;

    const-string v1, "WIFI_260"

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mScreenId:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mOpenRoamingSettings:Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "samsung.openroaming.net"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mIsOAuth:Z

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final launchPasspointDetailsFragment()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mPasspoint:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_chosen_passpoint_key"

    invoke-static {v1, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_chosen_passpoint_friendly_name"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v2, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/16 v0, 0x6a

    iput v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mFriendlyName:Ljava/lang/String;

    iput-object p0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public final onClick()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Before calling EULA : isOAuth "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mIsOAuth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isUserAllow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mOpenRoamingSettings:Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;->isUserAllowedOAuthAgreement()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotspot20Preference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mIsOAuth:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mOpenRoamingSettings:Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;->isUserAllowedOAuthAgreement()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->launchPasspointDetailsFragment()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.net.wifi.wifiguider"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.wifiguider.OPENROAMING_EULA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "oauth_provider"

    const-string v2, "cisco"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->launchPasspointDetailsFragment()V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mScreenId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Preference;->mScreenId:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0x0

    :goto_2
    const/4 v2, 0x0

    const-string v3, "1272"

    invoke-static {v0, v1, p0, v3, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
