.class public Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# instance fields
.field public currentRouteOptions:Ljava/util/List;

.field public mActivity:Lcom/android/settings/SettingsActivity;

.field public mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mDhPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mFilter:Landroid/content/IntentFilter;

.field public mNfcAdapter:Landroid/nfc/NfcAdapter;

.field public final mReceiver:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;

.field public mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

.field public mSimPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mActivity:Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSimPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mDhPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->currentRouteOptions:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;-><init>(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mReceiver:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xe49

    return p0
.end method

.method public final handleRoutingState(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SIM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSimPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mDhPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "DH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSimPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mDhPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_7
    const-string v0, "ESE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSimPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mDhPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSimPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mDhPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_e
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_f
    :goto_0
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mActivity:Lcom/android/settings/SettingsActivity;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    const-class v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    monitor-enter v0

    if-eqz p1, :cond_16

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_15

    sget-object v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mAdapter:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    sget-object v2, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mAdapter:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    :goto_1
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getServiceInterface()Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    if-nez p1, :cond_1

    const-string p1, "SamsungNfcAdapter"

    const-string v1, "Could not retrieve Samsung service"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    monitor-exit v0

    :goto_2
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p1, :cond_2

    const-string p1, "NfcAdvancedRoutingSetting"

    const-string v0, "NFC not supported"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportRoutingSettings(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p1, :cond_4

    const-string p1, "NfcAdvancedRoutingSetting"

    const-string v0, "This device does not support Default NFC Method"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_5
    const-string p1, "NfcAdvancedRoutingSetting"

    const-string v0, "current routing options : "

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_6
    const v1, 0x7f1701ce

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v1, "SIM"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSimPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v2, "DH"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mDhPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v2, "ESE"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v3, "AUTO_SELECT"

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSimPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v5, "context is null"

    const-string v6, "Rune"

    const/4 v7, 0x0

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v8, "android.hardware.nfc.uicc"

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    :goto_3
    if-nez v4, :cond_8

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSimPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v4, v8}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    goto :goto_4

    :cond_9
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.nfc.ese"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    :goto_4
    if-nez v4, :cond_a

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_a
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string/jumbo v5, "ro.vendor.nfc.support.othercategory"

    const/4 v6, 0x1

    if-eqz v4, :cond_b

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v4, v8}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSimPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v4, :cond_c

    iput-object p0, v4, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mDhPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v4, :cond_d

    iput-object p0, v4, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    :cond_d
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mEsePreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v4, :cond_e

    iput-object p0, v4, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    :cond_e
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mAutoPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v4, :cond_f

    iput-object p0, v4, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    :cond_f
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getDefaultRoutingDestination()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->currentRouteOptions:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_11

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    const-string v7, "eSIM"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_5

    :cond_10
    const-string v1, "eSE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object v1, v2

    goto :goto_5

    :cond_11
    move-object v1, v4

    :cond_12
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->isAutoChangeEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_6

    :cond_13
    move-object v3, v1

    :goto_6
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->handleRoutingState(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p0, :cond_14

    const-string p0, "Exception occured - getDefaultRoutingDestination"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_7
    return-void

    :cond_15
    :try_start_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context not associated with any application(using a mock context?)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_8
    monitor-exit v0

    throw p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mReceiver:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "NfcAdvancedRoutingSetting"

    const-string v0, "Exception occurred - onPause"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 9

    const-string v0, "NfcAdvancedRoutingSetting"

    const-string/jumbo v1, "set "

    :try_start_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->handleRoutingState(Ljava/lang/String;)V

    sget-boolean v2, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUTO_SELECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "DH"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    sget-object v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    check-cast v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    invoke-virtual {v1, v5}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->setAutoChangeStatus(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getDefaultRoutingDestination()Ljava/util/List;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8, v1}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setDefaultRoutingDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    sget-object v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    check-cast v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    invoke-virtual {v1, v4}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->setAutoChangeStatus(Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    invoke-static {v1}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    :goto_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->currentRouteOptions:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->currentRouteOptions:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v7, v8}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setDefaultRoutingDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v1, v1}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setDefaultRoutingDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    const-string v1, "ESE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x3

    :goto_3
    int-to-long v1, v3

    const/16 p1, 0xe49

    const/16 v3, 0xe4a

    invoke-static {p1, v3, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p0, "context null, return"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p0, :cond_7

    const-string p0, "Exception occurred - setDefaultRoutingDestination"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mReceiver:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "NfcAdvancedRoutingSetting"

    const-string v0, "NFC is off. Close advance menu"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/16 p0, 0xe49

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    :cond_2
    return-void
.end method
