.class public Lcom/android/settings/nfc/ChangeNfcTagAppsStateDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public mAppBridge:Lcom/android/settings/nfc/AppStateNfcTagAppsBridge;

.field public mSwitchPref:Landroidx/preference/TwoStatePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDialog(I)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7e0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/nfc/ChangeNfcTagAppsStateDetails;->mAppBridge:Lcom/android/settings/nfc/AppStateNfcTagAppsBridge;

    const p1, 0x7f170073

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "app_ops_settings_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/nfc/ChangeNfcTagAppsStateDetails;->mSwitchPref:Landroidx/preference/TwoStatePreference;

    const v0, 0x7f140920

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/android/settings/nfc/ChangeNfcTagAppsStateDetails;->mSwitchPref:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    check-cast p2, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/settings/nfc/ChangeNfcTagAppsStateDetails;->mSwitchPref:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/nfc/ChangeNfcTagAppsStateDetails;->mAppBridge:Lcom/android/settings/nfc/AppStateNfcTagAppsBridge;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v3, p1, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3, v0, v2, p2}, Landroid/nfc/NfcAdapter;->setTagIntentAppPreferenceForUser(ILjava/lang/String;Z)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge;->sList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p1, p1, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1, v0}, Landroid/nfc/NfcAdapter;->getTagIntentAppPreferenceForUser(I)Ljava/util/Map;

    move-result-object p1

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/nfc/ChangeNfcTagAppsStateDetails;->refreshUi()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Set ["

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] failed."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChangeNfcTagAppsStateDetails"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public final refreshUi()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->retrieveAppEntry$1()V

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v2, v0, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge$NfcTagAppState;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge$NfcTagAppState;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge$NfcTagAppState;

    invoke-direct {v0, v1, v1}, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge$NfcTagAppState;-><init>(ZZ)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/nfc/ChangeNfcTagAppsStateDetails;->mSwitchPref:Landroidx/preference/TwoStatePreference;

    iget-boolean v2, v0, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge$NfcTagAppState;->mIsAllowed:Z

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/nfc/ChangeNfcTagAppsStateDetails;->mSwitchPref:Landroidx/preference/TwoStatePreference;

    iget-boolean v0, v0, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge$NfcTagAppState;->mIsExisted:Z

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    return v1
.end method
