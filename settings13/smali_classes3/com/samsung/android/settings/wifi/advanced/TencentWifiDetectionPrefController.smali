.class public Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "TencentWifiDetectionPrefController.java"


# static fields
.field private static final BSSID:I = 0x4

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFAULT_BSSID:Ljava/lang/String; = "-"

.field private static final DEFAULT_SAFETY:Ljava/lang/String; = "0"

.field private static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id asc"

.field private static final DEFAULT_SSID:Ljava/lang/String; = "-"

.field private static final DETAIL:I = 0x6

.field private static final DISABLE:Ljava/lang/String; = "disable"

.field private static final ENABLE:Ljava/lang/String; = "enable"

.field private static final ENABLE_TWS:I = 0x2

.field private static final INVALID:Ljava/lang/String; = "invalid"

.field private static final KEY_WIFI_DETECTION:Ljava/lang/String; = "tencent_wifi_security_detection"

.field private static final SECURITY:I = 0x5

.field private static final SHOW_DIALOG:I = 0x1

.field private static final SSID:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TencentWifiSettings"

.field private static final projection:[Ljava/lang/String;

.field private static final twsPackageName:Ljava/lang/String; = "com.samsung.android.tencentwifisecurity"


# instance fields
.field private mInSetupWizard:Z

.field private mIsAvailable:Z

.field private mWifiDetection:Landroidx/preference/SecSwitchPreference;

.field private pm:Landroid/content/pm/PackageManager;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "content://com.samsung.tencentwifi.security.provider/item/1"

    .line 44
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "_dialog"

    const-string v3, "_enabletws"

    const-string v4, "_ssid"

    const-string v5, "_bssid"

    const-string v6, "_security"

    const-string v7, "_detail"

    .line 46
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->projection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    const-string v0, "tencent_wifi_security_detection"

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->resolver:Landroid/content/ContentResolver;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->pm:Landroid/content/pm/PackageManager;

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->mIsAvailable:Z

    .line 78
    sget-object v1, Lcom/android/settings/Utils;->CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

    const-string v2, "TencentSecurityWiFi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->pm:Landroid/content/pm/PackageManager;

    :try_start_0
    const-string v1, "com.samsung.android.tencentwifisecurity"

    const/4 v3, 0x2

    .line 81
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->resolver:Landroid/content/ContentResolver;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 87
    :cond_0
    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->mInSetupWizard:Z

    if-nez p2, :cond_2

    .line 89
    sget-object p1, Lcom/android/settings/Utils;->CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->isWifiSecurityPackageExist()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->getWifiSecurityState()Ljava/lang/String;

    move-result-object p1

    const-string p2, "invalid"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->mIsAvailable:Z

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->mIsAvailable:Z

    .line 95
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsAvailable "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->mIsAvailable:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TencentWifiSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getWifiSecurityState()Ljava/lang/String;
    .locals 7

    .line 149
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->resolver:Landroid/content/ContentResolver;

    const-string v0, "disable"

    if-nez p0, :cond_0

    return-object v0

    .line 151
    :cond_0
    sget-object v2, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 155
    :cond_1
    :try_start_0
    sget-object v3, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->projection:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id asc"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    .line 157
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 158
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v0

    .line 162
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 163
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 164
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 165
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v0

    :cond_3
    const/4 v2, 0x2

    .line 169
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 172
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 174
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 175
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v0
.end method

.method private isWifiSecurityPackageExist()Z
    .locals 2

    .line 181
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->pm:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "com.samsung.android.tencentwifisecurity"

    .line 183
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 188
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method private setWifiSecurityState(Z)V
    .locals 6

    .line 125
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->resolver:Landroid/content/ContentResolver;

    if-nez p0, :cond_0

    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 129
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 130
    sget-object v2, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->projection:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    const-string v4, "disable"

    if-eqz p1, :cond_2

    const-string v5, "enable"

    goto :goto_0

    :cond_2
    move-object v5, v4

    :goto_0
    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    .line 131
    aget-object v3, v2, v3

    if-eqz p1, :cond_3

    const-string v4, "invalid"

    :cond_3
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 132
    aget-object p1, v2, p1

    const-string v3, "-"

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 133
    aget-object p1, v2, p1

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 134
    aget-object p1, v2, p1

    const-string v2, "0"

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 137
    :try_start_0
    invoke-virtual {p0, v0, v1, p1, p1}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 141
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 142
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "tencent_wifi_security_detection"

    .line 101
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->mWifiDetection:Landroidx/preference/SecSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->mIsAvailable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->getWifiSecurityState()Ljava/lang/String;

    move-result-object p0

    const-string v0, "enable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 5

    .line 194
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->resolver:Landroid/content/ContentResolver;

    if-nez p0, :cond_0

    return-void

    .line 196
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 199
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 200
    sget-object v2, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->projection:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    const-string v4, "disable"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    .line 201
    aget-object v3, v2, v3

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 202
    aget-object v3, v2, v3

    const-string v4, "-"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 203
    aget-object v3, v2, v3

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x6

    .line 204
    aget-object v3, v2, v3

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 205
    aget-object v2, v2, v3

    const-string v3, "enable"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 208
    :try_start_0
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 212
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 213
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/TencentWifiDetectionPrefController;->setWifiSecurityState(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
