.class public Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;
.super Lcom/samsung/android/settings/wifi/QrCodeFragment;
.source "WifiQrCodeFragment.java"


# instance fields
.field private mIsChinaModel:Z

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public static synthetic $r8$lambda$PpvQVrxXpJy_ZiKYWXGm_mAenQc(Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->lambda$setupQuickShareButton$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pBp5S3kz4XXo2s-cOeWyeIOl-cA(Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->lambda$setupNearbyShareButton$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;-><init>()V

    return-void
.end method

.method private getNearbySharingIntent()Landroid/content/Intent;
    .locals 2

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nearby_sharing_component"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x1040320

    .line 275
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v0, "com.google.android.gms/com.google.android.gms.nearby.sharing.ShareSheetActivity"

    .line 280
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nearbyComponent: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WifiQrCodeFragment"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.action.SEND"

    .line 283
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private getPrivilegedConfiguredNetworks(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 174
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 176
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 177
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const-string p0, "WifiQrCodeFragment"

    const-string p1, "PrivilegedConfiguredNetwork is not exist "

    .line 181
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getWifiCredentialBundle(Landroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;
    .locals 2

    .line 263
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 264
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.SSID"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.PASSWORD"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->getSecurityString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.SECURITY_TYPE"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-boolean p1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const-string v0, "android.intent.extra.HIDDEN_SSID"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method private isChinaP2p()Z
    .locals 3

    const/4 v0, 0x0

    .line 306
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.app.sharelive"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 308
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v1, "com.samsung.android.app.sharelive.supportChinaP2p"

    .line 309
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "WifiQrCodeFragment"

    const-string v1, "PackageManager could not find QuickShare"

    .line 312
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private isQuickShareEnabled()Z
    .locals 3

    .line 227
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.app.sharelive"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 229
    sget-boolean v0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiQrCodeFragment"

    .line 230
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

    .line 232
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 234
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private isSupportQuickShare()Z
    .locals 4

    const-string v0, "wifiQR"

    const-string v1, "WifiQrCodeFragment"

    .line 289
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.samsung.android.app.sharelive"

    const/16 v3, 0x80

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 291
    new-instance v2, Lorg/json/JSONObject;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.samsung.android.app.sharelive.extend"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 293
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 298
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 296
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string p0, "Not support QUICK_SHARE_WIFI_QR"

    .line 300
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setupNearbyShareButton$0(Landroid/view/View;)V
    .locals 1

    const-string p1, "WIFI_280"

    const-string v0, "1362"

    .line 144
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->shareProfileViaNearbySharing()V

    return-void
.end method

.method private synthetic lambda$setupQuickShareButton$1(Landroid/view/View;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->shareProfileViaQuickShare()V

    return-void
.end method

.method private setupNearbyShareButton()V
    .locals 2

    .line 139
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mIsSetupWizard:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->mIsChinaModel:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mNearbyShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->getNearbySharingIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mNearbyShareButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mNearbyShareButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mNearbyShareButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    const-string p0, "WifiQrCodeFragment"

    const-string v0, "Cannot start Nearby Share on this device"

    .line 150
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setupQuickShareButton()V
    .locals 3

    .line 156
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mIsSetupWizard:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQuickShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->isSupportQuickShare()Z

    move-result v0

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->isQuickShareEnabled()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->isChinaP2p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQuickShareButton:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->quickshare_title_china:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQuickShareButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQuickShareButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 168
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support QS - Supported/Enabled: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiQrCodeFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private setupSummary()V
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->wifi_qr_code_sharing_summary:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private shareProfileViaNearbySharing()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->getPrivilegedConfiguredNetworks(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "WifiQrCodeFragment"

    const-string v0, "Fail to share - cannot get configuration"

    .line 245
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 249
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->getNearbySharingIntent()Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 250
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v2, 0x8000

    .line 251
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.WIFI_CREDENTIALS_BUNDLE"

    .line 252
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->getWifiCredentialBundle(Landroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 258
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 255
    :catch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_could_not_start_service:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private shareProfileViaQuickShare()V
    .locals 6

    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQrBmp:Landroid/graphics/Bitmap;

    const-string v1, "WifiQrCodeFragment"

    if-nez v0, :cond_0

    const-string p0, "Fail to share - cannot get QR"

    .line 187
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 190
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->addWhiteBorder(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "shareQrCode failed for cache dir is null"

    .line 195
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 199
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 201
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v4, "wifi_qrcode.png"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 202
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-exception v0

    .line 205
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 208
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings.files"

    invoke-static {v0, v3, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 209
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.app.sharelive"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.sharelive.action.QR_SHARE_WIFI_CONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 219
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsid:Ljava/lang/String;

    const-string v3, "ssid"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string v1, "android.intent.extra.STREAM"

    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiQrCodeFragment"

    return-object p0
.end method

.method protected getQrCodeString()Ljava/lang/String;
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 320
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->getPrivilegedConfiguredNetworks(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsid:Ljava/lang/String;

    .line 323
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQrCodeGenerator:Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->getQrCodeString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method protected initValuesFromIntent(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "key_config"

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v0, "key_setup_wizard"

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mIsSetupWizard:Z

    .line 108
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->mIsChinaModel:Z

    return-void
.end method

.method public isOnWifi()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 113
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mActivity:Landroid/app/Activity;

    sget p3, Lcom/android/settings/R$string;->wifi_qr_code_sharing_title:I

    invoke-virtual {p2, p3}, Landroid/app/Activity;->setTitle(I)V

    .line 114
    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mIsSetupWizard:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 115
    sget p2, Lcom/android/settings/R$layout;->sec_wifi_qr_code_setupwizard:I

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mView:Landroid/view/View;

    goto :goto_0

    .line 117
    :cond_0
    sget p2, Lcom/android/settings/R$layout;->sec_wifi_qr_code:I

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mView:Landroid/view/View;

    .line 119
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method protected updateView()V
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->setupQrImageView()V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->setupSsidView()V

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->setupSummary()V

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->setupNearbyShareButton()V

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->setupQuickShareButton()V

    return-void
.end method
