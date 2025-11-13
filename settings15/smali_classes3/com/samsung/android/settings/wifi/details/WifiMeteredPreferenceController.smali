.class public final Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public mConfig:Landroid/net/wifi/WifiConfiguration;

.field public final mFragment:Landroidx/fragment/app/Fragment;

.field public final mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field public mMeteredPref:Landroidx/preference/DropDownPreference;

.field public final mSAScreenId:Ljava/lang/String;

.field public final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mSAScreenId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final disableViewsIfAppropriate$3()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

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
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    :cond_0
    const-string v0, "metered"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_1

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v2, 0x7f060659

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    iget-object v1, v0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "metered"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

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

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metered onPreferenceChange checked : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiMeteredPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "Detect automatically"

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    const-string v0, "Treat as metered"

    goto :goto_0

    :cond_1
    const-string v0, "Treat as unmetered"

    :goto_0
    const-string v3, "metered_type"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v3, "1027"

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->setMeteredChoice(I)V

    :cond_3
    const-string v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    check-cast p1, Landroidx/preference/DropDownPreference;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v3, 0x7f060659

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p1, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object p2, v1, p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->disableViewsIfAppropriate$3()V

    return v2
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    const-string/jumbo v0, "updateState - entered "

    const-string v1, "WifiMeteredPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->disableViewsIfAppropriate$3()V

    const-string/jumbo p0, "updateState - exited "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
