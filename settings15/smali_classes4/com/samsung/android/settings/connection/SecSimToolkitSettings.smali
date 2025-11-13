.class public Lcom/samsung/android/settings/connection/SecSimToolkitSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final KEY_SIM_TOOLKIT:[Ljava/lang/String;

.field public static final KEY_SIM_TOOLKIT_CATEGORY:[Ljava/lang/String;

.field public static final PROPERTY_STK_TITLE:[Ljava/lang/String;


# instance fields
.field public mSimStateChangeReceiver:Lcom/samsung/android/settings/connection/SecSimToolkitSettings$SimStateChangeReceiver;

.field public mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

.field public mSingleSimPreference:Landroidx/preference/SecPreference;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "slot1_sim_toolkit_category"

    const-string/jumbo v1, "slot2_sim_toolkit_category"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->KEY_SIM_TOOLKIT_CATEGORY:[Ljava/lang/String;

    const-string v0, "key_slot1_sim_toolkit"

    const-string v1, "key_slot2_sim_toolkit"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->KEY_SIM_TOOLKIT:[Ljava/lang/String;

    const-string v0, "gsm.STK_SETUP_MENU"

    const-string v1, "gsm.STK_SETUP_MENU2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->PROPERTY_STK_TITLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6e

    return p0
.end method

.method public final isStkComponentEnabled(I)Z
    .locals 5

    const-string v0, "SecSimToolkitSettings"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/ComponentName;

    const-string v3, "com.android.stk"

    const-string v4, "com.android.stk.StkLauncherActivity_Chn"

    invoke-direct {p1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/ComponentName;

    const-string v3, "com.android.stk2"

    const-string v4, "com.android.stk2.StkLauncherActivity_Chn"

    invoke-direct {p1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "isStkComponentEnabled: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string p0, "Single SIM model do not has Stk2"

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "SecSimToolkitSettings"

    const-string/jumbo v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const p1, 0x7f1701f3

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    sget-object v1, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->KEY_SIM_TOOLKIT_CATEGORY:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecPreferenceCategory;

    aput-object v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SecPreferenceCategory;

    aput-object v4, v0, v3

    const-string v0, "key_single_sim_toolkit"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSingleSimPreference:Landroidx/preference/SecPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSingleSimPreference:Landroidx/preference/SecPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    array-length p1, p1

    if-ge v2, p1, :cond_2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    aget-object v0, v1, v2

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->updateState$5()V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimStateChangeReceiver:Lcom/samsung/android/settings/connection/SecSimToolkitSettings$SimStateChangeReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings$SimStateChangeReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/SecSimToolkitSettings$SimStateChangeReceiver;-><init>(Lcom/samsung/android/settings/connection/SecSimToolkitSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimStateChangeReceiver:Lcom/samsung/android/settings/connection/SecSimToolkitSettings$SimStateChangeReceiver;

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimStateChangeReceiver:Lcom/samsung/android/settings/connection/SecSimToolkitSettings$SimStateChangeReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimStateChangeReceiver:Lcom/samsung/android/settings/connection/SecSimToolkitSettings$SimStateChangeReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimStateChangeReceiver:Lcom/samsung/android/settings/connection/SecSimToolkitSettings$SimStateChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimStateChangeReceiver:Lcom/samsung/android/settings/connection/SecSimToolkitSettings$SimStateChangeReceiver;

    :cond_0
    return-void
.end method

.method public final updateState$5()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->PROPERTY_STK_TITLE:[Ljava/lang/String;

    const-string v2, ", title:"

    const-string v3, "SecSimToolkitSettings"

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    if-eqz v0, :cond_6

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    array-length v0, v0

    if-ge v4, v0, :cond_6

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->isStkComponentEnabled(I)Z

    move-result v0

    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateState slotId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", enabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->KEY_SIM_TOOLKIT_CATEGORY:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    aget-object v6, v6, v4

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    aget-object v6, v6, v4

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    aget-object v0, v0, v4

    sget-object v6, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->KEY_SIM_TOOLKIT:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    aget-object v5, v6, v4

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->isStkComponentEnabled(I)Z

    move-result v0

    aget-object v1, v1, v4

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateState enabled:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSingleSimPreference:Landroidx/preference/SecPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_6
    :goto_2
    return-void
.end method
