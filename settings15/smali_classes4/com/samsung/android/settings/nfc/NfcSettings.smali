.class public Lcom/samsung/android/settings/nfc/NfcSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DBG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final isJapanKDIModel:Z

.field public static mIsGpFelicaSupported:Z


# instance fields
.field public antennaAnimation:Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;

.field public mActivity:Landroidx/fragment/app/FragmentActivity;

.field public mAlertDialog:Landroid/app/AlertDialog;

.field public mContext:Landroid/content/Context;

.field public final mEUiccIntentFilter:Landroid/content/IntentFilter;

.field public final mEUiccReceiver:Lcom/samsung/android/settings/nfc/NfcSettings$1;

.field public mEmptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field public mEmptyCategoryBelowNfcExplain:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field public mEmptyPaymentSim:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field public mExplainLayout:Lcom/android/settingslib/widget/LayoutPreference;

.field public mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

.field public mIsEmergencyMode:Z

.field public mNfcAdapter:Landroid/nfc/NfcAdapter;

.field public mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

.field public mNfcPreferences:Landroid/content/SharedPreferences;

.field public mNfcSettingPref:Landroidx/preference/PreferenceScreen;

.field public mOtherService:Landroidx/preference/SecPreferenceScreen;

.field public mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

.field public mReaderMode:Landroidx/preference/SecSwitchPreference;

.field public mScreen:Landroidx/preference/PreferenceScreen;

.field public mSecureNfcDCM:Landroidx/preference/SecSwitchPreference;

.field public mSecureNfcKDI:Landroidx/preference/SecSwitchPreference;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public mTapPay:Landroidx/preference/SecPreference;

.field public mTapPayDCM:Landroidx/preference/SecPreference;

.field public final sharedPreferenceChangeListener:Lcom/samsung/android/settings/nfc/NfcSettings$2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsGpFelicaSupported:Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->isJapanKDIModel:Z

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JAPAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/prism"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/etc/code"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Multi CSC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "QOL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SJP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :goto_2
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    throw v0

    :cond_3
    :goto_4
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcSettings$4;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEUiccIntentFilter:Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mExplainLayout:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsEmergencyMode:Z

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$1;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEUiccReceiver:Lcom/samsung/android/settings/nfc/NfcSettings$1;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$2;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->sharedPreferenceChangeListener:Lcom/samsung/android/settings/nfc/NfcSettings$2;

    return-void
.end method


# virtual methods
.method public final createPreferenceForPaymentSim()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "empty_nfc_payment_sim"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "nfc_payment_sim"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "NfcSettings"

    const-string v1, "eUICC removed from mScreen, re-adding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmptyPaymentSim:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const v1, 0x7f142c6d

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmptyPaymentSim:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v0, :cond_2

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iput-object v1, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->updatePaymentSim()V

    return-void
.end method

.method public final getAppContext()Lcom/samsung/android/settings/bixby/AppContext;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/samsung/android/settings/bixby/AppContext$Builder;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/AppContext$Builder;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string/jumbo v4, "nfcEnabled"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object p0, v0, Lcom/samsung/android/settings/bixby/AppContext$Builder;->mLLMContext:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v6, "NFCSettings"

    if-eqz v4, :cond_2

    const-string v4, "[]"

    invoke-static {v6, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-le v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/AppContext$Builder;->build()Lcom/samsung/android/settings/bixby/AppContext;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1419a8

    goto :goto_0

    :cond_0
    const p0, 0x7f141a0a

    :goto_0
    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-class p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NfcSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xe42

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1701d0

    goto :goto_0

    :cond_0
    const p0, 0x7f1701cf

    :goto_0
    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mExplainLayout:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/nfc/NfcSettings;->populateViewForOrientation(Lcom/android/settingslib/widget/LayoutPreference;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nfcSettingsPrefs"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcPreferences:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsGpFelicaSupported:Z

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEUiccIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->antennaAnimation:Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    const-string/jumbo v0, "nfc_explain"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mExplainLayout:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "nfc_mode_reader"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mReaderMode:Landroidx/preference/SecSwitchPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "empty_general"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "empty_nfc_explain"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmptyCategoryBelowNfcExplain:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "empty_nfc_payment_sim"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmptyPaymentSim:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "nfc_payment_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mTapPay:Landroidx/preference/SecPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "nfc_payment_settings_dcm"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mTapPayDCM:Landroidx/preference/SecPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "nfc_other_services"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mOtherService:Landroidx/preference/SecPreferenceScreen;

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "nfc_payment_sim"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "secure_nfc_settings_dcm"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSecureNfcDCM:Landroidx/preference/SecSwitchPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "secure_nfc_settings_kdi"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSecureNfcKDI:Landroidx/preference/SecSwitchPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcSettingPref:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-object p2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSupportRoutingSettings(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    const/4 p2, 0x1

    const v0, 0x7f1419e4

    invoke-interface {p1, p0, p2, p0, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    return-void
.end method

.method public final onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    const v2, 0x7f1419e4

    invoke-virtual {p1, v2, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const/16 p0, 0xe49

    iput p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v1
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->pause()V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsEmergencyMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSupportEUiccSwp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->sharedPreferenceChangeListener:Lcom/samsung/android/settings/nfc/NfcSettings$2;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEUiccReceiver:Lcom/samsung/android/settings/nfc/NfcSettings$1;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 10

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isReaderOptionSupported()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmptyCategoryBelowNfcExplain:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mReaderMode:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iput-object v0, v3, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->readerMode:Landroidx/preference/SecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isReaderOptionEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->readerMode:Landroidx/preference/SecSwitchPreference;

    const v3, 0x7f1419d4

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mReaderMode:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iput-object v1, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->readerMode:Landroidx/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mReaderMode:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmptyCategoryBelowNfcExplain:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mTapPay:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_6

    sget-boolean v2, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsGpFelicaSupported:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mTapPayDCM:Landroidx/preference/SecPreference;

    iput-object v3, v2, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->tapPay:Landroidx/preference/SecPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iput-object v0, v2, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->tapPay:Landroidx/preference/SecPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mTapPayDCM:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mTapPayDCM:Landroidx/preference/SecPreference;

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mOtherService:Landroidx/preference/SecPreferenceScreen;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iput-object v0, v2, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->otherService:Landroidx/preference/SecPreferenceScreen;

    :cond_7
    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsGpFelicaSupported:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->isJapanKDIModel:Z

    if-nez v0, :cond_b

    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_8

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    move-object v0, v2

    :cond_9
    const-string v2, "UQM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "JCO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSecureNfcDCM:Landroidx/preference/SecSwitchPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->secureNfc:Landroidx/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSecureNfcKDI:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSecureNfcKDI:Landroidx/preference/SecSwitchPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->secureNfc:Landroidx/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSecureNfcDCM:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSupportEUiccSwp(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->removePreferenceForPaymentSim()V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "showNfcEuiccMenu"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->createPreferenceForPaymentSim()V

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->removePreferenceForPaymentSim()V

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcSettingPref:Landroidx/preference/PreferenceScreen;

    sget-boolean v5, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsGpFelicaSupported:Z

    if-eqz v5, :cond_f

    new-instance v5, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, v5, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v3, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->readerMode:Landroidx/preference/SecSwitchPreference;

    iput-object v3, v5, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    iget-object v3, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->tapPay:Landroidx/preference/SecPreference;

    iput-object v3, v5, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->tapPay:Landroidx/preference/SecPreference;

    iget-object v3, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iput-object v3, v5, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v3, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->otherService:Landroidx/preference/SecPreferenceScreen;

    iput-object v3, v5, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->otherService:Landroidx/preference/SecPreferenceScreen;

    iput-object v4, v5, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->screenPref:Landroidx/preference/PreferenceScreen;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->secureNfc:Landroidx/preference/SecSwitchPreference;

    iput-object v0, v5, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-direct {v0, v5}, Lcom/samsung/android/settings/nfc/NfcEnabler;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    goto :goto_5

    :cond_f
    new-instance v5, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, v5, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v3, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->readerMode:Landroidx/preference/SecSwitchPreference;

    iput-object v3, v5, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    iget-object v3, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->tapPay:Landroidx/preference/SecPreference;

    iput-object v3, v5, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->tapPay:Landroidx/preference/SecPreference;

    iget-object v3, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iput-object v3, v5, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->otherService:Landroidx/preference/SecPreferenceScreen;

    iput-object v0, v5, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->otherService:Landroidx/preference/SecPreferenceScreen;

    iput-object v4, v5, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->screenPref:Landroidx/preference/PreferenceScreen;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-direct {v0, v5}, Lcom/samsung/android/settings/nfc/NfcEnabler;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mExplainLayout:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->populateViewForOrientation(Lcom/android/settingslib/widget/LayoutPreference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->resume()V

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSupportEUiccSwp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->sharedPreferenceChangeListener:Lcom/samsung/android/settings/nfc/NfcSettings$2;

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEUiccReceiver:Lcom/samsung/android/settings/nfc/NfcSettings$1;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEUiccIntentFilter:Landroid/content/IntentFilter;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->dismissListIfShowing()V

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->dismissListIfShowing()V

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsEmergencyMode:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsEmergencyMode:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    const v2, 0x7f1419ee

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    :cond_13
    const v2, 0x7f140dc1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_6
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "NFC"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f1419ed

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/nfc/NfcSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$3;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_14
    return-void
.end method

.method public final populateViewForOrientation(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 7

    if-nez p1, :cond_1

    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "NfcSettings"

    const-string p1, "layoutPref is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0a6d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0a69

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    const/16 v3, 0x8

    if-eqz v2, :cond_3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0a6b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0a6f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    :goto_1
    if-eqz v0, :cond_4

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060738

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->antennaAnimation:Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a04f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->device_jpn_model_land:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a04f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->device_jpn_model_vert:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a062a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->jpnVertAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v5, 0x7f0a0629

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->jpnLandAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v6, 0x7f0a00f4

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->animation:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->nfcJpnAntennaAnimationHelper:Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0a6a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->isJpnModel()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->iv:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->device_jpn_model_land:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->device_jpn_model_vert:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->jpnLandAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation$1;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation$1;-><init>(Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->iv:Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v5, 0x7f0a0a6e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->isJpnModel()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->iv:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->device_jpn_model_land:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->device_jpn_model_vert:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->jpnVertAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation$1;

    const/4 v5, 0x1

    invoke-direct {v2, p0, v5}, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation$1;-><init>(Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a00f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->iv:Lcom/airbnb/lottie/LottieAnimationView;

    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->tv:Landroid/widget/TextView;

    const v2, 0x7f141985

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->mContext:Landroid/content/Context;

    const v5, 0x7f141982

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->tv:Landroid/widget/TextView;

    const v2, 0x7f141983

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->mContext:Landroid/content/Context;

    const v5, 0x7f141981

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;->values()[Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    move-result-object v1

    const-string/jumbo v2, "ro.vendor.nfc.info.antpos"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->isJpnModel()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->jpnVertAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->jpnLandAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->animation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->jpnVertAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->jpnLandAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->animation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->device_jpn_model_land:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->device_jpn_model_vert:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Antenna Position : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NfcAntennaAnimation"

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->iv:Lcom/airbnb/lottie/LottieAnimationView;

    iget v1, v1, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;->animationJSONValue:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->iv:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    :goto_4
    iget-object p0, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const p1, 0x7f0a06de

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final removePreferenceForPaymentSim()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmptyPaymentSim:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method public final updatePaymentSim()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->dismissListIfShowing()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "telephony_subscription_service"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mActiveSubscriptionList:Ljava/util/HashMap;

    move v3, v1

    :goto_0
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "PaymentDropDownPreference"

    if-gt v3, v4, :cond_5

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mHasActiveEmbeddedSim:Z

    if-nez v5, :cond_1

    iput-boolean v1, v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mHasActiveEmbeddedSim:Z

    :cond_1
    iget-object v5, v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mActiveSubscriptionList:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    goto :goto_1

    :cond_2
    const/4 v6, -0x1

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "sim not ready for slot == "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "subscription count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mActiveSubscriptionList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->initSubscriptionDetails()V

    :goto_3
    return-void
.end method
