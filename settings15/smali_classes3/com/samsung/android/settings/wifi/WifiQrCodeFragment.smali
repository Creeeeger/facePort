.class public Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;
.super Lcom/samsung/android/settings/wifi/QrCodeFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiQrCodeFragment"

    return-object p0
.end method

.method public final getQrCodeString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_1
    const-string v0, "WifiQrCodeFragment"

    const-string v1, "PrivilegedConfiguredNetwork is not exist "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsid:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQrCodeGenerator:Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->getQrCodeString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public final initValuesFromIntent(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "key_config"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v0, "key_setup_wizard"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mIsSetupWizard:Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const p3, 0x7f14363a

    invoke-virtual {p2, p3}, Landroid/app/Activity;->setTitle(I)V

    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mIsSetupWizard:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const p2, 0x7f0d0a92

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mView:Landroid/view/View;

    goto :goto_0

    :cond_0
    const p2, 0x7f0d0a91

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mView:Landroid/view/View;

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method public final updateView()V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->setupQrImageView()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsidView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsid:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x7f143639

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v0, "com.samsung.android.app.sharelive"

    const-string v1, "WifiQrCodeFragment"

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mIsSetupWizard:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQuickShareButton:Landroid/widget/Button;

    if-eqz v2, :cond_7

    const-string/jumbo v2, "wifiQR"

    const/16 v3, 0x80

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.samsung.android.app.sharelive.extend"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    const-string v2, "Not support QUICK_SHARE_WIFI_QR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    :goto_3
    const-string v5, "ShareLive enabled? "

    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    sget-boolean v7, Lcom/samsung/android/settings/wifi/QrCodeFragment;->DBG:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v5

    goto :goto_5

    :cond_3
    :goto_4
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :goto_5
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v5, v4

    :goto_6
    if-eqz v2, :cond_6

    if-eqz v5, :cond_6

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    const-string v2, "com.samsung.android.app.sharelive.supportChinaP2p"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_7

    :catch_3
    const-string v0, "PackageManager could not find QuickShare"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v4

    :goto_7
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQuickShareButton:Landroid/widget/Button;

    const v1, 0x7f141dea

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQuickShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQuickShareButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/WifiQrCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    :cond_6
    const-string p0, "Not support QS - Supported/Enabled: "

    const-string v0, "/"

    invoke-static {p0, v2, v0, v5, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    :cond_7
    :goto_8
    return-void
.end method
