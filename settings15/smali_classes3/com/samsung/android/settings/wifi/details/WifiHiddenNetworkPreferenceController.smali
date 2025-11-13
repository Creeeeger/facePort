.class public final Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

.field public mHiddenSsid:Z

.field public mHiddenWarningPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public final mSAScreenId:Ljava/lang/String;

.field public final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mSAScreenId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final disableViewsIfAppropriate$2()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    goto :goto_0

    :cond_0
    const-string v0, "hidden"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    const-string v0, "hidden_warning_text"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenWarningPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a1190

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const v0, 0x7f143576

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->updateSummary(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->disableViewsIfAppropriate$2()V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "hidden"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidden"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onPreferenceChange checked : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    const-string v1, "WifiHiddenNetworkPreferenceController"

    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->disableViewsIfAppropriate$2()V

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->updateSummary(Z)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v0, "1044"

    invoke-static {p1, p2, p0, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final updateSummary(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f143574

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenWarningPref:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    :goto_1
    return-void
.end method
