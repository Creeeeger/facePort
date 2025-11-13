.class public final Lcom/android/settings/wifi/WifiConfigController2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field static final DEFAULT_ANONYMOUS_ID:Ljava/lang/String; = "anonymous"

.field static final UNDESIRED_CERTIFICATES:[Ljava/lang/String;


# instance fields
.field public final mActiveSubscriptionInfos:Landroid/util/ArrayMap;

.field public final mAndroidKeystoreAliasLoader:Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

.field public final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

.field public final mContext:Landroid/content/Context;

.field public final mDhcpSettingsSpinner:Landroid/widget/Spinner;

.field public mDns1View:Landroid/widget/TextView;

.field public mDns2View:Landroid/widget/TextView;

.field public final mDoNotProvideEapUserCertString:Ljava/lang/String;

.field mEapAnonymousView:Landroid/widget/TextView;

.field mEapCaCertSpinner:Landroid/widget/Spinner;

.field public mEapDomainView:Landroid/widget/TextView;

.field public mEapIdentityView:Landroid/widget/TextView;

.field mEapMethodSpinner:Landroid/widget/Spinner;

.field public mEapMinTlsVerSpinner:Landroid/widget/Spinner;

.field public mEapOcspSpinner:Landroid/widget/Spinner;

.field mEapSimSpinner:Landroid/widget/Spinner;

.field public mEapUserCertSpinner:Landroid/widget/Spinner;

.field public mGatewayView:Landroid/widget/TextView;

.field public final mHiddenSettingsSpinner:Landroid/widget/Spinner;

.field public final mHiddenWarningView:Landroid/widget/TextView;

.field public mHttpProxy:Landroid/net/ProxyInfo;

.field mInstallCertsString:Ljava/lang/String;

.field public mIpAddressView:Landroid/widget/TextView;

.field public mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field public final mIpSettingsSpinner:Landroid/widget/Spinner;

.field public final mIsTrustOnFirstUseSupported:Z

.field public mLastShownEapMethod:I

.field public final mLevels:[Ljava/lang/String;

.field public final mMeteredSettingsSpinner:Landroid/widget/Spinner;

.field public final mMode:I

.field public final mMultipleCertSetString:Ljava/lang/String;

.field public mNetworkPrefixLengthView:Landroid/widget/TextView;

.field public mPasswordView:Landroid/widget/TextView;

.field public mPhase2Adapter:Landroid/widget/ArrayAdapter;

.field public final mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

.field public mPhase2Spinner:Landroid/widget/Spinner;

.field public final mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;

.field public final mPrivacySettingsSpinner:Landroid/widget/Spinner;

.field public mProxyExclusionListView:Landroid/widget/TextView;

.field public mProxyHostView:Landroid/widget/TextView;

.field public mProxyPacView:Landroid/widget/TextView;

.field public mProxyPortView:Landroid/widget/TextView;

.field public mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field public final mProxySettingsSpinner:Landroid/widget/Spinner;

.field mSecurityInPosition:[Ljava/lang/Integer;

.field public final mSecuritySpinner:Landroid/widget/Spinner;

.field public final mSharedCheckBox:Landroid/widget/CheckBox;

.field public final mSsidScanButton:Landroid/widget/ImageButton;

.field public final mSsidView:Landroid/widget/TextView;

.field public mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field public final mTrustOnFirstUse:Ljava/lang/String;

.field public final mUnspecifiedCertString:Ljava/lang/String;

.field public final mUseSystemCertsString:Ljava/lang/String;

.field public final mView:Landroid/view/View;

.field public final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field mWifiEntrySecurity:I

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MacRandSecret"

    const-string v1, "MacRandSapSecret"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController2;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase2;Landroid/view/View;Lcom/android/wifitrackerlib/WifiEntry;IZ)V
    .locals 9

    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/net/wifi/WifiManager;

    new-instance v8, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;-><init>(Ljava/lang/Integer;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/wifi/WifiConfigController2;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase2;Landroid/view/View;Lcom/android/wifitrackerlib/WifiEntry;IZLandroid/net/wifi/WifiManager;Lcom/android/settings/utils/AndroidKeystoreAliasLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase2;Landroid/view/View;Lcom/android/wifitrackerlib/WifiEntry;IZLandroid/net/wifi/WifiManager;Lcom/android/settings/utils/AndroidKeystoreAliasLoader;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v5, v0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v5, v0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    iput-object v5, v0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    iput-object v6, v0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Landroid/util/ArrayMap;

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    iput-object v3, v0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iput v4, v0, Lcom/android/settings/wifi/WifiConfigController2;->mMode:I

    invoke-interface/range {p1 .. p1}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    move-object/from16 v7, p6

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/settings/wifi/WifiConfigController2;->mAndroidKeystoreAliasLoader:Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    const/4 v8, 0x0

    if-nez v3, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v9

    :goto_0
    iput v9, v0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    invoke-virtual/range {p6 .. p6}, Landroid/net/wifi/WifiManager;->isTrustOnFirstUseSupported()Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/settings/wifi/WifiConfigController2;->mIsTrustOnFirstUseSupported:Z

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f030203

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mLevels:[Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x111015d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    const v10, 0x7f0301f3

    invoke-virtual {v0, v10}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapterWithEapMethodsTts(I)Landroid/widget/ArrayAdapter;

    move-result-object v10

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0301f2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v10

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    :goto_2
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f030208

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v10

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;

    const v10, 0x7f143726

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    const v10, 0x7f1435d8

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mMultipleCertSetString:Ljava/lang/String;

    const v10, 0x7f14372b

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    const v10, 0x7f143719

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mTrustOnFirstUse:Ljava/lang/String;

    const v10, 0x7f143523

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    const v10, 0x7f1435a2

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mInstallCertsString:Ljava/lang/String;

    iget v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const v10, 0x7f0a1151

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    const v10, 0x7f0a0ed8

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidScanButton:Landroid/widget/ImageButton;

    const v10, 0x7f0a0818

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v10, 0x7f0a0bf6

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v10, 0x7f0a0e2a

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSharedCheckBox:Landroid/widget/CheckBox;

    if-nez p5, :cond_4

    const v10, 0x7f0a0965

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    const v10, 0x7f0a0966

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const v10, 0x7f0a074c

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    if-nez p5, :cond_5

    invoke-virtual/range {p6 .. p6}, Landroid/net/wifi/WifiManager;->isConnectedMacRandomizationSupported()Z

    move-result v10

    if-eqz v10, :cond_5

    const v10, 0x7f0a0ba7

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    const v10, 0x7f0a0509

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mDhcpSettingsSpinner:Landroid/widget/Spinner;

    const v10, 0x7f0a0ba8

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v10, 0x7f0a074f

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenWarningView:Landroid/widget/TextView;

    iget-object v12, v0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v12}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v12

    if-nez v12, :cond_6

    const/16 v12, 0x8

    goto :goto_3

    :cond_6
    move v12, v8

    :goto_3
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v10, 0x9

    new-array v10, v10, [Ljava/lang/Integer;

    iput-object v10, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    const/4 v10, 0x2

    const v12, 0x7f0a1161

    const v14, 0x7f143644

    const v15, 0x7f0a1160

    if-nez v3, :cond_a

    const v3, 0x7f143286

    invoke-interface {v1, v3}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setTitle(I)V

    const v3, 0x7f0a0ed1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v3, 0x7f0a0d83

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    const v5, 0x1020014

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    const v4, 0x1090009

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v4, 0x7f143664

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual/range {p6 .. p6}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x7f143667

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    move v4, v10

    goto :goto_4

    :cond_7
    move v4, v11

    :goto_4
    const v5, 0x7f143681

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v16, v4, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v4

    const v5, 0x7f143685

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v11, v4, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v16

    invoke-virtual/range {p6 .. p6}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v5

    const/4 v10, 0x3

    if-eqz v5, :cond_8

    const v5, 0x7f14366b

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v16, v4, 0x3

    const/16 v17, 0x5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v5, v11

    const v5, 0x7f143661

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v11, v4, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v16

    const v5, 0x7f143660

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v4, v4, 0x5

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v11

    goto :goto_5

    :cond_8
    const v5, 0x7f14365c

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/2addr v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v11

    :goto_5
    invoke-virtual/range {p6 .. p6}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result v5

    if-eqz v5, :cond_9

    const v5, 0x7f14365d

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    :cond_9
    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    const v3, 0x7f0a10a4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController2;->showIpConfigFields()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController2;->showProxyFields()V

    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0a074d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController2$3;

    invoke-direct {v4, v0}, Lcom/android/settings/wifi/WifiConfigController2$3;-><init>(Lcom/android/settings/wifi/WifiConfigController2;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setSubmitButton(Ljava/lang/CharSequence;)V

    const/16 v4, 0x8

    goto/16 :goto_e

    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setTitle(Ljava/lang/CharSequence;)V

    const v7, 0x7f0a07eb

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual/range {p3 .. p3}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-virtual/range {p3 .. p3}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController2;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v13, :cond_b

    iget v14, v5, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_b
    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    iget-boolean v14, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController2;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v13, :cond_c

    iget v13, v5, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    invoke-static {v13}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->translateMacRandomizedValueToPrefValue(I)I

    move-result v13

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController2;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v14, v13}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_c
    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController2;->mDhcpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v13, :cond_d

    sget-object v13, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController;->Companion:Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController$Companion;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->isSendDhcpHostnameEnabled()Z

    move-result v14

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/lit8 v13, v14, 0x1

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController2;->mDhcpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v14, v13}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_d
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v13

    sget-object v14, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v13, v14, :cond_f

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13, v11}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v13

    if-eqz v13, :cond_e

    invoke-virtual {v13}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v14

    if-eqz v14, :cond_e

    invoke-virtual {v13}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f1435aa

    invoke-virtual {v0, v7, v14, v13}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_e
    move v13, v11

    goto :goto_6

    :cond_f
    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13, v8}, Landroid/widget/Spinner;->setSelection(I)V

    move v13, v8

    :goto_6
    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSharedCheckBox:Landroid/widget/CheckBox;

    iget-boolean v15, v5, Landroid/net/wifi/WifiConfiguration;->shared:Z

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-boolean v14, v5, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v14, :cond_10

    move v13, v11

    :cond_10
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v14

    sget-object v15, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v14, v15, :cond_11

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13, v11}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_7
    move v13, v11

    goto :goto_8

    :cond_11
    sget-object v15, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v14, v15, :cond_12

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_7

    :cond_12
    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v14, v8}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_8
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v14

    if-eqz v14, :cond_14

    const v14, 0x7f141bda

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f141bdb

    invoke-virtual {v0, v7, v6, v5}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_9

    :cond_13
    move v13, v8

    :cond_14
    :goto_9
    invoke-virtual/range {p3 .. p3}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v5

    if-eq v5, v10, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    if-eqz v4, :cond_19

    :cond_16
    invoke-virtual {v0, v11, v11}, Lcom/android/settings/wifi/WifiConfigController2;->showSecurityFields(ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController2;->showIpConfigFields()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController2;->showProxyFields()V

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    if-nez v13, :cond_17

    const v6, 0x7f0a1160

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v5, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    new-instance v6, Lcom/android/settings/wifi/WifiConfigController2$3;

    invoke-direct {v6, v0}, Lcom/android/settings/wifi/WifiConfigController2$3;-><init>(Lcom/android/settings/wifi/WifiConfigController2;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_17
    const v5, 0x7f0a115f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v13, :cond_18

    move v6, v8

    goto :goto_a

    :cond_18
    const/16 v6, 0x8

    :goto_a
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    if-ne v4, v10, :cond_1a

    const v5, 0x7f143644

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    :cond_1a
    const v5, 0x7f1434b5    # 1.9699941E38f

    if-ne v4, v11, :cond_1b

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController2;->getSignalString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v6

    if-nez v6, :cond_1c

    if-eqz v4, :cond_1c

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_1c
    if-eqz v4, :cond_1d

    const v5, 0x7f1436af

    invoke-virtual {v0, v7, v5, v4}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_1d
    invoke-virtual/range {p3 .. p3}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v4

    if-eqz v4, :cond_1e

    iget v5, v4, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->linkSpeedMbps:I

    if-ltz v5, :cond_1e

    const v5, 0x7f1414d9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, v4, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->linkSpeedMbps:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f1436c0

    invoke-virtual {v0, v7, v6, v5}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_1e
    if-eqz v4, :cond_22

    iget v4, v4, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->frequencyMhz:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_22

    const/16 v5, 0x960

    if-lt v4, v5, :cond_1f

    const/16 v5, 0x9c4

    if-ge v4, v5, :cond_1f

    const v4, 0x7f14348d

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_1f
    const/16 v5, 0x1324

    if-lt v4, v5, :cond_20

    const/16 v5, 0x170c

    if-ge v4, v5, :cond_20

    const v4, 0x7f14348e

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_20
    const/16 v5, 0x1725

    if-lt v4, v5, :cond_21

    const/16 v5, 0x1bd5

    if-ge v4, v5, :cond_21

    const v4, 0x7f14348f

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_21
    const-string v5, "Unexpected frequency "

    const-string v6, "WifiConfigController2"

    invoke-static {v4, v5, v6}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_b
    if-eqz v5, :cond_22

    const v4, 0x7f14356d

    invoke-virtual {v0, v7, v4, v5}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_22
    invoke-virtual {v3, v8}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f143658

    invoke-virtual {v0, v7, v5, v4}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    const v4, 0x7f0a0817

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_c
    invoke-virtual/range {p3 .. p3}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual/range {p3 .. p3}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v4

    if-eq v4, v10, :cond_23

    invoke-virtual/range {p3 .. p3}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v3

    if-eqz v3, :cond_24

    :cond_23
    const v3, 0x7f14356b

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setForgetButton(Ljava/lang/CharSequence;)V

    :cond_24
    :goto_d
    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidScanButton:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_e
    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController2;->mSharedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    const v3, 0x7f1434a4    # 1.9699907E38f

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setCancelButton(Ljava/lang/CharSequence;)V

    invoke-interface/range {p1 .. p1}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getSubmitButton()Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController2;->enableSubmitIfAppropriate()V

    :cond_25
    const v0, 0x7f0a085d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public static getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 0

    :try_start_0
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

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

.method public static setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d0c1b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a0a1a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f0a10e5

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    new-instance p1, Lcom/android/settings/wifi/WifiConfigController2$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WifiConfigController2$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/WifiConfigController2;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final enableSubmitIfAppropriate()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->isSubmittable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public findAndReplaceTargetStrings([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 5

    array-length p0, p2

    array-length v0, p3

    if-eq p0, v0, :cond_0

    return-object p1

    :cond_0
    array-length p0, p1

    new-array p0, p0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    aput-object v2, p0, v1

    move v2, v0

    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v1

    aget-object v4, p2, v2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

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

.method public final getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 14

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "\""

    if-nez v0, :cond_2

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-ne v5, v2, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSharedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/16 v6, 0x22

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/4 v9, 0x4

    packed-switch v5, :pswitch_data_0

    return-object v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v4, v1}, Landroidx/compose/ui/platform/AndroidUriHandler$$ExternalSyntheticOutline0;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_2d

    :cond_6
    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_8

    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v5, 0x7

    const/4 v6, 0x5

    const/4 v10, 0x3

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v4

    if-nez v4, :cond_a

    :cond_7
    iget v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    if-ne v4, v7, :cond_8

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_2

    :cond_8
    if-ne v4, v5, :cond_9

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_2

    :cond_9
    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :cond_a
    :goto_2
    new-instance v4, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v4}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    iget-object v12, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    const-string v12, "Unknown phase2 method"

    const-string v13, "WifiConfigController2"

    if-eqz v4, :cond_10

    if-eq v4, v8, :cond_b

    goto :goto_3

    :cond_b
    if-eqz v11, :cond_f

    if-eq v11, v2, :cond_e

    if-eq v11, v8, :cond_d

    if-eq v11, v10, :cond_c

    invoke-static {v11, v12, v13}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    :cond_d
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    :cond_e
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    :cond_f
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    :cond_10
    if-eqz v11, :cond_15

    if-eq v11, v2, :cond_14

    if-eq v11, v8, :cond_13

    if-eq v11, v10, :cond_12

    if-eq v11, v9, :cond_11

    invoke-static {v11, v12, v13}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_11
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    :cond_12
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    :cond_13
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    :cond_14
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    :cond_15
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :goto_3
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lez v5, :cond_16

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v5

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    :cond_16
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_4

    :cond_17
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIsTrustOnFirstUseSupported:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->enableTrustOnFirstUse(Z)V

    goto :goto_4

    :cond_18
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v8, "/system/etc/security/cacerts"

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_4

    :cond_19
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "Multiple certs can only be set when editing saved network"

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v8}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    goto :goto_4

    :cond_1b
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    :cond_1c
    :goto_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "ca_cert ("

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") and ca_path ("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") should not both be non-null"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setMinimumTlsVersion(I)V

    goto :goto_5

    :cond_1e
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMinTlsVerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setMinimumTlsVersion(I)V

    :goto_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v8, ""

    if-nez v5, :cond_1f

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    :cond_1f
    move-object v1, v8

    :cond_20
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    if-eq v4, v9, :cond_23

    if-eq v4, v6, :cond_23

    if-ne v4, v7, :cond_21

    goto :goto_6

    :cond_21
    if-ne v4, v10, :cond_22

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_7

    :cond_22
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_7

    :cond_23
    :goto_6
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    :goto_7
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_2d

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_24
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_26

    :cond_25
    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :cond_26
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "[0-9A-Fa-f]{64}"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8

    :cond_27
    invoke-static {v6, v4, v1}, Landroidx/compose/ui/platform/AndroidUriHandler$$ExternalSyntheticOutline0;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8

    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_29

    :cond_28
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :cond_29
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xa

    if-eq v1, v7, :cond_2a

    const/16 v7, 0x1a

    if-eq v1, v7, :cond_2a

    const/16 v7, 0x3a

    if-ne v1, v7, :cond_2b

    :cond_2a
    const-string v1, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v1, v3

    goto :goto_8

    :cond_2b
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {v6, v4, v5}, Landroidx/compose/ui/platform/AndroidUriHandler$$ExternalSyntheticOutline0;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_8

    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_2d

    :cond_2c
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :cond_2d
    :goto_8
    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1, v4}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1, v4}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v1, v4}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1, v4}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    :cond_2e
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->translatePrefValueToMacRandomizedValue(I)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    :cond_2f
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDhcpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz p0, :cond_31

    sget-object v1, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController;->Companion:Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController$Companion;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_30

    goto :goto_9

    :cond_30
    move v2, v3

    :goto_9
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setSendDhcpHostnameEnabled(Z)V

    :cond_31
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

.method public getEapMinTlsVerSpinner(Z)Landroid/widget/Spinner;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a097a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0301eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    const-string p1, "WifiConfigController2"

    const-string v2, "Wi-Fi Enterprise TLS v1.3 is not supported on this device"

    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-object v0
.end method

.method public getSignalString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    if-le v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mLevels:[Ljava/lang/String;

    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v1, p0, v0

    :cond_1
    return-object v1
.end method

.method public getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;
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

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p0, 0x1090009

    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-object v0
.end method

.method public final getSpinnerAdapterWithEapMethodsTts(I)Landroid/widget/ArrayAdapter;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0301e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0301ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/wifi/WifiConfigController2;->findAndReplaceTargetStrings([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [Landroid/text/SpannableString;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v2

    aget-object v4, v0, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v0, 0x1090008

    invoke-direct {p1, p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p0, 0x1090009

    invoke-virtual {p1, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-object p1
.end method

.method public final isSubmittable()Z
    .locals 10

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    if-ne v5, v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x40

    if-ne v5, v6, :cond_1

    const-string v5, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x3f

    if-gt v0, v5, :cond_3

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 v5, 0x5

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x80

    if-gt v0, v5, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v4

    :goto_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidView:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-eqz v5, :cond_1a

    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    if-nez v0, :cond_1a

    :cond_7
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_8

    goto/16 :goto_b

    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v3, :cond_9

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_3

    :cond_9
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    :goto_3
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v5, :cond_16

    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAddressView:Landroid/widget/TextView;

    if-nez v5, :cond_a

    goto/16 :goto_9

    :cond_a
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto/16 :goto_b

    :cond_b
    invoke-static {v5}, Lcom/android/settings/wifi/WifiConfigController2;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    if-eqz v5, :cond_1a

    sget-object v6, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v5, v6}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto/16 :goto_b

    :cond_c
    new-instance v6, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v6}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getDomains()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/StaticIpConfiguration$Builder;->setDomains(Ljava/lang/String;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v0

    const/4 v6, -0x1

    :try_start_0
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_e

    const/16 v7, 0x20

    if-le v6, v7, :cond_d

    goto :goto_4

    :cond_d
    new-instance v7, Landroid/net/LinkAddress;

    invoke-direct {v7, v5, v6}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v7}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    goto/16 :goto_8

    :catch_0
    :cond_e
    :goto_4
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    goto/16 :goto_b

    :catch_1
    :try_start_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {v8}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f1435dd

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_f

    :try_start_2
    invoke-static {v5, v6}, Lcom/android/net/module/util/NetUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    array-length v6, v5

    sub-int/2addr v6, v3

    aput-byte v3, v5, v6

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :cond_f
    :try_start_3
    invoke-static {v7}, Lcom/android/settings/wifi/WifiConfigController2;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    if-nez v5, :cond_10

    goto :goto_4

    :cond_10
    invoke-virtual {v5}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_4

    :cond_11
    invoke-virtual {v0, v5}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    :catch_2
    :goto_6
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns1View:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {v7}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f143520

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_12
    invoke-static {v5}, Lcom/android/settings/wifi/WifiConfigController2;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    if-nez v5, :cond_13

    goto/16 :goto_4

    :cond_13
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-lez v5, :cond_15

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/WifiConfigController2;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    if-nez v5, :cond_14

    goto/16 :goto_4

    :cond_14
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-virtual {v0, v6}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    goto :goto_9

    :goto_8
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    throw v1

    :cond_16
    :goto_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    if-ne v0, v3, :cond_17

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v5, :cond_17

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    invoke-static {v0, v1, v5}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_a

    :catch_3
    move v6, v4

    :catch_4
    const v1, 0x7f141dd4

    :goto_a
    if-nez v1, :cond_1a

    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v6, v1}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_c

    :cond_17
    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_b

    :cond_18
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_b

    :cond_19
    invoke-static {v0}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_c

    :cond_1a
    :goto_b
    move v3, v4

    :cond_1b
    :goto_c
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 v1, 0x6

    const/4 v5, 0x7

    const/4 v6, 0x3

    if-eq v0, v6, :cond_1c

    if-eq v0, v5, :cond_1c

    if-ne v0, v1, :cond_1e

    :cond_1c
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v7, 0x7f0a0851

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1e

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :goto_d
    move v3, v4

    goto :goto_e

    :cond_1d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v7, 0x7f0a0852

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1e

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_d

    :cond_1e
    :goto_e
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    if-eq v0, v6, :cond_1f

    if-eq v0, v5, :cond_1f

    if-ne v0, v1, :cond_20

    :cond_1f
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a085c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_20

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    goto :goto_f

    :cond_20
    move v4, v3

    :goto_f
    return v4
.end method

.method public loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;Ljava/lang/String;ZZ)V
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

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p5, :cond_2

    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIsTrustOnFirstUseSupported:Z

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mInstallCertsString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p4, Lcom/android/settings/wifi/WifiConfigController2$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 p4, 0x6

    if-eq p2, p4, :cond_4

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_5

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public loadSims()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v1, 0x7f1435f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    return-void

    :cond_1
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-eq v3, v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0a0e47

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

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

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p2

    const v0, 0x7f0a1161

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const p1, 0x7f0a115f

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    if-ne p1, p3, :cond_0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->isSubmittable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->dispatchSubmit()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecuritySpinner:Landroid/widget/Spinner;

    const/16 p4, 0x8

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    invoke-virtual {p0, p5, p5}, Lcom/android/settings/wifi/WifiConfigController2;->showSecurityFields(ZZ)V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    invoke-static {p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isSupportEnrolleeQrCodeScanner(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidScanButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidScanButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    iget p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mLastShownEapMethod:I

    if-eq p2, p1, :cond_9

    iput p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mLastShownEapMethod:I

    invoke-virtual {p0, v0, p5}, Lcom/android/settings/wifi/WifiConfigController2;->showSecurityFields(ZZ)V

    goto :goto_1

    :cond_2
    iget-object p5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-ne p1, p5, :cond_4

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mInstallCertsString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.credentials.INSTALL"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance p2, Landroid/content/ComponentName;

    const-string p3, "com.android.certinstaller"

    const-string p4, "com.android.certinstaller.CertInstallerMain"

    invoke-direct {p2, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p2, "certificate_install_usage"

    const-string p3, "wifi"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->showSecurityFields(ZZ)V

    goto :goto_1

    :cond_4
    iget-object p5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    if-ne p1, p5, :cond_5

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showPeapFields()V

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showProxyFields()V

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenWarningView:Landroid/widget/TextView;

    if-nez p3, :cond_7

    goto :goto_0

    :cond_7
    move p4, v0

    :goto_0
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showIpConfigFields()V

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showWarningMessagesIfAppropriate()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    if-ne p1, p3, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->isSubmittable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->dispatchSubmit()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setAnonymousIdVisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0850

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v0, "anonymous"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setAnonymousIdentInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0850

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setDomainInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0852

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMinTlsVerInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0855

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMinTlsVerSpinner:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public final setOcspInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0856

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public final setPasswordInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0b2b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v0, 0x7f0a0e48

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setUserCertInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a085c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method public final setVisibility(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final showEapFieldsByMethod(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0854

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0a0853

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v3, 0x7f0a0852

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v3, 0x7f0a0851

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isTlsMinimumVersionSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v4, 0x7f0a0855

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v4, 0x7f0a0856

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v4, 0x7f0a0b2b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v4, 0x7f0a0e48

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v4, 0x7f0a085b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    const v0, 0x7f0a0859

    const/16 v5, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAnonymousIdentInvisible()V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setMinTlsVerInvisible()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setOcspInvisible()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setDomainInvisible()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setUserCertInvisible()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setPasswordInvisible()V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setMinTlsVerInvisible()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setOcspInvisible()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setDomainInvisible()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAnonymousIdentInvisible()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setUserCertInvisible()V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;

    if-eq p1, v2, :cond_1

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAnonymousIdVisible()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setUserCertInvisible()V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0a085c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAnonymousIdentInvisible()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setPasswordInvisible()V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    if-eq p1, v2, :cond_2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAnonymousIdVisible()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showPeapFields()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setUserCertInvisible()V

    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v5, :cond_4

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIsTrustOnFirstUseSupported:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setMinTlsVerInvisible()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setDomainInvisible()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setOcspInvisible()V

    :cond_4
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

.method public final showIpConfigFields()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0817

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    const v4, 0x7f0a0efd

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAddressView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0a081c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0a06c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    new-instance v2, Lcom/android/settings/wifi/WifiConfigController2$2;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/wifi/WifiConfigController2$2;-><init>(Lcom/android/settings/wifi/WifiConfigController2;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0a0a42

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    new-instance v2, Lcom/android/settings/wifi/WifiConfigController2$2;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/wifi/WifiConfigController2$2;-><init>(Lcom/android/settings/wifi/WifiConfigController2;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0a0551

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns1View:Landroid/widget/TextView;

    new-instance v2, Lcom/android/settings/wifi/WifiConfigController2$2;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/wifi/WifiConfigController2$2;-><init>(Lcom/android/settings/wifi/WifiConfigController2;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0a0552

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final showPeapFields()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    const v3, 0x7f0a085b

    const v4, 0x7f0a0853

    const/4 v5, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0b2b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0e48

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setPasswordInvisible()V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final showProxyFields()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0bf7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    const v4, 0x7f0a0bf4

    const v5, 0x7f0a0bf1

    const v6, 0x7f0a0bf9

    const/16 v7, 0x8

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v6, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    invoke-virtual {p0, v5, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    invoke-virtual {p0, v4, v7}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyHostView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0a0bf2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0a0bf5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0a0bf0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/net/module/util/ProxyUtils;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    invoke-virtual {p0, v5, v7}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    invoke-virtual {p0, v4, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPacView:Landroid/widget/TextView;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0a0bf3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v6, v7}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    invoke-virtual {p0, v5, v7}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    invoke-virtual {p0, v4, v7}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final showSecurityFields(ZZ)V
    .locals 14

    move-object v6, p0

    iget v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/16 v1, 0x8

    const v2, 0x7f0a0d85

    if-eqz v0, :cond_1b

    const/4 v7, 0x4

    if-ne v0, v7, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0a0b24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0a0e47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    const v2, 0x7f143721

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(I)V

    :cond_1
    iget v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const v2, 0x7f0a0581

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x3

    if-eq v0, v11, :cond_2

    if-eq v0, v9, :cond_2

    if-eq v0, v10, :cond_2

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x1

    if-nez v0, :cond_3

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0968

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0e5a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0b4c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a02c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isTlsV13Supported()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getEapMinTlsVerSpinner(Z)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMinTlsVerSpinner:Landroid/widget/Spinner;

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0ac3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a055a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a10d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a07ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a00f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    new-instance v0, Lcom/android/settings/wifi/WifiConfigController2$1;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMinTlsVerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    move v13, v12

    goto :goto_0

    :cond_3
    move v13, v8

    :goto_0
    if-eqz p1, :cond_7

    iget v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const v1, 0x7f0301e8

    if-ne v0, v10, :cond_4

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111015d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapterWithEapMethodsTts(I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_7
    :goto_2
    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->loadSims()V

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mAndroidKeystoreAliasLoader:Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    iget-object v2, v0, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->mCaCertAliases:Ljava/util/Collection;

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController2;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;Ljava/lang/String;ZZ)V

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mAndroidKeystoreAliasLoader:Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    iget-object v2, v0, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->mKeyCertAliases:Ljava/util/Collection;

    iget-object v3, v6, Lcom/android/settings/wifi/WifiConfigController2;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController2;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;Ljava/lang/String;ZZ)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :cond_8
    if-eqz v13, :cond_1a

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    iget-object v3, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iput v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mLastShownEapMethod:I

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->showEapFieldsByMethod(I)V

    const-string v3, "Invalid phase 2 method "

    const-string v4, "WifiConfigController2"

    const/4 v5, 0x2

    if-eqz v1, :cond_e

    if-eq v1, v5, :cond_9

    goto :goto_3

    :cond_9
    if-eq v2, v12, :cond_d

    if-eq v2, v5, :cond_c

    if-eq v2, v11, :cond_b

    if-eq v2, v7, :cond_a

    invoke-static {v2, v3, v4}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    :cond_b
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    :cond_c
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

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

    invoke-static {v2, v3, v4}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    :cond_10
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    :cond_11
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    :cond_12
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    :cond_13
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_3
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Landroid/util/ArrayMap;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_14

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_14
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_4

    :cond_15
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    iget-boolean v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mIsTrustOnFirstUseSupported:Z

    if-eqz v0, :cond_16

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->isTrustOnFirstUseEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_4

    :cond_16
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_4

    :cond_17
    array-length v1, v0

    if-ne v1, v12, :cond_18

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    aget-object v0, v0, v8

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_4

    :cond_18
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mAndroidKeystoreAliasLoader:Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    iget-object v2, v0, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->mCaCertAliases:Ljava/util/Collection;

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController2;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;Ljava/lang/String;ZZ)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mMultipleCertSetString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :goto_4
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMinTlsVerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getMinimumTlsVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getOcsp()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getDomainSuffixMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_5

    :cond_19
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :goto_5
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_1a
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->showEapFieldsByMethod(I)V

    :goto_6
    return-void

    :cond_1b
    :goto_7
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showWarningMessagesIfAppropriate()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0a8d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v3, 0x7f0a0a83

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v4, 0x7f0a0edb

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidView:Landroid/widget/TextView;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiUtils;->isSSIDTooLong(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v4, 0x7f0a0851

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v4, 0x7f0a0852

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final updatePassword()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0b24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0a0e47

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

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setInputType(I)V

    return-void
.end method
