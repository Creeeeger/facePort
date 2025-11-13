.class public Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameSAReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceNameSAReceiver.java"


# static fields
.field private static final MULTI_URI:Landroid/net/Uri;

.field private static final SINGLE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.mobileservice.profileProvider/new_profile_single"

    .line 29
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameSAReceiver;->SINGLE_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mobileservice.profileProvider/new_profile_multi"

    .line 30
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameSAReceiver;->MULTI_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private deSyncDeviceNameWithSamsungAccountName(Landroid/content/Context;)V
    .locals 2

    const-string p0, "DeviceNameSAReceiver"

    const-string v0, "set default device name : samsung account log out"

    .line 112
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 114
    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDefaultDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_name"

    .line 115
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "synced_account_name"

    const/4 v1, 0x0

    .line 116
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private getSamsungAccountProfileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string p0, "DeviceNameSAReceiver"

    const-string v0, ""

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p1, "account_given_name"

    .line 130
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 133
    :try_start_0
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameSAReceiver;->SINGLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 134
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Success Getting SA Names"

    .line 135
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-interface {v7, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v7, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string p1, "Fail Getting SA Names"

    .line 138
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v7, :cond_1

    .line 145
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "Query Failed!"

    .line 141
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    return-object v0

    :goto_3
    if-eqz v7, :cond_2

    .line 145
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_2
    throw p0
.end method

.method private getSimplifiedDefaultDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 152
    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDefaultDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Galaxy"

    const-string v0, ""

    .line 153
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "5G"

    .line 154
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(LTE)"

    .line 155
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LTE"

    .line 156
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isDeSyncDeviceNameAvailable(Landroid/content/Context;)Z
    .locals 6

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    .line 69
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "synced_account_name"

    .line 70
    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$string;->device_info_sync_name:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    const/4 v0, 0x1

    .line 75
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameSAReceiver;->getSimplifiedDefaultDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v0

    .line 74
    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v3
.end method

.method private isSyncDeviceNameAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 56
    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDefaultDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_name"

    .line 57
    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private syncDeviceNameWithSamsungAccountName(Landroid/content/Context;)V
    .locals 5

    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameSAReceiver;->getSamsungAccountProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "DeviceNameSAReceiver"

    if-eqz v1, :cond_0

    const-string p0, "SAN is null"

    .line 86
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameSAReceiver;->getSimplifiedDefaultDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Length] SAN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Reduced DN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->device_info_sync_name:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    return-void

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    .line 102
    invoke-static {v1, v2, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p0, "synced_account_name"

    .line 103
    invoke-static {v1, p0, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive intent action is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceNameSAReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.mobileservice.profile.ACTION_PROFILE_LOGIN_MERGE_COMPLETED"

    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameSAReceiver;->isSyncDeviceNameAvailable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameSAReceiver;->syncDeviceNameWithSamsungAccountName(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameSAReceiver;->isDeSyncDeviceNameAvailable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameSAReceiver;->deSyncDeviceNameWithSamsungAccountName(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
