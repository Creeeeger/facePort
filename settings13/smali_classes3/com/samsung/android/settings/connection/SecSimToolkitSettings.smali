.class public Lcom/samsung/android/settings/connection/SecSimToolkitSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecSimToolkitSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/connection/SecSimToolkitSettings$SimStateChangeReceiver;
    }
.end annotation


# static fields
.field private static final KEY_SIM_TOOLKIT:[Ljava/lang/String;

.field private static final PROPERTY_STK_TITLE:[Ljava/lang/String;

.field private static final SIM_TOOLKIT_CATEGORY:[Ljava/lang/String;


# instance fields
.field private mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$mupdateState(Lcom/samsung/android/settings/connection/SecSimToolkitSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "slot1_sim_toolkit_category"

    const-string v1, "slot2_sim_toolkit_category"

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->SIM_TOOLKIT_CATEGORY:[Ljava/lang/String;

    const-string v0, "key_slot1_sim_toolkit"

    const-string v1, "key_slot2_sim_toolkit"

    .line 28
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->KEY_SIM_TOOLKIT:[Ljava/lang/String;

    const-string v0, "gsm.STK_SETUP_MENU"

    const-string v1, "gsm.STK_SETUP_MENU2"

    .line 29
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->PROPERTY_STK_TITLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private isStkCompomentEnabled(I)Z
    .locals 5

    const-string v0, "SecSimToolkitSettings"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 83
    new-instance p1, Landroid/content/ComponentName;

    const-string v3, "com.android.stk"

    const-string v4, "com.android.stk.StkLauncherActivity_Chn"

    invoke-direct {p1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_2

    .line 84
    iget-object p1, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 85
    new-instance p1, Landroid/content/ComponentName;

    const-string v3, "com.android.stk2"

    const-string v4, "com.android.stk2.StkLauncherActivity_Chn"

    invoke-direct {p1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    if-ne p0, v2, :cond_1

    move v1, v2

    .line 95
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isStkCompomentEnabled: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string p0, "Single SIM model do not has Stk2"

    .line 87
    invoke-static {v0, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private registerReceivers()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings$SimStateChangeReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/SecSimToolkitSettings$SimStateChangeReceiver;-><init>(Lcom/samsung/android/settings/connection/SecSimToolkitSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private unRegisterReceivers()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 53
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->isStkCompomentEnabled(I)Z

    move-result v1

    .line 54
    sget-object v2, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->PROPERTY_STK_TITLE:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateState slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", enabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecSimToolkitSettings"

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->SIM_TOOLKIT_CATEGORY:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    aget-object v1, v1, v0

    sget-object v3, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->KEY_SIM_TOOLKIT:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreference;

    .line 61
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->SIM_TOOLKIT_CATEGORY:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 67
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6e

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "SecSimToolkitSettings"

    const-string v0, "onCreate"

    .line 41
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 43
    sget p1, Lcom/android/settings/R$xml;->sec_sim_toolkit_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 44
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/preference/SecPreferenceCategory;

    .line 45
    iput-object v0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    .line 46
    sget-object v1, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->SIM_TOOLKIT_CATEGORY:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecPreferenceCategory;

    aput-object v3, v0, v2

    .line 47
    iget-object p0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->mSimToolkitCategory:[Landroidx/preference/SecPreferenceCategory;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    aput-object p1, p0, v0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 101
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->updateState()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 107
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->registerReceivers()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 113
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->unRegisterReceivers()V

    return-void
.end method
