.class public final Lcom/android/settings/vpn2/ConfigDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final VPN_TYPES:Ljava/util/List;


# instance fields
.field public final caCertificate:[Ljava/lang/String;

.field public final hmMaxLenId:Ljava/util/HashMap;

.field public mAlwaysOnInvalidReason:Landroid/widget/TextView;

.field public mAlwaysOnVpn:Landroid/widget/CheckBox;

.field public mDnsServers:Landroid/widget/TextView;

.field public mEditing:Z

.field public mEnablePFS:Landroid/widget/CheckBox;

.field public final mExists:Z

.field public mIpsecCaCert:Landroid/widget/Spinner;

.field public mIpsecIdentifier:Landroid/widget/TextView;

.field public mIpsecRemoteIdentifier:Landroid/widget/TextView;

.field public mIpsecSecret:Landroid/widget/TextView;

.field public mIpsecSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public mIpsecServerCert:Landroid/widget/Spinner;

.field public mIpsecUserCert:Landroid/widget/Spinner;

.field public mIsUserSetAlwaysOnAllowed:Z

.field public final mListener:Landroid/content/DialogInterface$OnClickListener;

.field public mName:Landroid/widget/TextView;

.field public mOcspServerUrl:Landroid/widget/TextView;

.field public mPassword:Landroid/widget/TextView;

.field public mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final mProfile:Lcom/android/internal/net/VpnProfile;

.field public mProxyHost:Landroid/widget/TextView;

.field public mProxyPort:Landroid/widget/TextView;

.field public mProxySettings:Landroid/widget/Spinner;

.field public mRoutes:Landroid/widget/TextView;

.field public mSaveLogin:Landroid/widget/CheckBox;

.field public mSearchDomains:Landroid/widget/TextView;

.field public mServer:Landroid/widget/TextView;

.field public mShowOptions:Landroid/widget/CheckBox;

.field public mType:Landroid/widget/Spinner;

.field public mUsername:Landroid/widget/TextView;

.field public mView:Landroid/view/View;

.field public final userCertificate:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn2/ConfigDialog;->VPN_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iput-boolean p4, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    iput-boolean p5, p0, Lcom/android/settings/vpn2/ConfigDialog;->mExists:Z

    iput-object p6, p0, Lcom/android/settings/vpn2/ConfigDialog;->userCertificate:[Ljava/lang/String;

    iput-object p7, p0, Lcom/android/settings/vpn2/ConfigDialog;->caCertificate:[Ljava/lang/String;

    return-void
.end method

.method public static getFriendlyNameForPlugin(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, " [Knox]"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTextInputParent(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/android/settings/vpn2/ConfigDialog;->getTextInputParent(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isUcmEnabled$1()Z
    .locals 3

    const-string v0, "security.ucmcrypto"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "persist.security.ucmcrypto"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static validateAddresses(Ljava/lang/String;Z)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_4

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v5, 0x2

    const/16 v6, 0x20

    if-eqz p1, :cond_1

    const-string v7, "/"

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    aget-object v7, v4, v0

    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object v9, v7

    move v7, v4

    move-object v4, v9

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    const/4 v8, 0x3

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v8

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v5

    aget-byte v5, v4, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v3, v5

    array-length v4, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    if-ltz v7, :cond_3

    if-gt v7, v6, :cond_3

    if-ge v7, v6, :cond_2

    shl-int/2addr v3, v7

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return v0

    :cond_4
    return v3

    :catch_0
    return v0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->updateUiControls()V

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->showPasswordToggleIcon()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final changeType(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0821

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a0827

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v4, 0x7f0a0820

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f0a0af6

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v6, 0x7f0a0af7

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v7, 0x7f0a05b5

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v8, 0x7f0a10df

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v8, 0x7

    const/4 v9, 0x0

    if-eq p1, v8, :cond_0

    if-eq p1, v2, :cond_0

    const/16 v8, 0x9

    if-eq p1, v8, :cond_0

    move v2, v9

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0a41

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const-string v0, "ATT"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v0, 0x7f0a0ac4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :goto_0
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->configureAdvancedOptionsVisibility()V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final configureAdvancedOptionsVisibility()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const v1, 0x7f0a0af5

    const v2, 0x7f0a05b5

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyHost:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyPort:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 7

    new-instance v0, Lcom/android/internal/net/VpnProfile;

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    sget-object v2, Lcom/android/settings/vpn2/ConfigDialog;->VPN_TYPES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxySettings:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyHost:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyPort:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "ConfigDialog"

    const-string v6, "Could not parse proxy port integer "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v4, v2

    :goto_1
    invoke-static {v1, v4}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    :goto_2
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/vpn2/ConfigDialog;->isUcmEnabled$1()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->userCertificate:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    sub-int/2addr v4, v3

    aget-object v1, v1, v4

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mOcspServerUrl:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEnablePFS:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecRemoteIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecRemoteIdentifier:Ljava/lang/String;

    goto :goto_4

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEnablePFS:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    goto :goto_6

    :goto_4
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/settings/vpn2/ConfigDialog;->isUcmEnabled$1()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->caCertificate:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    sub-int/2addr v4, v3

    aget-object v1, v1, v4

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/settings/vpn2/ConfigDialog;->isUcmEnabled$1()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->caCertificate:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    sub-int/2addr v4, v3

    aget-object v1, v1, v4

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    :cond_8
    :goto_6
    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_7

    :cond_9
    move v1, v2

    goto :goto_8

    :cond_a
    :goto_7
    move v1, v3

    :goto_8
    iget-object v4, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_b

    iget-boolean p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    if-eqz p0, :cond_c

    if-eqz v1, :cond_c

    :cond_b
    move v2, v3

    :cond_c
    iput-boolean v2, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;ILjava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f143726

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 p3, 0x1

    const-string v1, "ucmkeychain://"

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v3, p3

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v0, p3

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/vpn2/ConfigDialog;->isUcmEnabled$1()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v0, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/settings/vpn2/ConfigDialog;->getFriendlyNameForPlugin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    :goto_2
    move v0, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v0, 0x1

    aput-object v2, v3, v0

    goto :goto_2

    :cond_3
    :goto_3
    new-array v3, p3, [Ljava/lang/String;

    aput-object v0, v3, v2

    :cond_4
    new-instance p2, Landroid/widget/ArrayAdapter;

    const v0, 0x1090008

    invoke-direct {p2, p0, v0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p0, 0x1090009

    invoke-virtual {p2, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-static {}, Lcom/android/settings/vpn2/ConfigDialog;->isUcmEnabled$1()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/android/settings/vpn2/ConfigDialog;->getFriendlyNameForPlugin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_5
    :goto_4
    array-length p0, v3

    if-ge p3, p0, :cond_7

    aget-object p0, v3, p3

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_5

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->updateUiControls()V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->configureAdvancedOptionsVisibility()V

    :cond_0
    instance-of v0, p1, Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/settings/vpn2/ConfigDialog;->getTextInputParent(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v3, p1, Lcom/google/android/material/internal/CheckableImageButton;->checked:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1436ab

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v3, 0x7f143577

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d09ee

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setView$1(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v4, 0x7f0a0a1a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f0a10a4

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f0a0db4

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v6, 0x7f0a10dd

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v7, 0x7f0a07ff

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v7, 0x7f0a0b24

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v8, 0x7f0a1133

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProxySettings:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v8, 0x7f0a112f

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyHost:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a1131

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyPort:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v10, 0x7f0a081e

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v11, 0x7f0a0822

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecRemoteIdentifier:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v12, 0x7f0a07fe

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v12, 0x7f0a0824

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v13, 0x7f0a0828

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v13, 0x7f0a081d

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v13, 0x7f0a0826

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v13, 0x7f0a0ceb

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v13, 0x7f0a0e45

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v13, 0x7f0a00df

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v13, 0x7f0a00de

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v13, 0x7f0a0d30

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a0556

    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v15, 0x7f0a0cd2

    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a0ac5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mOcspServerUrl:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v7, 0x7f0a05b5

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mEnablePFS:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v2

    const/16 v7, 0x40

    const/4 v6, 0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    new-array v14, v6, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v14, v15

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    new-array v6, v15, [Landroid/text/InputFilter;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v6, 0x7f0a0a1c

    filled-new-array {v7, v6}, [I

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0a0db5

    const/16 v6, 0x100

    filled-new-array {v6, v5}, [I

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0a081f

    filled-new-array {v6, v5}, [I

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0a0823

    filled-new-array {v6, v5}, [I

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0a0825

    filled-new-array {v6, v5}, [I

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0a1130

    filled-new-array {v6, v5}, [I

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    const v8, 0x7f0a1132

    filled-new-array {v5, v8}, [I

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0a0ac6

    filled-new-array {v7, v4}, [I

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0a0d31

    filled-new-array {v6, v4}, [I

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    const v3, 0x7f0a0556

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0a0557

    filled-new-array {v6, v4}, [I

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    const v3, 0x7f0a0cd2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0a0cd3

    filled-new-array {v6, v4}, [I

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    const v3, 0x7f0a10dd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0a10de

    filled-new-array {v7, v4}, [I

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    const v3, 0x7f0a0b24

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0a0b28

    filled-new-array {v6, v4}, [I

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "false"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v4, "isUserSetAlwaysOnAllowed"

    invoke-static {v1, v3, v4, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v15

    :goto_1
    iput-boolean v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIsUserSetAlwaysOnAllowed:Z

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    invoke-static {v2}, Lcom/android/internal/net/VpnProfile;->decrypt(Lcom/android/internal/net/VpnProfile;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0301c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    sget-object v5, Lcom/android/settings/vpn2/ConfigDialog;->VPN_TYPES:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "ConfigDialog"

    if-eq v4, v6, :cond_2

    const-string v4, "VPN_TYPES array length does not match string array"

    invoke-static {v7, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v6, "android.software.ipsec_tunnels"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "FEATURE_IPSEC_TUNNELS missing from system"

    invoke-static {v7, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v4, v0, Lcom/android/settings/vpn2/ConfigDialog;->mExists:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    const/4 v6, 0x6

    iput v6, v4, Lcom/android/internal/net/VpnProfile;->type:I

    :cond_4
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x1090008

    invoke-direct {v4, v6, v8, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v3, 0x1090009

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v3, v3, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    const-string v3, "Invalid existing profile type"

    invoke-static {v7, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v15

    :cond_5
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mEnablePFS:Landroid/widget/CheckBox;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v3, v3, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mOcspServerUrl:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v3, v2, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    if-eqz v2, :cond_8

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyHost:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyPort:Landroid/widget/TextView;

    if-nez v2, :cond_7

    const-string v2, ""

    goto :goto_2

    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecRemoteIdentifier:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->ipsecRemoteIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;-><init>(Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/settings/vpn2/ConfigDialog;->isUcmEnabled$1()Z

    move-result v3

    const v5, 0x7f143214

    const v6, 0x7f143212

    if-eqz v3, :cond_9

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->userCertificate:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v7, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v7, v7, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v15, v7}, Lcom/android/settings/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;ILjava/lang/String;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->caCertificate:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v7, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v7, v7, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/android/settings/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;ILjava/lang/String;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->caCertificate:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v6, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/android/settings/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;ILjava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    iget-object v7, v2, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->mKeyCertAliases:Ljava/util/Collection;

    iget-object v8, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v0, v3, v7, v15, v8}, Lcom/android/settings/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;ILjava/lang/String;)V

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    iget-object v7, v2, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->mCaCertAliases:Ljava/util/Collection;

    iget-object v8, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v0, v3, v7, v6, v8}, Lcom/android/settings/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;ILjava/lang/String;)V

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    iget-object v2, v2, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->mCaCertAliases:Ljava/util/Collection;

    iget-object v6, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v5, v6}, Lcom/android/settings/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;ILjava/lang/String;)V

    :goto_3
    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v3, v3, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-boolean v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIsUserSetAlwaysOnAllowed:Z

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v2, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v2, v15}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_4

    :cond_a
    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_4
    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    const v3, 0x10301b1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    const-string v2, "persist.radio.imsregrequired"

    invoke-static {v2, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_b
    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProxySettings:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyHost:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyPort:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecRemoteIdentifier:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mOcspServerUrl:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v5, v0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v5, v0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-boolean v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    if-nez v2, :cond_d

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/vpn2/ConfigDialog;->validate(Z)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_5

    :cond_c
    move v6, v15

    goto :goto_6

    :cond_d
    const/4 v2, 0x1

    :goto_5
    move v6, v2

    :goto_6
    iput-boolean v6, v0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    if-eqz v6, :cond_f

    const v2, 0x7f1431fd

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f0a0595

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v0, v2}, Lcom/android/settings/vpn2/ConfigDialog;->changeType(I)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn2/ConfigDialog;->configureAdvancedOptionsVisibility()V

    iget-boolean v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mExists:Z

    if-eqz v2, :cond_e

    const v2, 0x7f1431f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, -0x3

    invoke-virtual {v0, v5, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_e
    const v2, 0x7f143228

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_8

    :cond_f
    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v5, 0x7f1431f4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    iget-object v5, v0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v6, 0x7f0a10df

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x7

    if-eq v2, v6, :cond_10

    if-eq v2, v3, :cond_10

    const/16 v6, 0x9

    if-eq v2, v6, :cond_10

    goto :goto_7

    :cond_10
    move v15, v3

    :goto_7
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f1431f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_8
    const v2, 0x7f1431f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn2/ConfigDialog;->showPasswordToggleIcon()V

    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/vpn2/ConfigDialog;->updateUiControls()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/android/settings/vpn2/ConfigDialog;->VPN_TYPES:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/ConfigDialog;->changeType(I)V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxySettings:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const p3, 0x7f0a112e

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->updateUiControls()V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->configureAdvancedOptionsVisibility()V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    iget-object p4, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [I

    const/4 v0, 0x0

    aget p4, p4, v0

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-le p2, p4, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f060753

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_1
    if-ne p2, p4, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f060110

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final showPasswordToggleIcon()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f1436ab

    const v2, 0x7f080e19

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isPasswordVisibilityToggleEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    iget-object v4, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v4, v0}, Lcom/google/android/material/textfield/IconHelper;->setIconClickable(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isPasswordVisibilityToggleEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    iget-object v2, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2, v0}, Lcom/google/android/material/textfield/IconHelper;->setIconClickable(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final updateUiControls()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    const v4, 0x7f1431eb

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxySettings:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a112e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/ConfigDialog;->validate(Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final validate(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    sget-object v2, Lcom/android/settings/vpn2/ConfigDialog;->VPN_TYPES:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    const/4 p1, 0x7

    if-eq v0, p1, :cond_2

    const/16 p1, 0x8

    if-eq v0, p1, :cond_2

    const/16 p1, 0x9

    if-eq v0, p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/settings/vpn2/ConfigDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/android/settings/vpn2/ConfigDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    return v1

    :cond_5
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxySettings:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-ne p1, v2, :cond_7

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyHost:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyPort:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {p1, v3, v4}, Lcom/android/net/module/util/ProxyUtils;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mOcspServerUrl:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    return v1

    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    if-eqz p0, :cond_9

    move v1, v2

    :cond_9
    return v1

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eqz p0, :cond_a

    move v1, v2

    :cond_a
    return v1

    :pswitch_2
    return v2

    :cond_b
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
