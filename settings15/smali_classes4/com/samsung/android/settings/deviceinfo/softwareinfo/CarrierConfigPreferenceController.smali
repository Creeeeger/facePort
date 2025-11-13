.class public final Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field public final mConfig:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mDevHitCountdown:I

.field public mPreference:Landroidx/preference/Preference;

.field public final mReceiver:Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController$1;-><init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mReceiver:Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController$1;

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mDevHitCountdown:I

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p1, "VERSION"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const-string p1, "com.samsung.nsds.provider/device_config"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v0, "0"

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mConfig:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "carrier_config_ver"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mConfig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "carrier_config_ver"

    return-object p0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "carrier_config_ver"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mDevHitCountdown:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mDevHitCountdown:I

    if-nez v0, :cond_1

    check-cast p1, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->setUpdateButtonVisibility(I)V

    const/4 p1, 0x5

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mDevHitCountdown:I

    :cond_1
    return v1
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mConfig:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TMB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "XAU"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onResume()V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mDevHitCountdown:I

    return-void
.end method

.method public final onStart()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mReceiver:Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController$1;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final onStop()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mReceiver:Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ConfigPref"

    const-string v0, "exception in unregisterReceiver"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
