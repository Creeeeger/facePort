.class public Lcom/android/settings/wifi/WifiConfigController2;
.super Ljava/lang/Object;
.source "WifiConfigController2.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field static final UNDESIRED_CERTIFICATES:[Ljava/lang/String;


# instance fields
.field protected REQUEST_INSTALL_CERTS:I

.field private final mActiveSubscriptionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

.field private mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mDoNotProvideEapUserCertString:Ljava/lang/String;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapDomainView:Landroid/widget/TextView;

.field private mEapIdentityView:Landroid/widget/TextView;

.field mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapOcspSpinner:Landroid/widget/Spinner;

.field mEapSimSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mGatewayView:Landroid/widget/TextView;

.field private mHiddenSettingsSpinner:Landroid/widget/Spinner;

.field private mHiddenWarningView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field mInstallCertsString:Ljava/lang/String;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mIsTrustOnFirstUseSupported:Z

.field private mLastShownEapMethod:I

.field private mLevels:[Ljava/lang/String;

.field private mMeteredSettingsSpinner:Landroid/widget/Spinner;

.field private mMode:I

.field private mMultipleCertSetString:Ljava/lang/String;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivacySettingsSpinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field mSecurityInPosition:[Ljava/lang/Integer;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSharedCheckBox:Landroid/widget/CheckBox;

.field private mSsidScanButton:Landroid/widget/ImageButton;

.field private mSsidView:Landroid/widget/TextView;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private mTrustOnFirstUse:Ljava/lang/String;

.field private mUnspecifiedCertString:Ljava/lang/String;

.field private mUseSystemCertsString:Ljava/lang/String;

.field private final mView:Landroid/view/View;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field mWifiEntrySecurity:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$uEC2jTFyxB3AdI2XTn1fJ6YBGFA(Lcom/android/settings/wifi/WifiConfigController2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->lambda$afterTextChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$u_cFuM1nkHDDvy8OJHr9Ws9EKOc(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigController2;->lambda$loadCertificates$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfigUi(Lcom/android/settings/wifi/WifiConfigController2;)Lcom/android/settings/wifi/WifiConfigUiBase2;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/wifi/WifiConfigController2;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDns1View(Lcom/android/settings/wifi/WifiConfigController2;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns1View:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGatewayView(Lcom/android/settings/wifi/WifiConfigController2;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkPrefixLengthView(Lcom/android/settings/wifi/WifiConfigController2;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MacRandSecret"

    const-string v1, "MacRandSapSecret"

    .line 144
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController2;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase2;Landroid/view/View;Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 156
    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->REQUEST_INSTALL_CERTS:I

    .line 208
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 209
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 211
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    .line 229
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    .line 230
    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    .line 231
    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 232
    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "wifi"

    .line 235
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 236
    invoke-direct {p0, p3, p4}, Lcom/android/settings/wifi/WifiConfigController2;->initWifiConfigController2(Lcom/android/wifitrackerlib/WifiEntry;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase2;Landroid/view/View;Lcom/android/wifitrackerlib/WifiEntry;ILandroid/net/wifi/WifiManager;)V
    .locals 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 156
    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->REQUEST_INSTALL_CERTS:I

    .line 208
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 209
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 211
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    .line 242
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    .line 244
    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    .line 245
    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 246
    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    .line 247
    iput-object p5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 248
    invoke-direct {p0, p3, p4}, Lcom/android/settings/wifi/WifiConfigController2;->initWifiConfigController2(Lcom/android/wifitrackerlib/WifiEntry;I)V

    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 2

    .line 443
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/settings/R$layout;->wifi_dialog_row:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 444
    sget v0, Lcom/android/settings/R$id;->name:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 445
    sget p2, Lcom/android/settings/R$id;->value:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private configureSecuritySpinner()V
    .locals 7

    .line 1751
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    sget v1, Lcom/android/settings/R$string;->wifi_add_network:I

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setTitle(I)V

    .line 1753
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ssid:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidView:Landroid/widget/TextView;

    .line 1754
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1755
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->security:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 1756
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1758
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v2, 0x1090008

    const v3, 0x1020014

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    const v1, 0x1090009

    .line 1760
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1761
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1765
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_security_none:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1766
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1767
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 1768
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_security_owe:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1769
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 1771
    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->wifi_security_wep:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1772
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    .line 1773
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_security_wpa_wpa2:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1774
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v4, v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1775
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_1

    .line 1776
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_security_sae:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1777
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    .line 1778
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_security_eap_wpa_wpa2:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1779
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v4, v5, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    .line 1780
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_security_eap_wpa3:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1781
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v3, v4, 0x1

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_1

    .line 1783
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_security_eap:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1784
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v5, v4, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    move v3, v5

    .line 1786
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1787
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_security_eap_suiteb:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1788
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1791
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1793
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1795
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showIpConfigFields()V

    .line 1796
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showProxyFields()V

    .line 1797
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->wifi_advanced_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1799
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->hidden_settings_field:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1800
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->wifi_advanced_togglebox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1801
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1803
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAdvancedOptionAccessibilityString()V

    return-void
.end method

.method private createAccessibleEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Landroid/text/SpannableString;
    .locals 3

    .line 1882
    array-length p0, p1

    new-array p0, p0, [Landroid/text/SpannableString;

    const/4 v0, 0x0

    .line 1883
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1884
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    .line 1885
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1884
    invoke-static {v1, v2}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 0

    .line 873
    :try_start_0
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getIpConfigFieldsTextWatcher(Landroid/widget/TextView;)Landroid/text/TextWatcher;
    .locals 1

    .line 1604
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController2$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/WifiConfigController2$2;-><init>(Lcom/android/settings/wifi/WifiConfigController2;Landroid/widget/TextView;)V

    return-object v0
.end method

.method private getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1836
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    .line 1837
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 1836
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object p0

    return-object p0
.end method

.method private getSpinnerAdapterWithEapMethodsTts(I)Landroid/widget/ArrayAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1856
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1857
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 1859
    sget v1, Lcom/android/settings/R$array;->wifi_eap_method_target_strings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1861
    sget v2, Lcom/android/settings/R$array;->wifi_eap_method_tts_strings:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1865
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/wifi/WifiConfigController2;->findAndReplaceTargetStrings([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1869
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiConfigController2;->createAccessibleEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Landroid/text/SpannableString;

    move-result-object p1

    .line 1873
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p0, 0x1090009

    .line 1875
    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-object v0
.end method

.method private hideSoftKeyboard(Landroid/os/IBinder;)V
    .locals 1

    .line 1891
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    .line 1893
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initWifiConfigController2(Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    .line 255
    iput p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMode:I

    .line 256
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isTrustOnFirstUseSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIsTrustOnFirstUseSupported:Z

    .line 258
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 260
    sget p2, Lcom/android/settings/R$array;->wifi_signal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mLevels:[Ljava/lang/String;

    .line 261
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x111012b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 265
    :cond_1
    sget p2, Lcom/android/settings/R$array;->wifi_peap_phase2_entries_with_sim_auth:I

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapterWithEapMethodsTts(I)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    goto :goto_2

    .line 263
    :cond_2
    :goto_1
    sget p2, Lcom/android/settings/R$array;->wifi_peap_phase2_entries:I

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    .line 269
    :goto_2
    sget p2, Lcom/android/settings/R$array;->wifi_ttls_phase2_entries:I

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;

    .line 271
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_unspecified:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    .line 272
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_multiple_cert_added:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMultipleCertSetString:Ljava/lang/String;

    .line 273
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_use_system_certs:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    .line 274
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_trust_on_first_use:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mTrustOnFirstUse:Ljava/lang/String;

    .line 275
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_do_not_provide_eap_user_cert:I

    .line 276
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 277
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_install_credentials:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mInstallCertsString:Ljava/lang/String;

    .line 279
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ssid_scanner_button:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidScanButton:Landroid/widget/ImageButton;

    .line 280
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ip_settings:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 281
    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 282
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->proxy_settings:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 283
    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 284
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->shared:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSharedCheckBox:Landroid/widget/CheckBox;

    .line 285
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->metered_settings:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    .line 286
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->hidden_settings:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    .line 287
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->privacy_settings:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    .line 288
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isConnectedMacRandomizationSupported()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 289
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->privacy_settings_fields:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 290
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :cond_3
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 293
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->hidden_settings_warning:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenWarningView:Landroid/widget/TextView;

    .line 295
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v0

    .line 294
    :goto_3
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 p2, 0xa

    new-array p2, p2, [Ljava/lang/Integer;

    .line 298
    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    .line 300
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez p2, :cond_5

    .line 301
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->configureSecuritySpinner()V

    .line 302
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    sget v0, Lcom/android/settings/R$string;->wifi_save:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 304
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->info:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 309
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_b

    .line 310
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 311
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 312
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    iget-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 316
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 317
    invoke-static {v5}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->translateMacRandomizedValueToPrefValue(I)I

    move-result v5

    .line 318
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 320
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v5

    sget-object v6, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v5, v6, :cond_7

    .line 321
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 324
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v5

    .line 325
    invoke-virtual {v5}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 326
    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 327
    sget v6, Lcom/android/settings/R$string;->wifi_ip_address:I

    .line 328
    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 327
    invoke-direct {p0, p2, v6, v5}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_6
    move v5, v4

    goto :goto_4

    .line 331
    :cond_7
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setSelection(I)V

    move v5, v0

    .line 334
    :goto_4
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSharedCheckBox:Landroid/widget/CheckBox;

    iget-boolean v7, v1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 335
    iget-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v6, :cond_8

    move v5, v4

    .line 339
    :cond_8
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v6

    .line 340
    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v6, v7, :cond_9

    .line 341
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_5
    move v5, v4

    goto :goto_6

    .line 343
    :cond_9
    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v6, v7, :cond_a

    .line 344
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_5

    .line 347
    :cond_a
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 349
    :goto_6
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 350
    sget v6, Lcom/android/settings/R$string;->passpoint_label:I

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->passpoint_content:I

    .line 351
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object v1, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-direct {p0, p2, v6, v1}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_7

    :cond_b
    move v5, v0

    .line 356
    :cond_c
    :goto_7
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 357
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    if-eq v1, v3, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 358
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMode:I

    if-eqz v1, :cond_11

    .line 360
    :cond_e
    invoke-virtual {p0, v4, v4}, Lcom/android/settings/wifi/WifiConfigController2;->showSecurityFields(ZZ)V

    .line 361
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showIpConfigFields()V

    .line 362
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showProxyFields()V

    .line 363
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->wifi_advanced_togglebox:I

    .line 364
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-nez v5, :cond_f

    .line 367
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v7, Lcom/android/settings/R$id;->wifi_advanced_toggle:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 368
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 369
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 370
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAdvancedOptionAccessibilityString()V

    .line 372
    :cond_f
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->wifi_advanced_fields:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v5, :cond_10

    move v5, v0

    goto :goto_8

    :cond_10
    move v5, v2

    .line 373
    :goto_8
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 376
    :cond_11
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMode:I

    if-ne v1, v3, :cond_12

    .line 377
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    sget v0, Lcom/android/settings/R$string;->wifi_save:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_12
    if-ne v1, v4, :cond_13

    .line 379
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    sget v0, Lcom/android/settings/R$string;->wifi_connect:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 381
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->getSignalString()Ljava/lang/String;

    move-result-object v1

    .line 383
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v5

    if-nez v5, :cond_14

    if-eqz v1, :cond_14

    .line 385
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    sget v0, Lcom/android/settings/R$string;->wifi_connect:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_14
    if-eqz v1, :cond_15

    .line 388
    sget v5, Lcom/android/settings/R$string;->wifi_signal:I

    invoke-direct {p0, p2, v5, v1}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 391
    :cond_15
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 392
    iget v5, v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->linkSpeedMbps:I

    if-ltz v5, :cond_16

    .line 393
    sget v5, Lcom/android/settings/R$string;->wifi_speed:I

    sget v6, Lcom/android/settings/R$string;->link_speed:I

    .line 394
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->linkSpeedMbps:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v0

    .line 393
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v5, v4}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_16
    if-eqz v1, :cond_1a

    .line 397
    iget v1, v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->frequencyMhz:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1a

    const/4 v4, 0x0

    const/16 v5, 0x960

    if-lt v1, v5, :cond_17

    const/16 v5, 0x9c4

    if-ge v1, v5, :cond_17

    .line 403
    sget v1, Lcom/android/settings/R$string;->wifi_band_24ghz:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_17
    const/16 v5, 0x1324

    if-lt v1, v5, :cond_18

    const/16 v5, 0x170c

    if-ge v1, v5, :cond_18

    .line 406
    sget v1, Lcom/android/settings/R$string;->wifi_band_5ghz:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_18
    const/16 v5, 0x1725

    if-lt v1, v5, :cond_19

    const/16 v5, 0x1bd5

    if-ge v1, v5, :cond_19

    .line 409
    sget v1, Lcom/android/settings/R$string;->wifi_band_6ghz:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 411
    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected frequency "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "WifiConfigController2"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    if-eqz v4, :cond_1a

    .line 414
    sget v1, Lcom/android/settings/R$string;->wifi_frequency:I

    invoke-direct {p0, p2, v1, v4}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 418
    :cond_1a
    sget v1, Lcom/android/settings/R$string;->wifi_security:I

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 419
    invoke-virtual {v4, v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-direct {p0, p2, v1, v0}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 420
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->ip_fields:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 422
    :goto_a
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p2

    if-nez p2, :cond_1b

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 423
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p2

    if-eq p2, v3, :cond_1b

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 424
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 425
    :cond_1b
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    sget v0, Lcom/android/settings/R$string;->wifi_forget:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 429
    :cond_1c
    :goto_b
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidScanButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 431
    :goto_c
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSharedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 433
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    sget v0, Lcom/android/settings/R$string;->wifi_cancel:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 434
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getSubmitButton()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->enableSubmitIfAppropriate()V

    .line 439
    :cond_1d
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->l_wifidialog:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 6

    .line 821
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 823
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 824
    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 826
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 827
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 828
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 835
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v2, 0x0

    .line 836
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    if-ne v0, v1, :cond_3

    .line 837
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 838
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 839
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 840
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 841
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 845
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    :try_start_1
    invoke-static {v0, v2, v4}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v5, v3

    .line 848
    :catch_1
    sget v2, Lcom/android/settings/R$string;->proxy_error_invalid_port:I

    :goto_1
    if-nez v2, :cond_2

    const-string v2, ","

    .line 852
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 851
    invoke-static {v0, v5, v2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_2

    :cond_2
    return v3

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 856
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 857
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 858
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 859
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    .line 862
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_5

    return v3

    .line 866
    :cond_5
    invoke-static {v0}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    :cond_6
    :goto_2
    return v1
.end method

.method private synthetic lambda$afterTextChanged$1()V
    .locals 0

    .line 1583
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showWarningMessagesIfAppropriate()V

    .line 1584
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->enableSubmitIfAppropriate()V

    return-void
.end method

.method private static synthetic lambda$loadCertificates$0(Ljava/lang/String;)Z
    .locals 5

    .line 1536
    sget-object v0, Lcom/android/settings/wifi/WifiConfigController2;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1537
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private setAccessibilityDelegateForSecuritySpinners()V
    .locals 2

    .line 1166
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController2$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController2$1;-><init>(Lcom/android/settings/wifi/WifiConfigController2;)V

    .line 1178
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1179
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1180
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1181
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1182
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private setAdvancedOptionAccessibilityString()V
    .locals 2

    .line 1897
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->wifi_advanced_togglebox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1898
    new-instance v1, Lcom/android/settings/wifi/WifiConfigController2$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiConfigController2$3;-><init>(Lcom/android/settings/wifi/WifiConfigController2;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .line 1337
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_anonymous:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1338
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .line 1317
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_ca_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1318
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private setDomainInvisible()V
    .locals 2

    .line 1327
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_domain:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1328
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setIdentityInvisible()V
    .locals 1

    .line 1309
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_identity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setOcspInvisible()V
    .locals 2

    .line 1322
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_ocsp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1323
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setPasswordInvisible()V
    .locals 2

    .line 1342
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->password_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1344
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->show_password_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setPhase2Invisible()V
    .locals 1

    .line 1313
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_phase2:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1566
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p0

    check-cast p0, Landroid/widget/ArrayAdapter;

    .line 1567
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1568
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1569
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    .line 1332
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_user_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1333
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private setVisibility(II)V
    .locals 0

    .line 1458
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1460
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 5

    .line 1209
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_method:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1210
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->l_identity:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1211
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->l_domain:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1215
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->l_ca_cert:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1216
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_ocsp:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1217
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->password_layout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->show_password_layout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_sim:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1221
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    const/16 v0, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1264
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setPhase2Invisible()V

    .line 1265
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAnonymousIdentInvisible()V

    .line 1266
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setCaCertInvisible()V

    .line 1267
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setOcspInvisible()V

    .line 1268
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setDomainInvisible()V

    .line 1269
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setUserCertInvisible()V

    .line 1270
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setPasswordInvisible()V

    .line 1271
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 1224
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setPhase2Invisible()V

    .line 1225
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setCaCertInvisible()V

    .line 1226
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setOcspInvisible()V

    .line 1227
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setDomainInvisible()V

    .line 1228
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAnonymousIdentInvisible()V

    .line 1229
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setUserCertInvisible()V

    .line 1230
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1252
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;

    if-eq p1, v4, :cond_0

    .line 1253
    iput-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1254
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1256
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->l_phase2:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1257
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->l_anonymous:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1258
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setUserCertInvisible()V

    .line 1259
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1233
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->l_user_cert:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1234
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setPhase2Invisible()V

    .line 1235
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAnonymousIdentInvisible()V

    .line 1236
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setPasswordInvisible()V

    .line 1237
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1241
    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    if-eq p1, v3, :cond_1

    .line 1242
    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1243
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1245
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_phase2:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1246
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_anonymous:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1247
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showPeapFields()V

    .line 1248
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setUserCertInvisible()V

    .line 1275
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 1276
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1277
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIsTrustOnFirstUseSupported:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mTrustOnFirstUse:Ljava/lang/String;

    .line 1279
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1282
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setDomainInvisible()V

    .line 1286
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setOcspInvisible()V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 4

    .line 1354
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ip_fields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1356
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1360
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1361
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->staticip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1362
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAddressView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1363
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ipaddress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAddressView:Landroid/widget/TextView;

    .line 1364
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1365
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->gateway:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    .line 1366
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->getIpConfigFieldsTextWatcher(Landroid/widget/TextView;)Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1367
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->network_prefix_length:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1370
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->getIpConfigFieldsTextWatcher(Landroid/widget/TextView;)Landroid/text/TextWatcher;

    move-result-object v2

    .line 1369
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1371
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->dns1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns1View:Landroid/widget/TextView;

    .line 1372
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->getIpConfigFieldsTextWatcher(Landroid/widget/TextView;)Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1373
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->dns2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns2View:Landroid/widget/TextView;

    .line 1374
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v0, :cond_6

    .line 1377
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    .line 1378
    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1380
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1381
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAddressView:Landroid/widget/TextView;

    .line 1382
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1381
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1383
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1384
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    .line 1383
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1387
    :cond_2
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1388
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1391
    :cond_3
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1392
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1393
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1395
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1396
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1401
    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->staticip:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private showPeapFields()V
    .locals 4

    .line 1292
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_identity:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1301
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_anonymous:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1302
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->password_layout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1303
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->show_password_layout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1304
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_sim:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1295
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1296
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_identity:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1297
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setPasswordInvisible()V

    .line 1298
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_sim:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private showProxyFields()V
    .locals 5

    .line 1408
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->proxy_settings_fields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1410
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1414
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne v2, v3, :cond_2

    .line 1415
    sget v2, Lcom/android/settings/R$id;->proxy_warning_limited_support:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    .line 1416
    sget v2, Lcom/android/settings/R$id;->proxy_fields:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    .line 1417
    sget v1, Lcom/android/settings/R$id;->proxy_pac_field:I

    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    .line 1418
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyHostView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1419
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->proxy_hostname:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyHostView:Landroid/widget/TextView;

    .line 1420
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1421
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->proxy_port:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPortView:Landroid/widget/TextView;

    .line 1422
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1423
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->proxy_exclusionlist:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1424
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v0, :cond_5

    .line 1427
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1429
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1430
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1431
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1432
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1431
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1435
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1436
    sget v2, Lcom/android/settings/R$id;->proxy_warning_limited_support:I

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    .line 1437
    sget v2, Lcom/android/settings/R$id;->proxy_fields:I

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    .line 1438
    sget v2, Lcom/android/settings/R$id;->proxy_pac_field:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    .line 1440
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPacView:Landroid/widget/TextView;

    if-nez v1, :cond_3

    .line 1441
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->proxy_pac:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPacView:Landroid/widget/TextView;

    .line 1442
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    if-eqz v0, :cond_5

    .line 1445
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1447
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1451
    :cond_4
    sget v0, Lcom/android/settings/R$id;->proxy_warning_limited_support:I

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    .line 1452
    sget v0, Lcom/android/settings/R$id;->proxy_fields:I

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    .line 1453
    sget v0, Lcom/android/settings/R$id;->proxy_pac_field:I

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method private startActivityForInstallCerts()V
    .locals 4

    .line 1727
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.credentials.INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 1728
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1729
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.certinstaller"

    const-string v3, "com.android.certinstaller.CertInstallerMain"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "certificate_install_usage"

    const-string/jumbo v2, "wifi"

    .line 1730
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1732
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 6

    .line 880
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAddressView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 882
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 883
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I

    return p0

    .line 885
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 886
    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_6

    .line 891
    :cond_2
    new-instance v2, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v2}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 892
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v2

    .line 893
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDomains()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/StaticIpConfiguration$Builder;->setDomains(Ljava/lang/String;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v2

    .line 894
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v2

    .line 895
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object p1

    const/4 v2, -0x1

    .line 899
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 900
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    const/16 v3, 0x20

    if-le v2, v3, :cond_3

    goto :goto_0

    .line 904
    :cond_3
    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v0, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v3}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    goto :goto_2

    .line 902
    :cond_4
    :goto_0
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_network_prefix_length:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    :goto_1
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    return v0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 910
    :catch_0
    :try_start_1
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I

    goto :goto_1

    .line 907
    :catch_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {v4}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->wifi_network_prefix_length_hint:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 914
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_5

    .line 917
    :try_start_2
    invoke-static {v0, v2}, Lcom/android/net/module/util/NetUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 918
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 919
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput-byte v3, v0, v2

    .line 920
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 925
    :cond_5
    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiConfigController2;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_6

    .line 927
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_gateway:I

    goto :goto_1

    .line 929
    :cond_6
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 930
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_gateway:I

    goto :goto_1

    .line 932
    :cond_7
    invoke-virtual {p1, v0}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 935
    :catch_2
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 937
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 939
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 941
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns1View:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {v3}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->wifi_dns1_hint:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 943
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_9

    .line 945
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_dns:I

    goto/16 :goto_1

    .line 947
    :cond_9
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 951
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 952
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_a

    .line 954
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_dns:I

    goto/16 :goto_1

    .line 956
    :cond_a
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    :cond_b
    invoke-virtual {p1, v2}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 963
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    return v1

    :goto_5
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 964
    throw v0

    .line 887
    :cond_c
    :goto_6
    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I

    return p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1582
    new-instance p1, Lcom/android/settings/wifi/WifiConfigController2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WifiConfigController2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/WifiConfigController2;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->isSubmittable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method findAndReplaceTargetStrings([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 5

    .line 1818
    array-length p0, p2

    array-length v0, p3

    if-eq p0, v0, :cond_0

    return-object p1

    .line 1822
    :cond_0
    array-length p0, p1

    new-array p0, p0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    move v1, v0

    .line 1823
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 1824
    aget-object v2, p1, v1

    aput-object v2, p0, v1

    move v2, v0

    .line 1825
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 1826
    aget-object v3, p1, v1

    aget-object v4, p2, v2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1827
    aget-object v3, p3, v2

    aput-object v3, p0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method getAndroidKeystoreAliasLoader()Lcom/android/settings/utils/AndroidKeystoreAliasLoader;
    .locals 1

    .line 1466
    new-instance p0, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;-><init>(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 14

    .line 586
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 590
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 592
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const-string v3, "\""

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_2

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 595
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v5, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    .line 596
    :cond_2
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v2

    if-nez v2, :cond_3

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 599
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 600
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 603
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSharedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 605
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 v3, 0x6

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/16 v8, 0x22

    packed-switch v2, :pswitch_data_0

    return-object v1

    .line 785
    :pswitch_0
    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 786
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_23

    .line 787
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_8

    .line 793
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_8

    :pswitch_2
    const/4 v8, 0x7

    const/4 v9, 0x5

    const/4 v10, 0x3

    if-ne v2, v3, :cond_4

    .line 642
    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_2

    :cond_4
    if-ne v2, v8, :cond_5

    const/16 v2, 0x9

    .line 644
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_2

    .line 646
    :cond_5
    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 648
    :goto_2
    new-instance v2, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 649
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 650
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    .line 651
    iget-object v12, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    const-string v12, "Unknown phase2 method"

    const-string v13, "WifiConfigController2"

    if-eqz v2, :cond_b

    if-eq v2, v7, :cond_6

    goto/16 :goto_3

    :cond_6
    if-eqz v11, :cond_a

    if-eq v11, v5, :cond_9

    if-eq v11, v7, :cond_8

    if-eq v11, v10, :cond_7

    .line 694
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 691
    :cond_7
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 688
    :cond_8
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 685
    :cond_9
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 682
    :cond_a
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    :cond_b
    if-eqz v11, :cond_10

    if-eq v11, v5, :cond_f

    if-eq v11, v7, :cond_e

    if-eq v11, v10, :cond_d

    if-eq v11, v6, :cond_c

    .line 674
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 671
    :cond_c
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 668
    :cond_d
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 665
    :cond_e
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 662
    :cond_f
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 659
    :cond_10
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 702
    :goto_3
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    .line 703
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_11

    .line 704
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    .line 705
    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v7

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 708
    :cond_11
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 709
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 710
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    .line 711
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_4

    .line 714
    :cond_12
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIsTrustOnFirstUseSupported:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 715
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->enableTrustOnFirstUse(Z)V

    goto :goto_4

    .line 716
    :cond_13
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 717
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v5, "/system/etc/security/cacerts"

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_4

    .line 718
    :cond_14
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 719
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_17

    .line 720
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "Multiple certs can only be set when editing saved network"

    .line 721
    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_15
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 725
    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 727
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v5

    .line 724
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    goto :goto_4

    .line 730
    :cond_16
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    new-array v5, v5, [Ljava/lang/String;

    aput-object v7, v5, v4

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 737
    :cond_17
    :goto_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 738
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ca_cert ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 740
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") and ca_path ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 742
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") should not both be non-null"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 739
    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_18
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 748
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    goto :goto_5

    .line 750
    :cond_19
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    .line 753
    :goto_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 754
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_1a

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 755
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_1a
    move-object v1, v5

    .line 760
    :cond_1b
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    if-eq v2, v6, :cond_1e

    if-eq v2, v9, :cond_1e

    if-ne v2, v3, :cond_1c

    goto :goto_6

    :cond_1c
    if-ne v2, v10, :cond_1d

    .line 765
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 766
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_7

    .line 768
    :cond_1d
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 769
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    .line 770
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 769
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_7

    .line 762
    :cond_1e
    :goto_6
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 763
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 773
    :goto_7
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 776
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_23

    .line 777
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 781
    :cond_1f
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 626
    :pswitch_3
    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 627
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_23

    .line 628
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[0-9A-Fa-f]{64}"

    .line 629
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 630
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8

    .line 632
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8

    .line 611
    :pswitch_4
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 612
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_23

    .line 613
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 614
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_21

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_21

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_22

    :cond_21
    const-string v1, "[0-9A-Fa-f]*"

    .line 617
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 618
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v1, v4

    goto :goto_8

    .line 620
    :cond_22
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_8

    .line 607
    :pswitch_5
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 800
    :cond_23
    :goto_8
    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    .line 801
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 802
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 803
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 804
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 805
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 806
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_24

    .line 807
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 810
    :cond_24
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    if-eqz p0, :cond_25

    .line 813
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    .line 812
    invoke-static {p0}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->translatePrefValueToMacRandomizedValue(I)I

    move-result p0

    iput p0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    :cond_25
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method getSignalString()Ljava/lang/String;
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 456
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mLevels:[Ljava/lang/String;

    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v1, p0, v0

    :cond_1
    return-object v1
.end method

.method getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1843
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p0, 0x1090009

    .line 1845
    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-object v0
.end method

.method public getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    .line 1747
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method

.method hideForgetButton()V
    .locals 1

    .line 460
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getForgetButton()Landroid/widget/Button;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 463
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method hideSubmitButton()V
    .locals 1

    .line 467
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getSubmitButton()Landroid/widget/Button;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 470
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method isSubmittable()Z
    .locals 8

    .line 500
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    if-ne v3, v1, :cond_0

    .line 502
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    .line 504
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->isValidPsk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    .line 506
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->isValidSaePassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 509
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_5

    .line 511
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    if-nez v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_7

    .line 514
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    .line 515
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_7

    goto :goto_1

    .line 518
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->ipAndProxyFieldsAreValid()Z

    move-result v0

    goto :goto_2

    :cond_8
    :goto_1
    move v0, v2

    .line 520
    :goto_2
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 v3, 0x6

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/16 v6, 0x8

    if-eq v1, v5, :cond_9

    if-eq v1, v4, :cond_9

    if-ne v1, v3, :cond_b

    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v7, Lcom/android/settings/R$id;->l_ca_cert:I

    .line 524
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_b

    .line 525
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 526
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_3
    move v0, v2

    goto :goto_4

    .line 530
    :cond_a
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v7, Lcom/android/settings/R$id;->l_domain:I

    .line 531
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_b

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    .line 532
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    .line 538
    :cond_b
    :goto_4
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    if-eq v1, v5, :cond_c

    if-eq v1, v4, :cond_c

    if-ne v1, v3, :cond_d

    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_user_cert:I

    .line 542
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 543
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_5

    :cond_d
    move v2, v0

    :goto_5
    return v2
.end method

.method isValidPsk(Ljava/lang/String;)Z
    .locals 2

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0x40

    if-ne p0, v1, :cond_0

    const-string p0, "[0-9A-Fa-f]{64}"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    .line 484
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x8

    if-lt p0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x3f

    if-gt p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method isValidSaePassword(Ljava/lang/String;)Z
    .locals 1

    .line 491
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x80

    if-gt p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;Ljava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 1518
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    .line 1520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1521
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 1523
    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p5, :cond_2

    .line 1526
    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    iget-boolean p4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIsTrustOnFirstUseSupported:Z

    if-eqz p4, :cond_1

    .line 1528
    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1530
    :cond_1
    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mInstallCertsString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p2, :cond_3

    .line 1533
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p4

    if-eqz p4, :cond_3

    .line 1534
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p4, Lcom/android/settings/wifi/WifiConfigController2$$ExternalSyntheticLambda1;

    invoke-direct {p4}, Lcom/android/settings/wifi/WifiConfigController2$$ExternalSyntheticLambda1;-><init>()V

    .line 1535
    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 1542
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 1534
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1545
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 p4, 0x6

    if-eq p2, p4, :cond_4

    .line 1547
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1551
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_5

    .line 1552
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 1553
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    const/4 p2, 0x1

    .line 1555
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1559
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 1558
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object p0

    .line 1560
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method loadSims()V
    .locals 6

    .line 1471
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 1472
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1474
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1476
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1479
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 1480
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 1481
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    goto :goto_1

    .line 1485
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1489
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    new-array v0, v1, [Ljava/lang/String;

    .line 1490
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_no_sim_card:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1491
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1492
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1493
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    return-void

    .line 1498
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1499
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 1500
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    .line 1501
    invoke-static {v4, v5}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1500
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1503
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    .line 1504
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    .line 1503
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1505
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1506
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 1507
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1663
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->show_password:I

    if-ne v0, v1, :cond_1

    .line 1664
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    .line 1665
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/16 p2, 0x90

    goto :goto_0

    :cond_0
    const/16 p2, 0x80

    :goto_0
    or-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setInputType(I)V

    if-ltz p1, :cond_2

    .line 1669
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 1671
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p2

    sget v0, Lcom/android/settings/R$id;->wifi_advanced_togglebox:I

    if-ne p2, v0, :cond_2

    .line 1673
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConfigController2;->hideSoftKeyboard(Landroid/os/IBinder;)V

    const/16 p2, 0x8

    .line 1674
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1675
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->wifi_advanced_fields:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1641
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    if-ne p1, p3, :cond_0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1642
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->isSubmittable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1643
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->dispatchSubmit()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1681
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecuritySpinner:Landroid/widget/Spinner;

    const/16 p4, 0x8

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 1683
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    .line 1684
    invoke-virtual {p0, p5, p5}, Lcom/android/settings/wifi/WifiConfigController2;->showSecurityFields(ZZ)V

    .line 1686
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    invoke-static {p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isSupportEnrolleeQrCodeScanner(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1687
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidScanButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 1689
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidScanButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 1691
    :cond_1
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_2

    .line 1692
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    .line 1693
    iget p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mLastShownEapMethod:I

    if-eq p2, p1, :cond_9

    .line 1694
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mLastShownEapMethod:I

    .line 1695
    invoke-virtual {p0, v0, p5}, Lcom/android/settings/wifi/WifiConfigController2;->showSecurityFields(ZZ)V

    goto :goto_1

    .line 1697
    :cond_2
    iget-object p5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-ne p1, p5, :cond_4

    .line 1698
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1699
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mInstallCertsString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1700
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->startActivityForInstallCerts()V

    .line 1702
    :cond_3
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->showSecurityFields(ZZ)V

    goto :goto_1

    .line 1703
    :cond_4
    iget-object p5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    if-ne p1, p5, :cond_5

    .line 1704
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    if-nez p2, :cond_5

    .line 1705
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showPeapFields()V

    goto :goto_1

    .line 1706
    :cond_5
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_6

    .line 1707
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showProxyFields()V

    goto :goto_1

    .line 1708
    :cond_6
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_8

    .line 1709
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenWarningView:Landroid/widget/TextView;

    if-nez p3, :cond_7

    goto :goto_0

    :cond_7
    move p4, v0

    :goto_0
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1712
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showIpConfigFields()V

    .line 1714
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showWarningMessagesIfAppropriate()V

    .line 1715
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1652
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    if-ne p1, p3, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 1653
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->isSubmittable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1654
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->dispatchSubmit()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected showSecurityFields(ZZ)V
    .locals 15

    move-object v6, p0

    .line 968
    iget v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/16 v1, 0x8

    if-eqz v0, :cond_1c

    const/4 v7, 0x4

    if-ne v0, v7, :cond_0

    goto/16 :goto_9

    .line 973
    :cond_0
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->security_fields:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 975
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 976
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->password:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    .line 977
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 978
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 979
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 980
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->show_password:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 981
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 983
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->wifi_unchanged:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 988
    :cond_1
    iget v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x3

    if-eq v0, v11, :cond_2

    if-eq v0, v9, :cond_2

    if-eq v0, v10, :cond_2

    .line 991
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->eap:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 994
    :cond_2
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->eap:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 998
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x1

    if-nez v0, :cond_3

    .line 1000
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->method:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1001
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1002
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    .line 1003
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->phase2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 1004
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1005
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ca_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1006
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1007
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ocsp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    .line 1008
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->domain:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    .line 1009
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1010
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->user_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 1011
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1012
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->identity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    .line 1013
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->anonymous:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    .line 1015
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAccessibilityDelegateForSecuritySpinners()V

    move v13, v12

    goto :goto_0

    :cond_3
    move v13, v8

    :goto_0
    if-eqz p1, :cond_7

    .line 1020
    iget v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    if-ne v0, v10, :cond_4

    .line 1021
    sget v0, Lcom/android/settings/R$array;->wifi_eap_method:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 1022
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1024
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1025
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_2

    .line 1026
    :cond_4
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 1032
    :cond_5
    sget v0, Lcom/android/settings/R$array;->wifi_eap_method:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapterWithEapMethodsTts(I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 1034
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1035
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_2

    .line 1028
    :cond_6
    :goto_1
    sget v0, Lcom/android/settings/R$array;->eap_method_without_sim_auth:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 1029
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1030
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_7
    :goto_2
    if-eqz p2, :cond_8

    .line 1040
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->loadSims()V

    .line 1043
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->getAndroidKeystoreAliasLoader()Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    move-result-object v14

    .line 1044
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1046
    invoke-virtual {v14}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getCaCertAliases()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    .line 1044
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController2;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;Ljava/lang/String;ZZ)V

    .line 1050
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 1052
    invoke-virtual {v14}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getKeyCertAliases()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, v6, Lcom/android/settings/wifi/WifiConfigController2;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    const/4 v5, 0x0

    .line 1050
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController2;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;Ljava/lang/String;ZZ)V

    .line 1057
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :cond_8
    if-eqz v13, :cond_1b

    .line 1061
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1062
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1063
    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1064
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    .line 1065
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    .line 1066
    iget-object v3, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1067
    iput v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mLastShownEapMethod:I

    .line 1068
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->showEapFieldsByMethod(I)V

    const-string v3, "Invalid phase 2 method "

    const-string v4, "WifiConfigController2"

    const/4 v5, 0x2

    if-eqz v1, :cond_e

    if-eq v1, v5, :cond_9

    goto/16 :goto_3

    :cond_9
    if-eq v2, v12, :cond_d

    if-eq v2, v5, :cond_c

    if-eq v2, v11, :cond_b

    if-eq v2, v7, :cond_a

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1104
    :cond_a
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1101
    :cond_b
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1098
    :cond_c
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1095
    :cond_d
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    :cond_e
    if-eq v2, v11, :cond_13

    if-eq v2, v7, :cond_12

    const/4 v1, 0x5

    if-eq v2, v1, :cond_11

    if-eq v2, v10, :cond_10

    if-eq v2, v9, :cond_f

    .line 1088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1085
    :cond_f
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1082
    :cond_10
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1079
    :cond_11
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1076
    :cond_12
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1073
    :cond_13
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1115
    :goto_3
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v8

    .line 1116
    :goto_4
    iget-object v2, v6, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 1117
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    iget-object v3, v6, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v3

    if-ne v2, v3, :cond_14

    .line 1118
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_5

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1124
    :cond_15
    :goto_5
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1125
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_6

    .line 1127
    :cond_16
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    .line 1129
    iget-boolean v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mIsTrustOnFirstUseSupported:Z

    if-eqz v0, :cond_17

    .line 1130
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->isTrustOnFirstUseEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1131
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_6

    .line 1133
    :cond_17
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_6

    .line 1135
    :cond_18
    array-length v1, v0

    if-ne v1, v12, :cond_19

    .line 1136
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    aget-object v0, v0, v8

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_6

    .line 1140
    :cond_19
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->getAndroidKeystoreAliasLoader()Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    move-result-object v0

    .line 1141
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1143
    invoke-virtual {v0}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getCaCertAliases()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    .line 1141
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController2;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;Ljava/lang/String;ZZ)V

    .line 1147
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mMultipleCertSetString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1150
    :goto_6
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getOcsp()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1151
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getDomainSuffixMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 1153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1154
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_7

    .line 1156
    :cond_1a
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1158
    :goto_7
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1161
    :cond_1b
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->showEapFieldsByMethod(I)V

    :goto_8
    return-void

    .line 970
    :cond_1c
    :goto_9
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->security_fields:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method showWarningMessagesIfAppropriate()V
    .locals 6

    .line 552
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->no_user_cert_warning:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->no_domain_warning:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->ssid_too_long_warning:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidView:Landroid/widget/TextView;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-static {v0}, Lcom/android/settings/wifi/WifiUtils;->isSSIDTooLong(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->l_ca_cert:I

    .line 563
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 564
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->l_domain:I

    .line 565
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    .line 566
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 573
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 574
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 575
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 576
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public updatePassword()V
    .locals 2

    .line 1739
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1741
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->show_password:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x90

    goto :goto_0

    :cond_0
    const/16 p0, 0x80

    :goto_0
    or-int/lit8 p0, p0, 0x1

    .line 1740
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setInputType(I)V

    return-void
.end method
