.class public Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiNetworkConfigPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroid/text/TextWatcher;
.implements Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$Validator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;,
        Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$NetworkConfigChangeListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final sMiscPolicyLock:Ljava/lang/Object;

.field private static volatile sMiscPolicyService:Lcom/samsung/android/knox/IMiscPolicy;


# instance fields
.field private mAutoGenFirstTime:Z

.field private mCallback:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidatorCallback;

.field private mCancelButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/EditText;

.field private mDns2View:Landroid/widget/TextView;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mGatewayView:Landroid/widget/EditText;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private final mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

.field private mIpAddressView:Landroid/widget/EditText;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingDropdown:Landroidx/preference/DropDownPreference;

.field private final mIpSettingPrefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mIpSettingsDropDownListeners:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mIpSettingsInset:Landroidx/preference/Preference;

.field private mListener:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$NetworkConfigChangeListener;

.field private mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mNetworkPrefixLengthView:Landroid/widget/EditText;

.field private mProxyExclusionlistView:Landroid/widget/TextView;

.field private mProxyHostNameView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/EditText;

.field private mProxySettingDropdown:Landroidx/preference/DropDownPreference;

.field private final mProxySettingPrefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private final mProxySettingsDropDownListeners:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mProxySettingsInset:Landroidx/preference/Preference;

.field private mSAScreenId:Ljava/lang/String;

.field private mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$3B1xwgbiLIqVUA5Ns2YsWfgFgPU(Landroidx/preference/Preference;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->lambda$updateProxyPreference$5(Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3Ccpyk5GCljPPexmfghobjlo9Nk(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->lambda$updateBottomMode$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5U7eXGhuDTaJ1JqHQxr-dOqERTk(Landroidx/preference/Preference;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->lambda$updateIpPreference$3(Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MZF0PBk_emMQt3m1738q7MHZt7A(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->lambda$updateBottomMode$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YcaqcjXckOz-7Y7ZlcjB9uI8okM(Landroidx/preference/Preference;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->lambda$updateProxyPreference$4(Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZIw6ymc_6RX2ed01tez7TnPpFWI(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->lambda$new$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ad8YmTEoXjvaLNaCxQfH-7fUyV4(Landroidx/preference/Preference;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->lambda$updateProxyPreference$6(Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fNDEYknqLsqt7TTw4lorRaM_ZIE(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->lambda$new$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kGlJHqGk1v-QiIRXt_shrSfDLQs(Landroidx/preference/Preference;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->lambda$disableViewsIfAppropriate$9(Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nJegBcMZs7p0__fkCP6tvkljrXg(Landroidx/preference/Preference;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->lambda$disableViewsIfAppropriate$10(Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q6pmWmbXG5RxqJ1xKspbkXHV8y0(Landroidx/preference/Preference;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->lambda$updateIpPreference$2(Landroidx/preference/Preference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImeHelper(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiImeHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 109
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->DBG:Z

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->sMiscPolicyLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V
    .locals 2

    .line 174
    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 134
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 136
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 137
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mAutoGenFirstTime:Z

    .line 185
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingsDropDownListeners:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 202
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingsDropDownListeners:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 369
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 175
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    .line 176
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 178
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string p1, "wifi"

    .line 179
    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 180
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 181
    iput-object p5, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    .line 182
    iput-object p6, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mSAScreenId:Ljava/lang/String;

    return-void
.end method

.method private checkIp4vAddress(Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    .line 620
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 621
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_0

    return p0

    .line 624
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method private convertIndexToIpAssignment(I)Landroid/net/IpConfiguration$IpAssignment;
    .locals 1

    if-nez p1, :cond_0

    .line 482
    sget-object p0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 484
    sget-object p0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    return-object p0

    .line 486
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    return-object p0
.end method

.method private convertIndexToProxySettings(I)Landroid/net/IpConfiguration$ProxySettings;
    .locals 1

    if-nez p1, :cond_0

    .line 505
    sget-object p0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 507
    sget-object p0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 509
    sget-object p0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    return-object p0

    .line 511
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    return-object p0
.end method

.method private convertIpAssignmentToIndex(Landroid/net/IpConfiguration$IpAssignment;)I
    .locals 1

    .line 470
    sget-object p0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p1, p0}, Landroid/net/IpConfiguration$IpAssignment;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 472
    :cond_0
    sget-object p0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p1, p0}, Landroid/net/IpConfiguration$IpAssignment;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private convertProxySettingsToIndex(Landroid/net/IpConfiguration$ProxySettings;)I
    .locals 1

    .line 491
    sget-object p0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p1, p0}, Landroid/net/IpConfiguration$ProxySettings;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 493
    :cond_0
    sget-object p0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p1, p0}, Landroid/net/IpConfiguration$ProxySettings;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 495
    :cond_1
    sget-object p0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p1, p0}, Landroid/net/IpConfiguration$ProxySettings;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v0
.end method

.method private convertToIpv4Address(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 635
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_3

    .line 638
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x2

    move v1, v0

    .line 643
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 646
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    sub-int/2addr p0, v2

    .line 648
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private convertToProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1102
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_2

    .line 1104
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object p0

    .line 1105
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v0

    .line 1106
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 1107
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    move-result-object p1

    .line 1104
    :goto_0
    invoke-static {p0, v0, p1}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object p0

    goto :goto_1

    .line 1109
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private disableViewsIfAppropriate()V
    .locals 3

    .line 1056
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1057
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 1058
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingDropdown:Landroidx/preference/DropDownPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1064
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingDropdown:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1065
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method private enableSaveIfAppropriate()V
    .locals 2

    .line 803
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->ipAndProxyFieldsAreValid()Z

    move-result v0

    .line 804
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mCallback:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidatorCallback;

    if-eqz v1, :cond_0

    .line 805
    invoke-interface {v1, p0, v0}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidatorCallback;->onValidationChanged(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$Validator;Z)V

    .line 807
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-nez p0, :cond_1

    return-void

    .line 808
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    return-void
.end method

.method private generateBlankFields(Ljava/net/Inet4Address;)V
    .locals 2

    const-string v0, "WifiNetworkConfigPrefCtrl"

    const-string v1, "generateBlankFields"

    .line 971
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    sget v1, Lcom/android/settings/R$string;->wifi_network_prefix_length_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 977
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 981
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v0, :cond_1

    const/16 v1, 0x20

    .line 990
    :catch_0
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 993
    :try_start_1
    invoke-virtual {p1}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object p1

    .line 994
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aput-byte v1, p1, v0

    .line 995
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 996
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1002
    :catch_1
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1004
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    sget v0, Lcom/android/settings/R$string;->wifi_dns1_hint:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(I)V

    .line 1005
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1007
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 0

    .line 1012
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

.method private getIpConfigFields(Landroid/net/LinkProperties;Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;)V
    .locals 7

    .line 542
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 543
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "WifiNetworkConfigPrefCtrl"

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 544
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 545
    invoke-virtual {v1}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v4

    .line 546
    sget-boolean v5, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setIpConfigFields ip "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 549
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->ipv4Address:Ljava/lang/String;

    .line 550
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->networkPrefix:Ljava/lang/String;

    goto :goto_1

    .line 553
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->convertToIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->ipv4Address:Ljava/lang/String;

    .line 554
    invoke-virtual {v1}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->convertToIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->networkPrefix:Ljava/lang/String;

    goto :goto_0

    .line 558
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 559
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 560
    sget-boolean v5, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->DBG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setIpConfigFields gw "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_4
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 563
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 564
    :cond_5
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->convertToIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    iput-object v4, p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->gateway:Ljava/lang/String;

    goto :goto_2

    .line 568
    :cond_6
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 570
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "setIpConfigFields dns1 "

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    .line 571
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 572
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 573
    sget-boolean v5, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->DBG:Z

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_7
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move-object v4, v3

    goto :goto_4

    .line 576
    :cond_9
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_4
    iput-object v4, p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->dns1:Ljava/lang/String;

    .line 579
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 580
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    .line 581
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 582
    sget-boolean v4, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->DBG:Z

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_b
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_5

    .line 585
    :cond_c
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    move-object v3, v0

    :cond_d
    :goto_5
    iput-object v3, p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->dns2:Ljava/lang/String;

    :cond_e
    return-void
.end method

.method private getIpConfigFields(Landroid/net/StaticIpConfiguration;Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;)V
    .locals 6

    .line 591
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->ipv4Address:Ljava/lang/String;

    .line 593
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->networkPrefix:Ljava/lang/String;

    .line 595
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 596
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->gateway:Ljava/lang/String;

    .line 598
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 600
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v2, "setIpConfigFields dns1 "

    const-string v3, "WifiNetworkConfigPrefCtrl"

    if-eqz v0, :cond_6

    .line 601
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 602
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 603
    sget-boolean v5, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->DBG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_3
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move-object v4, v1

    goto :goto_3

    .line 606
    :cond_5
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_3
    iput-object v4, p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->dns1:Ljava/lang/String;

    .line 609
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 610
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    .line 611
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 612
    sget-boolean v4, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->DBG:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_7
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    .line 615
    :cond_8
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    move-object v1, v0

    :cond_9
    :goto_4
    iput-object v1, p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->dns2:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method private static getMiscPolicyService()Lcom/samsung/android/knox/IMiscPolicy;
    .locals 2

    .line 1084
    sget-object v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->sMiscPolicyService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v0, :cond_1

    .line 1086
    sget-object v1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->sMiscPolicyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1087
    :try_start_0
    sget-object v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->sMiscPolicyService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v0, :cond_0

    const-string v0, "misc_policy"

    .line 1090
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1089
    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->sMiscPolicyService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 1093
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 792
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 793
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 794
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_1
    const-string p0, "WifiNetworkConfigPrefCtrl"

    const-string p1, "getWifiConfigurationForNetworkId return null"

    .line 798
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getWifiProxyForSsid(Ljava/lang/String;)Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 1

    .line 1072
    invoke-static {}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->getMiscPolicyService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1074
    :try_start_0
    sget-object p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->sMiscPolicyService:Lcom/samsung/android/knox/IMiscPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/IMiscPolicy;->getProxyForSsid(Ljava/lang/String;)Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1076
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception occurred while retriving enterprise proxy information - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual {p0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiNetworkConfigPrefCtrl"

    .line 1076
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private handleCancelAction()V
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v1, "1045"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updatePreferenceByConfig()V

    const/4 v0, 0x1

    .line 727
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateBottomMode(I)V

    return-void
.end method

.method private handleSaveAction()V
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v1, "1046"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->saveConfig()V

    .line 720
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updatePreferenceByConfig()V

    const/4 v0, 0x1

    .line 721
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateBottomMode(I)V

    return-void
.end method

.method private initIpAssignmentOverride()V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    :cond_0
    return-void
.end method

.method private initProxySettingOverride()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    .line 459
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v1, :cond_0

    .line 460
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v1, :cond_1

    .line 462
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_0

    .line 464
    :cond_1
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    :cond_2
    :goto_0
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 5

    .line 812
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 813
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 814
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return v1

    .line 822
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v2, :cond_3

    .line 823
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 824
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validateIpConfigFields result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiNetworkConfigPrefCtrl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    .line 832
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 833
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyHostNameView:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 834
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 835
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 836
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyExclusionlistView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 840
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :try_start_1
    invoke-static {v0, v2, v3}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v4, v1

    .line 843
    :catch_1
    sget v2, Lcom/android/settings/R$string;->proxy_error_invalid_port:I

    :goto_1
    if-nez v2, :cond_4

    const-string v1, ","

    .line 848
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 847
    invoke-static {v0, v4, v1}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_2

    :cond_4
    return v1

    .line 852
    :cond_5
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v2, :cond_8

    .line 853
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 854
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v1

    .line 857
    :cond_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_7

    return v1

    .line 861
    :cond_7
    invoke-static {v0}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mHttpProxy:Landroid/net/ProxyInfo;

    :cond_8
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method private isActive(I)Z
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$disableViewsIfAppropriate$10(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    .line 1065
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private static synthetic lambda$disableViewsIfAppropriate$9(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    .line 1061
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const-string p1, "WifiNetworkConfigPrefCtrl"

    const-string v0, "mIpSettingsDropDownListeners called"

    .line 186
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 188
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mSAScreenId:Ljava/lang/String;

    int-to-long v0, p1

    const-string v2, "1041"

    invoke-static {p2, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->initIpAssignmentOverride()V

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->setIpConfigFields()V

    const/4 p2, 0x1

    .line 193
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mAutoGenFirstTime:Z

    .line 194
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->convertIndexToIpAssignment(I)Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 195
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateIpPreference(I)V

    const/4 p1, 0x2

    .line 197
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateBottomMode(I)V

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->enableSaveIfAppropriate()V

    return p2
.end method

.method private synthetic lambda$new$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const-string p1, "WifiNetworkConfigPrefCtrl"

    const-string v0, "mProxySettingsDropDownListeners called"

    .line 203
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 205
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mSAScreenId:Ljava/lang/String;

    int-to-long v0, p1

    const-string v2, "1042"

    invoke-static {p2, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->initProxySettingOverride()V

    .line 209
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->setProxyConfigFields()V

    .line 210
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->convertIndexToProxySettings(I)Landroid/net/IpConfiguration$ProxySettings;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 211
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateProxyPreference(I)V

    const/4 p1, 0x2

    .line 213
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateBottomMode(I)V

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->enableSaveIfAppropriate()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$updateBottomMode$7(Landroid/view/View;)V
    .locals 0

    .line 712
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->handleSaveAction()V

    return-void
.end method

.method private synthetic lambda$updateBottomMode$8(Landroid/view/View;)V
    .locals 0

    .line 713
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->handleCancelAction()V

    return-void
.end method

.method private static synthetic lambda$updateIpPreference$2(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    .line 419
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private static synthetic lambda$updateIpPreference$3(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x1

    .line 421
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private static synthetic lambda$updateProxyPreference$4(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private static synthetic lambda$updateProxyPreference$5(Landroidx/preference/Preference;)V
    .locals 2

    .line 433
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "proxy_pac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private static synthetic lambda$updateProxyPreference$6(Landroidx/preference/Preference;)V
    .locals 2

    .line 437
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "proxy_pac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private saveConfig()V
    .locals 4

    .line 731
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "WifiNetworkConfigPrefCtrl"

    if-eqz v0, :cond_3

    .line 732
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 734
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 736
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->isActive(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 737
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v2

    .line 741
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveConfig mIpAssignment : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mProxySettings : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    .line 744
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 745
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 746
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 747
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 748
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 751
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "any"

    .line 752
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 755
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$2;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)V

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 768
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 769
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateConfig(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 771
    :cond_2
    new-instance v0, Landroid/net/IpConfiguration;

    invoke-direct {v0}, Landroid/net/IpConfiguration;-><init>()V

    .line 772
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, v2}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 773
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v2}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 774
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v0, v2}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 775
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v0, v2}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 776
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 777
    new-instance v0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v2}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 778
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    const-string p0, "save mTempConfig is SAVE FOR CONNECT"

    .line 779
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p0, "save mTempConfig is null"

    .line 782
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setIpConfigFields()V
    .locals 6

    .line 516
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    .line 517
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 519
    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields-IA;)V

    .line 521
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    const-string v5, "WifiNetworkConfigPrefCtrl"

    if-ne v3, v4, :cond_0

    if-eqz v1, :cond_0

    .line 522
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->getIpConfigFields(Landroid/net/LinkProperties;Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;)V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIpConfigFields by linkProperties : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 525
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->getIpConfigFields(Landroid/net/StaticIpConfiguration;Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;)V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIpConfigFields by staticConfig : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    iget-object v1, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->ipv4Address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 531
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    iget-object v1, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->gateway:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    iget-object v1, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->networkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    iget-object v1, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->dns1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    iget-object v0, v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->dns2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private setProxyConfigFields()V
    .locals 4

    .line 658
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    .line 659
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 662
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->getWifiProxyForSsid(Ljava/lang/String;)Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 664
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->convertToProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 669
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    if-lez v1, :cond_1

    .line 670
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyHostNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyExclusionlistView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private setupPreferenceByDefault()V
    .locals 7

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    sget v1, Lcom/android/settings/R$string;->wifi_ip_address_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 333
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    const-string v2, "inputType=ipAddress"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    sget v3, Lcom/android/settings/R$string;->wifi_gateway_hint:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    sget v3, Lcom/android/settings/R$string;->wifi_network_prefix_length_hint:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 341
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 342
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 343
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    sget v4, Lcom/android/settings/R$string;->wifi_dns1_hint:I

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 346
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->wifi_dns2_hint:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHint(I)V

    .line 351
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPacView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->proxy_url_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 356
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 358
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyHostNameView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->proxy_hostname_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 359
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyHostNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    sget v1, Lcom/android/settings/R$string;->proxy_port_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 363
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 365
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyExclusionlistView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->proxy_exclusionlist_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 366
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyExclusionlistView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private updateBottomMode(I)V
    .locals 2

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBottomMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNetworkConfigPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mListener:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$NetworkConfigChangeListener;

    if-nez v0, :cond_0

    return-void

    .line 702
    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$NetworkConfigChangeListener;->getBottomMode()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mListener:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$NetworkConfigChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$NetworkConfigChangeListener;->onChangeBottomMode(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 709
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->save_button:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    .line 710
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mCancelButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    .line 712
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mCancelButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private updateIpPreference(I)V
    .locals 2

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIpPreference mIpSettingDropdown : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNetworkConfigPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingDropdown:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    if-nez p1, :cond_0

    .line 419
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 421
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePreferenceByConfig()V
    .locals 4

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingDropdown:Landroidx/preference/DropDownPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 389
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->initIpAssignmentOverride()V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->convertIpAssignmentToIndex(Landroid/net/IpConfiguration$IpAssignment;)I

    move-result v0

    .line 392
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v2, v3}, Landroid/net/IpConfiguration$IpAssignment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->setIpConfigFields()V

    .line 395
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateIpPreference(I)V

    goto :goto_0

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingsInset:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 401
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingDropdown:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_3

    .line 402
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->initProxySettingOverride()V

    .line 403
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->convertProxySettingsToIndex(Landroid/net/IpConfiguration$ProxySettings;)I

    move-result v0

    .line 405
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration$ProxySettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 406
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->setProxyConfigFields()V

    .line 408
    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateProxyPreference(I)V

    goto :goto_1

    .line 410
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingsInset:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void
.end method

.method private updateProxyPreference(I)V
    .locals 2

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateProxyPreference mProxySettingDropdown : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNetworkConfigPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingDropdown:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    if-nez p1, :cond_0

    .line 430
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 432
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 436
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSummary(Landroidx/preference/DropDownPreference;I)V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_preference_summary_primary_color:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 444
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 445
    invoke-virtual {p1, p2}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 446
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 447
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    .line 448
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    return-void
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 6

    .line 867
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 869
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 870
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I

    return p0

    .line 872
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 873
    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_6

    .line 878
    :cond_2
    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mAutoGenFirstTime:Z

    if-eqz v2, :cond_3

    .line 879
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mAutoGenFirstTime:Z

    .line 880
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->generateBlankFields(Ljava/net/Inet4Address;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 887
    :cond_3
    new-instance v2, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v2}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 888
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v2

    .line 889
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDomains()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/StaticIpConfiguration$Builder;->setDomains(Ljava/lang/String;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v2

    .line 890
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v2

    .line 891
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object p1

    const/4 v2, -0x1

    .line 895
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    .line 896
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5

    const/16 v3, 0x20

    if-le v2, v3, :cond_4

    goto :goto_0

    .line 900
    :cond_4
    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v0, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v3}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    goto :goto_2

    .line 898
    :cond_5
    :goto_0
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_network_prefix_length:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 966
    :goto_1
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    return v0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 906
    :catch_0
    :try_start_2
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I

    goto :goto_1

    .line 903
    :catch_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_network_prefix_length_hint:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 909
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 910
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_6

    .line 913
    :try_start_3
    invoke-static {v0, v2}, Lcom/android/net/module/util/NetUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 914
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 915
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput-byte v3, v0, v2

    .line 916
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 921
    :cond_6
    :try_start_4
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_7

    .line 923
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_gateway:I

    goto :goto_1

    .line 925
    :cond_7
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 926
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_gateway:I

    goto :goto_1

    .line 928
    :cond_8
    invoke-virtual {p1, v0}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 931
    :catch_2
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 932
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 933
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 934
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_dns:I

    goto :goto_1

    .line 937
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 939
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 941
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_4

    .line 946
    :cond_a
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_b

    .line 948
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_dns:I

    goto/16 :goto_1

    .line 950
    :cond_b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 954
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 955
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_c

    .line 957
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_dns:I

    goto/16 :goto_1

    .line 959
    :cond_c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    :cond_d
    invoke-virtual {p1, v2}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 966
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    return v1

    :goto_5
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 967
    throw v0

    .line 883
    :catch_3
    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I

    return p0

    .line 874
    :cond_e
    :goto_6
    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I

    return p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 691
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingDropdown:Landroidx/preference/DropDownPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingDropdown:Landroidx/preference/DropDownPreference;

    if-eqz p1, :cond_0

    .line 692
    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 693
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateBottomMode(I)V

    .line 695
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->enableSaveIfAppropriate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    .line 241
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 242
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "ip_settings"

    .line 244
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingDropdown:Landroidx/preference/DropDownPreference;

    const-string v0, "ip_inset"

    .line 245
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingsInset:Landroidx/preference/Preference;

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingDropdown:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingsDropDownListeners:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingDropdown:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    const-string v0, "wifi_ip_address"

    .line 253
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 254
    sget v1, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/android/settings/R$string;->wifi_ip_address:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 255
    sget v2, Lcom/android/settings/R$id;->edittext:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    .line 256
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "gateway"

    .line 258
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 259
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->wifi_gateway:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 260
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mGatewayView:Landroid/widget/EditText;

    .line 261
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "wifi_network_prefix_length"

    .line 263
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 264
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->wifi_network_prefix_length:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 265
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    .line 266
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "wifi_dns1"

    .line 268
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 269
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->wifi_dns1:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 270
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns1View:Landroid/widget/EditText;

    .line 271
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "wifi_dns2"

    .line 273
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 274
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->wifi_dns2:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 275
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mDns2View:Landroid/widget/TextView;

    .line 276
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpSettingPrefs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "proxy_settings"

    .line 278
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingDropdown:Landroidx/preference/DropDownPreference;

    const-string v0, "proxy_inset"

    .line 279
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingsInset:Landroidx/preference/Preference;

    .line 282
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingDropdown:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_1

    .line 283
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingsDropDownListeners:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingDropdown:Landroidx/preference/DropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    const-string v0, "proxy_warning_limited_support"

    .line 287
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    .line 288
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$color;->sec_widget_body_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;->setTitleColor(I)V

    .line 289
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "proxy_pac"

    .line 291
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 292
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->proxy_url_title:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 293
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPacView:Landroid/widget/TextView;

    .line 294
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "proxy_hostname"

    .line 296
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 297
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->proxy_hostname_label:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 298
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyHostNameView:Landroid/widget/TextView;

    .line 299
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "proxy_port"

    .line 301
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 302
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->proxy_port_label:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 303
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    .line 304
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "proxy_exclusionlist"

    .line 306
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 307
    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->proxy_exclusionlist_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 308
    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxyExclusionlistView:Landroid/widget/TextView;

    .line 309
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettingPrefs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "network_config"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isValid()Z
    .locals 0

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->ipAndProxyFieldsAreValid()Z

    move-result p0

    return p0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public registerCallback(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidatorCallback;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mCallback:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidatorCallback;

    return-void
.end method

.method public setNetworkConfigExpandListener(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$NetworkConfigChangeListener;)V
    .locals 0

    .line 1024
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mListener:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$NetworkConfigChangeListener;

    return-void
.end method

.method public updatePreference()V
    .locals 2

    const-string v0, "WifiNetworkConfigPrefCtrl"

    const-string v1, "update ip setting and proxy setting preferences"

    .line 316
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 322
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updatePreferenceByConfig()V

    .line 323
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->setupPreferenceByDefault()V

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->disableViewsIfAppropriate()V

    return-void
.end method
