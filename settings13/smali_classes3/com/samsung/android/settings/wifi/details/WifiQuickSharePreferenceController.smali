.class public Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiQuickSharePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInSetupWizardFinished:Z

.field private mIsChinaP2p:Z

.field private mIsQuickShareAvailable:Z

.field private mQrBmp:Landroid/graphics/Bitmap;

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 76
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 78
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 79
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mInSetupWizardFinished:Z

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->isSupportQuickShare()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->isQuickShareEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 81
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiUtils;->isSecurityTypeSupportQrCode(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mIsQuickShareAvailable:Z

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->isChinaP2p()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mIsChinaP2p:Z

    return-void
.end method

.method private buildQrBmp()V
    .locals 3

    .line 122
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;-><init>(Landroid/content/Context;)V

    .line 123
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->getQrCodeString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->createQrcodeImage(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mQrBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method private getQrCodeUri()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mQrBmp:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->addWhiteBorder(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "WifiQuickSharePreferenceController"

    const-string v0, "shareQrCode failed for cache dir is null"

    .line 160
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 163
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 164
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 166
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v4, "wifi_qrcode.png"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 167
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-exception v0

    .line 170
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "com.android.settings.files"

    invoke-static {v0, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 174
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.sharelive"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v0, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v1
.end method

.method private isChinaP2p()Z
    .locals 3

    const/4 v0, 0x0

    .line 212
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.app.sharelive"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 214
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v1, "com.samsung.android.app.sharelive.supportChinaP2p"

    .line 215
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "WifiQuickSharePreferenceController"

    const-string v1, "PackageManager could not find QuickShare to get meta data in ChinaP2p"

    .line 217
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private isQuickShareEnabled()Z
    .locals 3

    const-string v0, "WifiQuickSharePreferenceController"

    .line 200
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.app.sharelive"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareLive enabled? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "PackageManager could not find QuickShare to get activity"

    .line 205
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isSupportQuickShare()Z
    .locals 4

    const-string v0, "wifiQR"

    const-string v1, "WifiQuickSharePreferenceController"

    .line 185
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.samsung.android.app.sharelive"

    const/16 v3, 0x80

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 187
    new-instance v2, Lorg/json/JSONObject;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.samsung.android.app.sharelive.extend"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 189
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 192
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p0, "Not support QUICK_SHARE_WIFI_QR"

    .line 194
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isValidSsid(Ljava/lang/String;)Z
    .locals 1

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "<unknown ssid>"

    .line 147
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private shareProfileViaQuickShare(Ljava/lang/String;)V
    .locals 3

    const-string v0, "WifiQuickSharePreferenceController"

    const-string v1, "shareProfileViaQuickShare active"

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mQrBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->isValidSsid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->getQrCodeUri()Ljava/util/ArrayList;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 136
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.sharelive.action.QR_SHARE_WIFI_CONNECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10008000

    .line 137
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "ssid"

    .line 138
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.STREAM"

    .line 139
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 140
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Fail to share - cannot get QR"

    .line 130
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mIsChinaP2p:Z

    if-eqz v1, :cond_0

    .line 90
    sget v1, Lcom/android/settings/R$string;->quickshare_title_china:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 93
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "quick_share"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mIsQuickShareAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mInSetupWizardFinished:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDestroy()V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mQrBmp:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->buildQrBmp()V

    .line 117
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;->shareProfileViaQuickShare(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
