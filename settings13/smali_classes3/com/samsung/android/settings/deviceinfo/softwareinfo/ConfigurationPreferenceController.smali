.class public Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ConfigurationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mConfig:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDevHitCountdown:I

.field private mPreference:Landroidx/preference/Preference;

.field final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController$1;-><init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x5

    .line 59
    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    .line 60
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->getConfigVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mConfig:Ljava/lang/String;

    return-void
.end method

.method private getConfigVersion()Ljava/lang/String;
    .locals 6

    .line 148
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "VERSION"

    .line 149
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const-string p0, "com.samsung.nsds.provider/device_config"

    .line 152
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 155
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 156
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 163
    throw v0

    :cond_0
    if-eqz p0, :cond_1

    .line 161
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string p0, "0"

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 122
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "config"

    .line 123
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "config"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 133
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "config"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 137
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    .line 138
    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    if-nez v0, :cond_1

    .line 140
    check-cast p1, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setUpdateButtonVisibility(I)V

    const/4 p1, 0x5

    .line 141
    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    :cond_1
    return v1
.end method

.method public isAvailable()Z
    .locals 1

    .line 107
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mConfig:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TMB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

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

.method public onResume()V
    .locals 1

    const/4 v0, 0x5

    .line 112
    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
