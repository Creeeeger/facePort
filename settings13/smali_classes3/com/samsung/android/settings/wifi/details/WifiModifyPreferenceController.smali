.class public Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiModifyPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;
    }
.end annotation


# static fields
.field private static final CSC_SUPPORT_EAP_AKA:Z

.field private static final DBG:Z

.field public static final SUPPORT_WAPI:Z

.field static final UNDESIRED_CERTIFICATES:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;


# instance fields
.field certListFromUCM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field certListFromUCM_uri:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivity:Landroid/app/Activity;

.field private mCanChangeEapMethod:Z

.field private mCancelButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

.field private mContext:Landroid/content/Context;

.field private mDisableReason:I

.field private mDns1Pref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mDns1View:Landroid/widget/EditText;

.field private mDns2Pref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mDns2View:Landroid/widget/EditText;

.field private mDoNotProvideEapUserCertString:Ljava/lang/String;

.field private mDoNotValidateEapServerString:Ljava/lang/String;

.field private mEapAnonymousIdPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mEapAnonymousView:Landroid/widget/EditText;

.field private mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

.field private mEapCaCertPref:Landroidx/preference/DropDownPreference;

.field private mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mEapDomainView:Landroid/widget/EditText;

.field protected mEapDomainViewWatcher:Landroid/text/TextWatcher;

.field private mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

.field private mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mEapIdentityErrorText:Landroid/widget/TextView;

.field private mEapIdentityView:Landroid/widget/EditText;

.field mEapMethodChangeListener:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;

.field private mEapMethodPref:Landroidx/preference/DropDownPreference;

.field private mEapOcspPref:Landroidx/preference/DropDownPreference;

.field private mEapUserCertPref:Landroidx/preference/DropDownPreference;

.field private mExternalValidationResult:Z

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mGatewayPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mGatewayView:Landroid/widget/EditText;

.field private final mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

.field private mIpAddrPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mIpAddressView:Landroid/widget/EditText;

.field private mIpSettingsPref:Landroidx/preference/DropDownPreference;

.field private mIsLockEnabled:Z

.field private mIsPasswordUnlocked:Z

.field private mIsTrustOnFirstUseSupported:Z

.field private mMeteredPref:Landroidx/preference/DropDownPreference;

.field private mNetworkPrefixLenPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mNetworkPrefixLengthView:Landroid/widget/EditText;

.field private mPasswordErrorText:Landroid/widget/TextView;

.field private mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

.field private mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mPasswordView:Landroid/widget/EditText;

.field protected mPasswordWatcher:Landroid/text/TextWatcher;

.field private mPhase2Pref:Landroidx/preference/DropDownPreference;

.field private mPrivacyPref:Landroidx/preference/DropDownPreference;

.field private mProxyExclusionListPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mProxyExclusionlistView:Landroid/widget/EditText;

.field private mProxyHostNamePref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mProxyHostNameView:Landroid/widget/EditText;

.field private mProxyPacPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mProxyPacView:Landroid/widget/EditText;

.field private mProxyPortPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mProxyPortView:Landroid/widget/EditText;

.field private mProxySettingsPref:Landroidx/preference/DropDownPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSAScreenId:Ljava/lang/String;

.field private mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

.field protected mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mTempPassword:Ljava/lang/String;

.field private mTrustOnFirstUse:Ljava/lang/String;

.field private mUnspecifiedCertString:Ljava/lang/String;

.field private mUseSystemCertsString:Ljava/lang/String;

.field private mWapiAaCertPref:Landroidx/preference/DropDownPreference;

.field private mWapiType:I

.field private mWapiUserCertPref:Landroidx/preference/DropDownPreference;

.field public mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mWifiEntrySecurity:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$2EPa_lO5-x9VEUCGkFWT1B7v8nY(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->lambda$setupButton$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VXoxW9nAzF9Amr4rwLg22Hyjffg(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->lambda$displayPreference$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dGic8GBc5IEyoL8F0suVzpXI2f4(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->lambda$loadCertificates$3(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fTS5bN0CtPmgD8iMWorRM6Ww-WY(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->lambda$setClickListenerOnPasswordButton$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$hykF2anzf4ISbXL4YvmVo9jk2KQ(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->lambda$loadCertificates$4(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zxcq8GMgSE39r0r3MTIISImr5t8(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->lambda$setupButton$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEapDomainView(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$menableSubmitIfAppropriate(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->enableSubmitIfAppropriate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mexitActivity(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->exitActivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpasswordCheck(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->passwordCheck(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 116
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->DBG:Z

    const-string v0, "MacRandSecret"

    const-string v1, "MacRandSapSecret"

    .line 219
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    .line 231
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_SupportWapi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->SUPPORT_WAPI:Z

    .line 234
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getNotificationStyle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    .line 233
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->CSC_SUPPORT_EAP_AKA:Z

    .line 235
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-void
.end method

.method constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 272
    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mExternalValidationResult:Z

    .line 208
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mCanChangeEapMethod:Z

    const-string v0, ""

    .line 211
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mTempPassword:Ljava/lang/String;

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiType:I

    .line 248
    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1668
    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$2;-><init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 1683
    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$3;-><init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainViewWatcher:Landroid/text/TextWatcher;

    .line 1707
    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$4;-><init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordWatcher:Landroid/text/TextWatcher;

    .line 273
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    .line 274
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 275
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 276
    iput-object p6, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 277
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mActivity:Landroid/app/Activity;

    .line 278
    iput-object p7, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    const-string p2, "WifiModifyPrefCtrl"

    if-nez p1, :cond_0

    const-string p1, "finish - WifiEntry is null"

    .line 280
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->exitActivity()V

    return-void

    .line 284
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    .line 285
    iget-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p4}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 286
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntrySecurity:I

    .line 287
    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 288
    iput-object p8, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSAScreenId:Ljava/lang/String;

    .line 290
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    sget p4, Lcom/android/settings/R$string;->wifi_select_cert:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    .line 291
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    sget p4, Lcom/android/settings/R$string;->wifi_do_not_validate_eap_server:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 292
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    sget p4, Lcom/android/settings/R$string;->wifi_use_system_certs:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    .line 293
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    sget p4, Lcom/android/settings/R$string;->wifi_do_not_provide_eap_user_cert:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 294
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    sget p4, Lcom/android/settings/R$string;->wifi_trust_on_first_use:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    .line 295
    invoke-virtual {p6}, Landroid/net/wifi/WifiManager;->isTrustOnFirstUseSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIsTrustOnFirstUseSupported:Z

    .line 296
    invoke-static {p3}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSupportVerifyingForPassword(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIsLockEnabled:Z

    .line 298
    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntrySecurity:I

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p3, 0x7

    if-ne p1, p3, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    .line 300
    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 301
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 303
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object p3

    .line 304
    new-instance p4, Landroid/util/ArraySet;

    iget-object p5, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget p6, Lcom/android/settings/R$array;->config_wifi_eap_sim_method_carrier_ssid_list:I

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 306
    new-instance p5, Landroid/util/ArraySet;

    iget-object p6, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    sget p7, Lcom/android/settings/R$array;->config_wifi_eap_aka_method_carrier_ssid_list:I

    invoke-virtual {p6, p7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p6

    invoke-direct {p5, p6}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 308
    new-instance p6, Landroid/util/ArraySet;

    iget-object p7, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p7

    sget p8, Lcom/android/settings/R$array;->config_wifi_eap_akaprime_method_carrier_ssid_list:I

    invoke-virtual {p7, p8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p7

    invoke-direct {p6, p7}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    const-string p7, "SIM"

    .line 311
    invoke-interface {p3, p4, p7}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p4, "AKA"

    .line 312
    invoke-interface {p3, p5, p4}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p4, "AKA\'"

    .line 313
    invoke-interface {p3, p6, p4}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 314
    invoke-interface {p3}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 315
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Set;

    .line 316
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 317
    invoke-interface {p5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 318
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "the eapMethod of "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is set to "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0, p4}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->setEapMethod(Ljava/lang/String;)V

    .line 320
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mCanChangeEapMethod:Z

    :cond_3
    return-void
.end method

.method private clearErrorTextForCaCert()V
    .locals 1

    const/16 v0, -0x63

    .line 1901
    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDisableReason:I

    .line 1902
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private convertFormattedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 608
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "%"

    .line 609
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "%%"

    .line 610
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private disableViewsIfAppropriate()V
    .locals 2

    .line 1971
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1972
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 1973
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1974
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1975
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1976
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method private enableSubmitIfAppropriate()V
    .locals 1

    .line 1781
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->isSubmittable()Z

    move-result v0

    .line 1782
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-nez p0, :cond_0

    return-void

    .line 1785
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    return-void
.end method

.method private exitActivity()V
    .locals 2

    .line 1660
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 1661
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    goto :goto_0

    .line 1663
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1664
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private exitActivityWithLogging()V
    .locals 2

    .line 1655
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v1, "1045"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->exitActivity()V

    return-void
.end method

.method private findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I
    .locals 3

    .line 817
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 819
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v2, p0, v0

    .line 820
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getEapMethod()Ljava/lang/String;
    .locals 0

    .line 794
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    .line 795
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "AKA\'"

    return-object p0

    :pswitch_1
    const-string p0, "AKA"

    return-object p0

    :pswitch_2
    const-string p0, "SIM"

    return-object p0

    :pswitch_3
    const-string p0, "PWD"

    return-object p0

    :pswitch_4
    const-string p0, "TTLS"

    return-object p0

    :pswitch_5
    const-string p0, "TLS"

    return-object p0

    :cond_0
    :goto_0
    const-string p0, "PEAP"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 0

    .line 1648
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

.method private getPhase2Method(I)I
    .locals 8

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPhase2Method eapMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->getEapMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phase2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiModifyPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->getEapMethod()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PEAP"

    .line 1592
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ", eap: "

    const-string v3, "Unknown phase2: "

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    if-eq p1, v6, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v7, :cond_1

    if-eq p1, v5, :cond_0

    .line 1610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v4, 0x7

    goto :goto_1

    :cond_1
    const/4 v4, 0x6

    goto :goto_1

    :cond_2
    const/4 v4, 0x5

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v7

    goto :goto_1

    :cond_5
    const-string v0, "TTLS"

    .line 1613
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    if-eq p1, v6, :cond_8

    if-eq p1, v4, :cond_4

    if-eq p1, v7, :cond_3

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    move v4, v6

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_4

    if-eq p1, v6, :cond_3

    :goto_0
    const/4 v4, 0x0

    :cond_8
    :goto_1
    return v4
.end method

.method private isSubmittable()Z
    .locals 11

    .line 1790
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1791
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1792
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntrySecurity:I

    if-ne v3, v1, :cond_0

    .line 1793
    invoke-static {v0, v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isValidWep(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntrySecurity:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1794
    invoke-static {v0, v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isValidPsk(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntrySecurity:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 1795
    invoke-static {v0, v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isValidSae(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1799
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubmittable passwordValid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiModifyPrefCtrl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntrySecurity:I

    const/4 v5, 0x6

    const/4 v6, 0x7

    const/4 v7, 0x3

    const-string v8, ""

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_4

    if-ne v3, v5, :cond_9

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    .line 1805
    invoke-virtual {v3}, Landroidx/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1807
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1809
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v8

    .line 1811
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isSubmittable caCertSelection : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :goto_2
    move v0, v2

    goto :goto_3

    .line 1816
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 1817
    invoke-virtual {v9}, Landroidx/preference/Preference;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    .line 1818
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1821
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    sget v3, Lcom/android/settings/R$string;->wifi_enter_domain_warning:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 1822
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    .line 1824
    :cond_7
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1827
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    sget v9, Lcom/android/settings/R$string;->wifi_do_not_validate_eap_server_warning:I

    invoke-virtual {v3, v9}, Landroidx/preference/Preference;->setTitle(I)V

    .line 1828
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_3

    .line 1830
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_3

    .line 1833
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1836
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1838
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1840
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_a
    move-object v3, v8

    .line 1842
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isSubmittable userCertSelection : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v2

    .line 1850
    :cond_b
    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntrySecurity:I

    if-eq v3, v7, :cond_12

    if-eq v3, v6, :cond_12

    if-ne v3, v5, :cond_c

    goto :goto_7

    :cond_c
    const/16 v5, 0x9

    if-ne v3, v5, :cond_15

    .line 1865
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1867
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1869
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_d
    move-object v3, v8

    .line 1871
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    .line 1872
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 1873
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    move v0, v2

    .line 1877
    :cond_f
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1879
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 1881
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1883
    :cond_10
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    .line 1884
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 1885
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_11
    :goto_6
    move v0, v2

    goto :goto_9

    .line 1853
    :cond_12
    :goto_7
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v5, "PEAP"

    if-eqz v3, :cond_13

    .line 1856
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_13
    move-object v3, v5

    .line 1858
    :goto_8
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "TTLS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "TLS"

    .line 1859
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "PWD"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1860
    :cond_14
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_6

    .line 1891
    :cond_15
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSubmittable "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mExternalValidationResult:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_16

    .line 1892
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mExternalValidationResult:Z

    if-eqz p0, :cond_16

    goto :goto_a

    :cond_16
    move v1, v2

    :goto_a
    return v1
.end method

.method private synthetic lambda$displayPreference$0(Landroid/view/View;)V
    .locals 0

    .line 452
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->setClickListenerOnPasswordButton()V

    return-void
.end method

.method private static synthetic lambda$loadCertificates$3(Ljava/lang/String;)Z
    .locals 5

    .line 921
    sget-object v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 922
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

.method private static synthetic lambda$loadCertificates$4(Ljava/lang/String;)Z
    .locals 5

    .line 967
    sget-object v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 968
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

.method private synthetic lambda$setClickListenerOnPasswordButton$5()V
    .locals 1

    .line 1181
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->showPassword()V

    const/4 v0, 0x1

    .line 1182
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIsPasswordUnlocked:Z

    return-void
.end method

.method private synthetic lambda$setupButton$1(Landroid/view/View;)V
    .locals 0

    .line 502
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->save()V

    return-void
.end method

.method private synthetic lambda$setupButton$2(Landroid/view/View;)V
    .locals 1

    .line 507
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    .line 508
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->exitActivityWithLogging()V

    return-void
.end method

.method private loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->getAndroidKeystoreAliasLoader()Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    move-result-object v3

    .line 894
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 896
    iget-object v5, v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 898
    iget-object v5, v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p4, :cond_1

    .line 900
    iget-boolean v5, v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIsTrustOnFirstUseSupported:Z

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0xa

    .line 901
    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 902
    iget-object v5, v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v5, "CACERT_"

    .line 906
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "USRPKEY_"

    const-string v7, "WifiModifyPrefCtrl"

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    .line 907
    invoke-virtual {v3}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getCaCertAliases()Ljava/util/Collection;

    move-result-object v3

    goto :goto_1

    .line 908
    :cond_2
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 909
    invoke-virtual {v3}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getKeyCertAliases()Ljava/util/Collection;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, "android.security.legacykeystore"

    .line 912
    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 911
    invoke-static {v3}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v3

    if-eqz v3, :cond_4

    const/16 v5, 0x3f2

    .line 914
    :try_start_0
    invoke-interface {v3, v0, v5}, Landroid/security/legacykeystore/ILegacyKeystore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "can\'t get the certificate list from android.security.legacykeystore"

    .line 916
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v3, v8

    :goto_0
    if-eqz v3, :cond_5

    .line 918
    array-length v5, v3

    if-eqz v5, :cond_5

    .line 919
    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda4;-><init>()V

    .line 920
    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 927
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 919
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    move-object v3, v8

    .line 932
    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    .line 933
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->sawUcmPrivateKeyForWifi()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 934
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 935
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 936
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->certListFromUCM:Ljava/util/List;

    .line 937
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->certListFromUCM_uri:Ljava/util/List;

    .line 939
    :try_start_1
    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v9

    move v10, v5

    :goto_2
    if-ge v10, v6, :cond_6

    .line 941
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 942
    invoke-static {v11}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 943
    invoke-static {v11}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 944
    invoke-virtual {v9, v12}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 945
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 946
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "add UCM List : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-direct {v1, v12, v11}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 948
    iget-object v12, v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->certListFromUCM:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    iget-object v12, v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->certListFromUCM_uri:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 951
    :cond_6
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->certListFromUCM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 952
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->certListFromUCM:Ljava/util/List;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 955
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception happened : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iput-object v8, v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->certListFromUCM:Ljava/util/List;

    .line 957
    iput-object v8, v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->certListFromUCM_uri:Ljava/util/List;

    .line 958
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    .line 964
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 965
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda5;-><init>()V

    .line 966
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 973
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 965
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 976
    :cond_8
    iget v0, v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntrySecurity:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    move-object/from16 v1, p3

    .line 977
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    move v1, v5

    .line 981
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 982
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 985
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 986
    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 987
    invoke-virtual {v2, v1}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 988
    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1032
    new-instance p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 1033
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    const/16 p1, 0x3f2

    .line 1034
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private passwordCheck(Ljava/lang/String;)V
    .locals 7

    .line 1721
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1723
    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntrySecurity:I

    const/16 v2, 0x8

    const-string v3, "[0-9A-Fa-f]*"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v4, :cond_5

    .line 1724
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x1a

    const/16 v6, 0xd

    if-le v0, v6, :cond_2

    if-eqz v1, :cond_1

    if-gt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :cond_2
    :goto_0
    if-nez v4, :cond_4

    if-nez v1, :cond_3

    .line 1728
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1730
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1732
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->max_char_reached:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1733
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_wifi_dialog_error_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1735
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1736
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_6

    .line 1738
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1739
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->wifi_ap_dialog_title_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1741
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1742
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    sget p1, Lcom/android/settings/R$string;->wifi_unchanged:I

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_6

    :cond_5
    const/4 v0, 0x3

    if-eq v1, v0, :cond_7

    const/4 v0, 0x7

    if-ne v1, v0, :cond_6

    goto :goto_2

    .line 1751
    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x40

    if-nez v0, :cond_8

    const/16 v1, 0x3f

    goto :goto_3

    :cond_7
    :goto_2
    const/16 v1, 0xc8

    .line 1756
    :cond_8
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_b

    .line 1757
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_4
    if-ltz v0, :cond_a

    .line 1758
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1759
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    if-gt v3, v1, :cond_9

    .line 1760
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1764
    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->max_char_reached:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1765
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_wifi_dialog_error_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1767
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1768
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_6

    .line 1770
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1771
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->wifi_ap_dialog_title_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1773
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1774
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    sget p1, Lcom/android/settings/R$string;->wifi_unchanged:I

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(I)V

    :cond_c
    :goto_6
    return-void
.end method

.method private refreshEapItems(I)V
    .locals 5

    const-string v0, "WifiModifyPrefCtrl"

    const-string v1, "refreshEapItems"

    .line 666
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    if-ltz p1, :cond_16

    .line 668
    array-length v3, v1

    if-lt p1, v3, :cond_0

    goto/16 :goto_4

    .line 677
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 678
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 679
    aget-object v1, v1, p1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 680
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    .line 681
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->setEapMethod(Ljava/lang/String;)V

    .line 683
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string p1, "PEAP"

    .line 684
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x1

    if-nez p1, :cond_5

    const-string p1, "TTLS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "TLS"

    .line 691
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 692
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 693
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 694
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 695
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_3
    const-string p1, "PWD"

    .line 696
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 697
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 698
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 699
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 700
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 701
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->resetPasswordHint()V

    goto :goto_1

    .line 704
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 705
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 706
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 685
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 686
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 687
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 688
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 689
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->resetPasswordHint()V

    .line 709
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "refreshEapItems load Ca Certificates"

    .line 710
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const-string v4, "CACERT_"

    invoke-direct {p0, p1, v4, v1, v3}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 713
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_d

    .line 714
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 715
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result p1

    .line 716
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 717
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    .line 719
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    .line 721
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_8

    .line 723
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummaryWithWarning(Landroidx/preference/DropDownPreference;)V

    goto :goto_2

    .line 725
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    goto :goto_2

    .line 727
    :cond_9
    array-length v1, p1

    if-lez v1, :cond_b

    .line 728
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    aget-object v4, p1, v2

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_a

    .line 730
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummaryWithWarning(Landroidx/preference/DropDownPreference;)V

    .line 731
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    aget-object v4, p1, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    aget-object v4, p1, v2

    .line 732
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    aget-object p1, p1, v2

    .line 733
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 734
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    .line 737
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    goto :goto_2

    .line 741
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v1, v3}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 748
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getDomainSuffixMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 750
    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->setDomainVisible()V

    .line 753
    :cond_e
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "refreshEapItems load User Certificates"

    .line 754
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 757
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_12

    .line 758
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object p1

    .line 759
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 760
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_f

    .line 762
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    goto :goto_3

    .line 764
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    goto :goto_3

    .line 767
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_11

    .line 769
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    goto :goto_3

    .line 771
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 777
    :cond_12
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 778
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_13

    .line 779
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object p1

    .line 780
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 781
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 782
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 786
    :cond_13
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 787
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_14

    .line 788
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getOcsp()I

    move-result v2

    .line 787
    :cond_14
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    :cond_15
    return-void

    .line 669
    :cond_16
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshEapItems: method= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " entries null or length error"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 671
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 672
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 673
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 674
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 356
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 357
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private resetPasswordHint()V
    .locals 2

    .line 1202
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    sget v1, Lcom/android/settings/R$string;->wifi_unchanged:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 1203
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private save()V
    .locals 16

    move-object/from16 v0, p0

    .line 1250
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v2, "1046"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    .line 1252
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const-string v2, "WifiModifyPrefCtrl"

    if-nez v1, :cond_0

    const-string v1, "abnormally config of AP is null"

    .line 1254
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1258
    :cond_0
    iget v3, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntrySecurity:I

    const-string v4, "[0-9A-Fa-f]{64}"

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x22

    const-string v12, ""

    packed-switch v3, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v3, 0x8

    .line 1311
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1312
    new-instance v4, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v4}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1313
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1314
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1316
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1318
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v12

    .line 1320
    :goto_0
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v12

    .line 1325
    :cond_2
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v4}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1327
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v12

    .line 1329
    :goto_1
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v12, v4

    .line 1332
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WapiAsCert name= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WapiUserCert name= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v3, "WAPI Certificate"

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiCertSuite(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1300
    :pswitch_1
    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1301
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_28

    .line 1302
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1303
    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1304
    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_e

    .line 1306
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_e

    .line 1280
    :pswitch_2
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1281
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_28

    .line 1282
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_e

    .line 1263
    :pswitch_3
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_e

    :pswitch_4
    const/4 v2, 0x3

    const/4 v4, 0x5

    if-ne v3, v8, :cond_6

    .line 1341
    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_3

    :cond_6
    if-ne v3, v7, :cond_7

    const/16 v3, 0x9

    .line 1343
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_3

    .line 1345
    :cond_7
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1347
    :goto_3
    new-instance v3, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v3}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1349
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v11, "PEAP"

    if-eqz v3, :cond_8

    .line 1351
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_8
    move-object v3, v11

    .line 1353
    :goto_4
    iget-object v13, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v13, v13, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v13

    .line 1354
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "AKA\'"

    const-string v7, "AKA"

    const-string v8, "SIM"

    const-string v4, "TTLS"

    if-eqz v14, :cond_9

    .line 1355
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1356
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_5

    :cond_9
    const-string v14, "TLS"

    .line 1357
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1358
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_5

    .line 1359
    :cond_a
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1360
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1361
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_5

    :cond_b
    const-string v6, "PWD"

    .line 1362
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1363
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_5

    .line 1364
    :cond_c
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1365
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_5

    .line 1366
    :cond_d
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1367
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_5

    .line 1368
    :cond_e
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1369
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1371
    :cond_f
    :goto_5
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_18

    .line 1373
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1375
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_10
    move-object v2, v12

    .line 1377
    :goto_6
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 1378
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    .line 1379
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 1380
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 1381
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_7

    .line 1383
    :cond_11
    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIsTrustOnFirstUseSupported:Z

    if-eqz v5, :cond_12

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1384
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->enableTrustOnFirstUse(Z)V

    goto :goto_7

    .line 1385
    :cond_12
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1386
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v6, "/system/etc/security/cacerts"

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_7

    .line 1388
    :cond_13
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    new-array v6, v9, [Ljava/lang/String;

    aput-object v2, v6, v10

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 1391
    :cond_14
    :goto_7
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 1392
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_8

    .line 1395
    :cond_15
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 1396
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v5}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 1398
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1400
    :cond_16
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-direct {v0, v5, v2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result v2

    .line 1401
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    goto :goto_9

    .line 1393
    :cond_17
    :goto_8
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    goto :goto_9

    .line 1404
    :cond_18
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 1405
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    .line 1406
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    .line 1407
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 1409
    :goto_9
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1411
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 1413
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_19
    move-object v2, v12

    .line 1415
    :goto_a
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 1416
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    move-object v2, v12

    .line 1421
    :cond_1b
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    goto :goto_b

    .line 1423
    :cond_1c
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 1425
    :goto_b
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1426
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 1428
    :cond_1d
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1429
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1430
    :cond_1e
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 1431
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 1433
    :cond_1f
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_c

    .line 1442
    :cond_20
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_d

    .line 1434
    :cond_21
    :goto_c
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1435
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v3

    .line 1434
    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 1436
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->getEapMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x5

    if-eq v13, v2, :cond_22

    const/4 v2, 0x6

    if-eq v13, v2, :cond_22

    const/4 v2, 0x7

    if-ne v13, v2, :cond_23

    .line 1439
    :cond_22
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 1444
    :cond_23
    :goto_d
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1445
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_28

    .line 1446
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1450
    :cond_24
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1287
    :pswitch_5
    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1288
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_28

    .line 1289
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1290
    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1291
    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_e

    .line 1293
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1295
    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_e

    .line 1266
    :pswitch_6
    invoke-virtual {v1, v9}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1267
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_28

    .line 1268
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 1269
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_26

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_26

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_27

    :cond_26
    const-string v2, "[0-9A-Fa-f]*"

    .line 1272
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1273
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v2, v10

    goto :goto_e

    .line 1275
    :cond_27
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    goto :goto_e

    .line 1260
    :pswitch_7
    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1457
    :cond_28
    :goto_e
    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->setAdvancedItems(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1458
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V

    .line 1459
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1460
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->exitActivity()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sawUcmPrivateKeyForWifi()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 995
    sget-boolean p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->DBG:Z

    const-string v0, "WifiModifyPrefCtrl"

    const/16 v1, 0x3e8

    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sawUcmPrivateKeyForWifi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_0
    new-instance v2, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    const-string v3, "KNOX"

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    .line 997
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_1

    .line 998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_1
    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    if-eqz p0, :cond_2

    const-string p0, "UniversalCredentialUtil is null"

    .line 1001
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v3

    :cond_3
    const/4 v4, 0x1

    .line 1004
    invoke-virtual {v2, v1, v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->saw(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_4

    return-object v3

    :cond_4
    const-string v2, "stringarrayresponse"

    .line 1008
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_8

    if-eqz v1, :cond_7

    .line 1011
    array-length v2, v1

    if-eqz v2, :cond_6

    const/4 p0, 0x0

    .line 1012
    :goto_0
    array-length v2, v1

    if-ge p0, v2, :cond_8

    .line 1013
    aget-object v2, v1, p0

    .line 1014
    sget-boolean v3, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->DBG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempUri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_6
    if-eqz p0, :cond_8

    const-string p0, "uris length is 0"

    .line 1017
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    if-eqz p0, :cond_8

    const-string p0, "uris is null"

    .line 1020
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_8
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_9

    .line 1024
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 1025
    :cond_9
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1026
    :goto_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1027
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method private setAdvancedItems(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 8

    .line 1465
    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntrySecurity:I

    const/4 v1, 0x7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_6

    .line 1466
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->getEapMethod()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PEAP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->getEapMethod()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TTLS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1467
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    const-string v3, "WifiModifyPrefCtrl"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1468
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1469
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->getPhase2Method(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1470
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 1471
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAdvancedItems eapPhase2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->getEapMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_4

    .line 1475
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    goto :goto_0

    .line 1477
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1478
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 1482
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1483
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAdvancedItems eapAnonymousId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_6
    new-instance v0, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 1491
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 1492
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIpSettingsPref:Landroidx/preference/DropDownPreference;

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    .line 1493
    invoke-virtual {v2}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1494
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIpSettingsPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 1495
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_1

    :cond_7
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 1499
    :cond_8
    :goto_1
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v2, :cond_c

    .line 1500
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1501
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1504
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1505
    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v2, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v5}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1507
    :catch_0
    new-instance v4, Landroid/net/LinkAddress;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v4}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 1511
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1512
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 1514
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1515
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1517
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1518
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1519
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1521
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    :cond_a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1525
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1527
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1530
    :cond_b
    invoke-virtual {v0, v5}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    .line 1532
    :cond_c
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 1534
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 1535
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxySettingsPref:Landroidx/preference/DropDownPreference;

    if-eqz v4, :cond_e

    .line 1536
    invoke-virtual {v4}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1537
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxySettingsPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v4}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_d

    .line 1539
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_3

    :cond_d
    const/4 v3, 0x2

    if-ne v4, v3, :cond_e

    .line 1541
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    :cond_e
    :goto_3
    const/4 v3, 0x0

    .line 1547
    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v2, v4, :cond_f

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyHostNameView:Landroid/widget/EditText;

    if-eqz v4, :cond_f

    .line 1548
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1549
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1550
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyExclusionlistView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1551
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 1552
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, ","

    .line 1554
    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1553
    invoke-static {v4, v3, v5}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v3

    goto :goto_4

    .line 1556
    :cond_f
    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v2, v4, :cond_10

    .line 1557
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyPacView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 1558
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1559
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 1561
    invoke-static {v4}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v3

    :cond_10
    :goto_4
    if-nez v3, :cond_11

    .line 1565
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 1567
    :cond_11
    new-instance v4, Landroid/net/IpConfiguration;

    invoke-direct {v4}, Landroid/net/IpConfiguration;-><init>()V

    .line 1568
    invoke-virtual {v4, v1}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 1569
    invoke-virtual {v4, v2}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 1570
    invoke-virtual {v4, v0}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 1571
    invoke-virtual {v4, v3}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 1572
    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 1575
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1576
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    goto :goto_5

    .line 1578
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 1580
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1581
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    goto :goto_6

    .line 1583
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    iput p0, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    :goto_6
    return-object p1
.end method

.method private setClickListenerOnPasswordButton()V
    .locals 4

    .line 1170
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1171
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIsLockEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1173
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSAScreenId:Ljava/lang/String;

    int-to-long v2, v0

    const-string v0, "1021"

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1175
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1176
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->setPasswordWithMasking()V

    goto :goto_1

    .line 1178
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIsLockEnabled:Z

    if-eqz v0, :cond_5

    .line 1179
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIsPasswordUnlocked:Z

    if-nez v0, :cond_3

    .line 1180
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1185
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1186
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mTempPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->showPassword()V

    goto :goto_1

    .line 1191
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->showPassword()V

    :goto_1
    return-void
.end method

.method private setDefaultEAPPhase2Method(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PEAP"

    .line 658
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_0

    :cond_0
    const-string v0, "TTLS"

    .line 660
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 661
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setDomainVisible()V
    .locals 3

    .line 852
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 854
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 856
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 857
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    .line 858
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 862
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    .line 859
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 860
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private setEapMethod(Ljava/lang/String;)V
    .locals 2

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEapMethod : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiModifyPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PEAP"

    .line 640
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_0
    const-string v0, "TLS"

    .line 642
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_1
    const-string v0, "TTLS"

    .line 644
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_2
    const-string v0, "PWD"

    .line 646
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 647
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_3
    const-string v0, "SIM"

    .line 648
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 649
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_4
    const-string v0, "AKA"

    .line 650
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 651
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_5
    const-string v0, "AKA\'"

    .line 652
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 653
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private setOcspVisible()V
    .locals 2

    .line 868
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 870
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 872
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 873
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    .line 874
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 877
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    .line 875
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_2
    return-void
.end method

.method private setPasswordWithMasking()V
    .locals 2

    .line 1197
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1198
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private setupButton()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settings/R$id;->save_button:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-eqz v0, :cond_0

    .line 502
    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mCancelButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-eqz v0, :cond_1

    .line 506
    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private setupEapItems()V
    .locals 5

    .line 1040
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    sget-boolean v1, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    const-string v2, "SIM"

    const-string v3, "PEAP"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_0

    .line 1042
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    const-string v4, "CMCC"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1043
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1045
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1048
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS"

    .line 1049
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "TTLS"

    .line 1050
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "PWD"

    .line 1051
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1053
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "AKA"

    .line 1054
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "AKA\'"

    .line 1055
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 1059
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1060
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1062
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1064
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 1065
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupEapOcspItems()V
    .locals 4

    .line 1069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_do_not_validate_eap_server:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_eap_ocsp_request_cert_status:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_eap_ocsp_require_cert_status:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_eap_ocsp_require_all:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 1076
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1077
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1079
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1081
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 1082
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showErrorTextForCaCert()V
    .locals 2

    .line 1896
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    sget v1, Lcom/android/settings/R$string;->wifi_wrong_ca_cert_description:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 1897
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private showPassword()V
    .locals 2

    .line 1207
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1208
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private showSecurityFields(I)V
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eq p1, v1, :cond_8

    const/4 v3, 0x2

    if-eq p1, v3, :cond_8

    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v4, 0x3

    const/4 v5, 0x7

    const/4 v6, 0x6

    if-eq p1, v4, :cond_4

    if-eq p1, v5, :cond_4

    if-ne p1, v6, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    if-ne p1, v3, :cond_3

    .line 1130
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1131
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1132
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->refreshEapItems(I)V

    .line 1133
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1134
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1135
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_4

    :cond_3
    const/16 v3, 0x9

    if-ne p1, v3, :cond_a

    .line 1137
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1138
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1139
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1140
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1141
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1142
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->refreshEapItems(I)V

    .line 1143
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const-string v3, "WAPIAS_"

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1145
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const-string v3, "WAPIUSR_"

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 1109
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1111
    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntrySecurity:I

    if-ne p1, v6, :cond_5

    .line 1113
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    move p1, v1

    goto :goto_1

    .line 1115
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->getEapMethodOverride()I

    move-result p1

    if-ne p1, v0, :cond_6

    move p1, v2

    .line 1117
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mCanChangeEapMethod:Z

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1119
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->refreshEapItems(I)V

    .line 1120
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 1121
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1122
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1123
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v0

    if-nez p1, :cond_a

    .line 1124
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    if-eq v0, v3, :cond_7

    if-eq v0, v6, :cond_7

    if-ne v0, v5, :cond_a

    .line 1127
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_4

    .line 1097
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1098
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1099
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->refreshEapItems(I)V

    .line 1100
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1101
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1102
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1103
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1104
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    sget v0, Lcom/android/settings/R$string;->wifi_unchanged:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_4

    .line 1088
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1089
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1090
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1091
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->refreshEapItems(I)V

    .line 1092
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1093
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1151
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->input_password:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 1152
    sget v0, Lcom/android/settings/R$string;->wifi_show_password_contentdescription:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(I)V

    .line 1153
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->isPasswordVisibilityToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1154
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z

    move-result v0

    const-string v3, "1021"

    if-eqz v0, :cond_b

    .line 1155
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    .line 1156
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-wide/16 v0, 0x1

    invoke-static {p0, v3, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_6

    .line 1158
    :cond_b
    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    .line 1159
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mSAScreenId:Ljava/lang/String;

    .line 1160
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIsLockEnabled:Z

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x2

    goto :goto_5

    :cond_c
    const-wide/16 v0, 0x0

    .line 1159
    :goto_5
    invoke-static {p1, v3, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1161
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    const/16 p1, 0x81

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_d
    :goto_6
    return-void
.end method

.method private updateSecurity()V
    .locals 2

    .line 1212
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 1213
    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntrySecurity:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1242
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1239
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1236
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1233
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1227
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1218
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1230
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1224
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1221
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1215
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1245
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->passwordCheck(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSummary(Landroidx/preference/DropDownPreference;I)V
    .locals 3

    .line 616
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_preference_summary_primary_color:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 617
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 616
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 618
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    if-ltz p2, :cond_1

    .line 619
    array-length v1, v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 625
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->convertFormattedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 626
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 620
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateSummary: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " entries null or length error"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiModifyPrefCtrl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSummaryWithWarning(Landroidx/preference/DropDownPreference;)V
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_wifi_dialog_error_color:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 631
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 630
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 632
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 633
    invoke-virtual {p1, v1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 634
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->convertFormattedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 635
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 7

    .line 380
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 381
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "wapi_as_cert"

    .line 383
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    const-string v0, "wapi_user_cert"

    .line 384
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    .line 385
    sget-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->SUPPORT_WAPI:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    const-string v0, "eap_method"

    .line 393
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    .line 394
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 395
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    sget v2, Lcom/android/settings/R$string;->wifi_eap_method:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 396
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 397
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->setupEapItems()V

    const-string v0, "eap_ca_cert"

    .line 399
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    .line 400
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "eap_domain"

    .line 402
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 403
    sget v2, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v3, Lcom/android/settings/R$string;->wifi_eap_domain:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 404
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v3, Lcom/android/settings/R$id;->edittext:I

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    const/high16 v4, 0x80000

    .line 405
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapDomainViewWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v0, "eap_ocsp"

    .line 408
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    .line 409
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 410
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    sget v4, Lcom/android/settings/R$string;->wifi_eap_ocsp:I

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setTitle(I)V

    .line 411
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 412
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->setupEapOcspItems()V

    const-string v0, "eap_user_cert"

    .line 414
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    .line 415
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 419
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->disableViewsIfAppropriate()V

    const-string v0, "eap_ca_cert_error_text"

    .line 423
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    .line 424
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "wifi_eap_ca_error_text"

    .line 426
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    .line 427
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "eap_identity"

    .line 429
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 430
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->wifi_eap_identity:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 431
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    .line 432
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v4, Lcom/android/settings/R$id;->wifi_error_text:I

    invoke-virtual {v0, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdentityErrorText:Landroid/widget/TextView;

    .line 433
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    new-instance v6, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;

    invoke-direct {v6, p0, v5, v0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;-><init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 434
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdentityErrorText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntrySecurity:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_1

    const/4 v6, 0x7

    if-ne v0, v6, :cond_1

    const/4 v6, 0x6

    if-eq v0, v6, :cond_2

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    const-string v0, "wifi_password"

    .line 440
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 441
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->wifi_password:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 442
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    .line 443
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 444
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 445
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 446
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    .line 447
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->input_password:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 449
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text_input_end_icon"

    const-string v6, "id"

    invoke-virtual {v2, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 450
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v0, :cond_3

    .line 452
    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const-string v0, "eap_phase2"

    .line 455
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    const-string v0, "eap_anonymous"

    .line 456
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapAnonymousIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 457
    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    const-string v0, "ip_settings"

    .line 459
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIpSettingsPref:Landroidx/preference/DropDownPreference;

    const-string v0, "wifi_ip_address"

    .line 460
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIpAddrPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "gateway"

    .line 461
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mGatewayPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "wifi_network_prefix_length"

    .line 462
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mNetworkPrefixLenPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "wifi_dns1"

    .line 463
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDns1Pref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "wifi_dns2"

    .line 464
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDns2Pref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 466
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIpAddrPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    .line 467
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mGatewayPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mGatewayView:Landroid/widget/EditText;

    .line 468
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mNetworkPrefixLenPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    .line 469
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDns1Pref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDns1View:Landroid/widget/EditText;

    .line 470
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDns2Pref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDns2View:Landroid/widget/EditText;

    const-string v0, "proxy_settings"

    .line 472
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxySettingsPref:Landroidx/preference/DropDownPreference;

    const-string v0, "proxy_pac"

    .line 473
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyPacPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "proxy_hostname"

    .line 474
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyHostNamePref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "proxy_port"

    .line 475
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyPortPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "proxy_exclusionlist"

    .line 476
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyExclusionListPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 478
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyPacPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyPacView:Landroid/widget/EditText;

    .line 479
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyHostNamePref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyHostNameView:Landroid/widget/EditText;

    .line 480
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyPortPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    .line 481
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyExclusionListPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mProxyExclusionlistView:Landroid/widget/EditText;

    const-string v0, "metered"

    .line 483
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    const-string v0, "privacy"

    .line 484
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    .line 486
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_6

    .line 487
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mIsLockEnabled:Z

    if-eqz v0, :cond_4

    .line 488
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 490
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    goto :goto_1

    .line 492
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    sget v0, Lcom/android/settings/R$string;->wifi_unchanged:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 494
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mTempPassword:Ljava/lang/String;

    .line 496
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->setupButton()V

    return-void
.end method

.method getAndroidKeystoreAliasLoader()Lcom/android/settings/utils/AndroidKeystoreAliasLoader;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 883
    new-instance p0, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;-><init>(Ljava/lang/Integer;)V

    return-object p0
.end method

.method getEapMethodOverride()I
    .locals 3

    .line 830
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .line 839
    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p0

    const-string v2, "CMCC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 844
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getEapMethodOverride return "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiModifyPrefCtrl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1698
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-ne p1, p3, :cond_1

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    const/16 p1, 0xa0

    if-ne p2, p1, :cond_1

    .line 1699
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->isSubmittable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1700
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->save()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "WifiModifyPrefCtrl"

    const-string v1, "onPause"

    .line 363
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 522
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 523
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 525
    check-cast p1, Landroidx/preference/DropDownPreference;

    .line 526
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "WifiModifyPrefCtrl"

    if-eqz v1, :cond_c

    if-ltz p2, :cond_c

    .line 527
    array-length v4, v1

    if-lt p2, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v4, "wapi_as_cert"

    .line 532
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_b

    const-string v4, "wapi_user_cert"

    .line 533
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v4, "eap_method"

    .line 537
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange KEY_EAP_METHOD_PREF : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 540
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->refreshEapItems(I)V

    .line 542
    aget-object p1, v1, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 543
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->setDefaultEAPPhase2Method(Ljava/lang/String;)V

    .line 544
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->enableSubmitIfAppropriate()V

    .line 547
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->disableViewsIfAppropriate()V

    .line 549
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodChangeListener:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;

    if-eqz p0, :cond_2

    .line 550
    invoke-interface {p0}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;->onChanged()V

    :cond_2
    return v5

    :cond_3
    const-string v4, "eap_ocsp"

    .line 553
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange KEY_EAP_OCSP_PREF : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 556
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    return v5

    :cond_4
    const-string v4, "eap_ca_cert"

    .line 558
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange KEY_EAP_CA_CERT_PREF : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->clearErrorTextForCaCert()V

    .line 561
    aget-object v0, v1, p2

    .line 562
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 563
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 564
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v1, "/system/etc/security/cacerts"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    new-array v3, v5, [Ljava/lang/String;

    .line 568
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 567
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    :cond_6
    :goto_0
    if-nez p2, :cond_7

    .line 572
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummaryWithWarning(Landroidx/preference/DropDownPreference;)V

    goto :goto_1

    .line 574
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 576
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->setDomainVisible()V

    .line 577
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->setOcspVisible()V

    .line 578
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->enableSubmitIfAppropriate()V

    .line 581
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->disableViewsIfAppropriate()V

    return v5

    :cond_8
    const-string v4, "eap_user_cert"

    .line 585
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange KEY_EAP_USER_CERT_PREF : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    aget-object v0, v1, p2

    .line 588
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 589
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 591
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 592
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->enableSubmitIfAppropriate()V

    .line 595
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->disableViewsIfAppropriate()V

    return v5

    :cond_a
    return v2

    .line 534
    :cond_b
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 535
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->enableSubmitIfAppropriate()V

    return v5

    .line 528
    :cond_c
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPreferenceChange: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " entries null or length error"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public onResume()V
    .locals 4

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x0

    const-string v2, "WifiModifyPrefCtrl"

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get config "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_2

    const-string v0, "finish - mWifiConfig is null"

    .line 336
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->exitActivity()V

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntrySecurity:I

    .line 340
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->showSecurityFields(I)V

    .line 341
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSecurity()V

    .line 342
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->enableSubmitIfAppropriate()V

    .line 343
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->registerReceiver()V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 346
    invoke-static {v0, v2, v1}, Lcom/android/wifitrackerlib/Utils;->getSemWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 347
    iget v0, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDisableReason:I

    const/16 v2, -0x63

    if-eq v0, v2, :cond_3

    .line 350
    iput v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mDisableReason:I

    .line 351
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->showErrorTextForCaCert()V

    :cond_3
    return-void
.end method

.method public onUpdated()V
    .locals 5

    .line 1907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiModifyPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_2

    .line 1909
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get config "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    .line 1912
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiEntrySecurity:I

    .line 1913
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->showSecurityFields(I)V

    .line 1914
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->updateSecurity()V

    .line 1915
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->enableSubmitIfAppropriate()V

    .line 1918
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->setupButton()V

    .line 1920
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->refreshPreferences()V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mEapMethodChangeListener:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;

    return-void
.end method

.method public update(Z)V
    .locals 2

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update button state triggered by Validator "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiModifyPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mExternalValidationResult:Z

    .line 517
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->enableSubmitIfAppropriate()V

    return-void
.end method
