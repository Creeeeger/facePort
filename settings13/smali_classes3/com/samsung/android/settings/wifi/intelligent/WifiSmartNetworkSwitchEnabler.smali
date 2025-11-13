.class public Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiSmartNetworkSwitchEnabler.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference$OnClickListener;


# instance fields
.field private mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mIsCreatedByHintCard:Z

.field private mIsSwitchForIndividualAppsEnabled:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSAScreenId:Ljava/lang/String;

.field private final mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

.field private mTimeStartedByHintCard:J

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateSmartNetworkSwitchServiceCheck(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->updateSmartNetworkSwitchServiceCheck()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;Lcom/android/settings/widget/SettingsMainSwitchBar;Landroidx/preference/SecPreferenceScreen;Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;Landroidx/preference/SwitchPreferenceCompat;)V
    .locals 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 84
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$2;-><init>(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    .line 105
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

    const-string p3, "WifiSmartNetworkSwitchEnabler"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p6, :cond_1

    .line 108
    iput-object p6, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    .line 109
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p6

    const-string v3, "wifi_switch_for_individual_apps_enabled"

    invoke-static {p6, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p6

    if-ne p6, v1, :cond_0

    move p6, v1

    goto :goto_0

    :cond_0
    move p6, v2

    :goto_0
    iput-boolean p6, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mIsSwitchForIndividualAppsEnabled:Z

    .line 111
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, p6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 112
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch for individual apps: "

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mIsSwitchForIndividualAppsEnabled:Z

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p3, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p6, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    new-instance v3, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;)V

    invoke-virtual {p6, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 126
    sget p6, Lcom/android/settings/R$string;->screen_wifi_adaptive_wifi_setting:I

    invoke-virtual {v0, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSAScreenId:Ljava/lang/String;

    .line 127
    new-instance p6, Landroid/content/IntentFilter;

    invoke-direct {p6}, Landroid/content/IntentFilter;-><init>()V

    iput-object p6, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 128
    invoke-virtual {p6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    .line 129
    invoke-virtual {p6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    .line 130
    invoke-virtual {p6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    .line 131
    invoke-virtual {p6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p6

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {p6, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p6

    if-ne p6, v1, :cond_2

    move p6, v1

    goto :goto_1

    :cond_2
    move p6, v2

    :goto_1
    iput-boolean p6, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    .line 135
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiSnsSettingDialog appears with SNS Enabled : "

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p3, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "wifi"

    .line 137
    invoke-virtual {v0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 139
    iget-boolean p3, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-eqz p3, :cond_3

    .line 140
    invoke-virtual {p2, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_2

    .line 142
    :cond_3
    invoke-virtual {p2, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 144
    :goto_2
    iput-object p5, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    .line 145
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->updateRadioGroup()V

    .line 147
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz p2, :cond_4

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz p3, :cond_4

    .line 148
    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference$OnClickListener;)V

    .line 149
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference$OnClickListener;)V

    .line 152
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->isStartedFromHintCard()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mIsCreatedByHintCard:Z

    .line 153
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->getTimeStartedByHintCard()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mTimeStartedByHintCard:J

    return-void
.end method

.method private updateSmartNetworkSwitchServiceCheck()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

    if-nez v0, :cond_1

    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v1, :cond_e

    .line 287
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 288
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    goto/16 :goto_1

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_5

    .line 326
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 328
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v1, :cond_e

    .line 329
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 330
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 314
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 315
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_7

    .line 316
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 318
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v1, :cond_e

    .line 319
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 320
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 304
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_9

    .line 306
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 308
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v1, :cond_e

    .line 309
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 310
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 294
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_b

    .line 296
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 298
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v1, :cond_e

    .line 299
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 300
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 334
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_d

    .line 336
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 338
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_e

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-eqz v2, :cond_e

    .line 339
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 340
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_e
    :goto_1
    return-void
.end method

.method private updateSwitchForIndividualApps()V
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_switch_for_individual_apps_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mIsSwitchForIndividualAppsEnabled:Z

    .line 371
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p0, :cond_1

    .line 372
    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private updateWFSNBigdata(ZZ)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onRadioButtonClicked(Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;)V
    .locals 5

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    const-string v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    const-string v2, "WifiSmartNetworkSwitchEnabler"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v0, :cond_0

    .line 260
    invoke-direct {p0, v4, v4}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->updateWFSNBigdata(ZZ)V

    const-string p1, "Agg on pressed"

    .line 261
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 263
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 264
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-ne p1, v0, :cond_1

    .line 267
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->updateWFSNBigdata(ZZ)V

    const-string p1, "Agg off pressed"

    .line 268
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 270
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 271
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 206
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->setSmartNetworkSwitchEnable(Z)V

    const/16 p0, 0xc2e

    const/16 p1, 0xc2f

    .line 207
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference$OnClickListener;)V

    .line 201
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public resume()V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference$OnClickListener;)V

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->updateRadioGroup()V

    .line 188
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->updateSmartNetworkSwitchServiceCheck()V

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->updateSwitchForIndividualApps()V

    return-void
.end method

.method public setSmartNetworkSwitchEnable(Z)V
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->updateWFSNBigdata(ZZ)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_num_of_switch_to_mobile_data_toggle"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    .line 215
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "WifiSmartNetworkSwitchEnabler"

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    if-eqz p1, :cond_3

    .line 217
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SNS On pressed"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 222
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 225
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p0, :cond_6

    .line 226
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 241
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v0, :cond_4

    .line 244
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 245
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 248
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p0, :cond_5

    .line 249
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    const-string p0, "SNS Off pressed"

    .line 252
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method public updateRadioGroup()V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 159
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-eqz v4, :cond_2

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {v4, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 167
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-nez v0, :cond_2

    .line 168
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method
