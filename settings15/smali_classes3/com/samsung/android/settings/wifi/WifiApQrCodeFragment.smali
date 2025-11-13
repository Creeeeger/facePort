.class public Lcom/samsung/android/settings/wifi/WifiApQrCodeFragment;
.super Lcom/samsung/android/settings/wifi/QrCodeFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiApQrCodeFragment"

    return-object p0
.end method

.method public final getQrCodeString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApQrCodeFragment;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    const-string v1, ""

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsid:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQrCodeGenerator:Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiApQrCodeFragment;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v2, 0x1

    const-string v3, "WPA"

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const-string v3, "nopass"

    goto :goto_0

    :cond_1
    const-string v3, "SAE"

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WIFI:S:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->escapeSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";T:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v3, v1

    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";P:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->escapeSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";H:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ";;"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_5
    return-object v1
.end method

.method public final initValuesFromIntent(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "key_config"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SoftApConfiguration;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApQrCodeFragment;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const p3, 0x7f1433d7

    invoke-virtual {p2, p3}, Landroid/app/Activity;->setTitle(I)V

    const p2, 0x7f0d0a91

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mView:Landroid/view/View;

    const p2, 0x7f0a00fb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method public final updateView()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->setupQrImageView()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsidView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
