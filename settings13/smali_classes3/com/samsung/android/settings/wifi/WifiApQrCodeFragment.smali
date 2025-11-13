.class public Lcom/samsung/android/settings/wifi/WifiApQrCodeFragment;
.super Lcom/samsung/android/settings/wifi/QrCodeFragment;
.source "WifiApQrCodeFragment.java"


# instance fields
.field private mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiApQrCodeFragment"

    return-object p0
.end method

.method protected getQrCodeString()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApQrCodeFragment;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsid:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQrCodeGenerator:Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiApQrCodeFragment;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->getQrCodeString(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method protected initValuesFromIntent(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "key_config"

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SoftApConfiguration;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApQrCodeFragment;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mActivity:Landroid/app/Activity;

    sget p3, Lcom/android/settings/R$string;->wifi_ap_qr_code_sharing_title:I

    invoke-virtual {p2, p3}, Landroid/app/Activity;->setTitle(I)V

    .line 36
    sget p2, Lcom/android/settings/R$layout;->sec_wifi_qr_code:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mView:Landroid/view/View;

    return-object p1
.end method

.method protected updateView()V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->setupQrImageView()V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->setupSsidView()V

    return-void
.end method
