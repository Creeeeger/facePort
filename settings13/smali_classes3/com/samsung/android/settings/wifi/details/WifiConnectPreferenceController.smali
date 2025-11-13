.class public Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiConnectPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;,
        Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$EditTextWatcher;,
        Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;,
        Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field static final UNDESIRED_CERTIFICATES:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static mSharedPasswordCallback:Lcom/samsung/android/wifi/ISemSharedPasswordCallback;


# instance fields
.field private final mActiveSubscriptionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoReconnectPref:Landroidx/preference/SwitchPreferenceCompat;

.field private mBssid:Ljava/lang/String;

.field private mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

.field private mCanChangeEapMethod:Z

.field protected mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectingState:Z

.field private final mContext:Landroid/content/Context;

.field private mDetailedState:Landroid/net/NetworkInfo$DetailedState;

.field private mDisableReason:I

.field private mDns1Pref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mDns1View:Landroid/widget/EditText;

.field private mDns2Pref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mDns2View:Landroid/widget/EditText;

.field private final mDoNotProvideEapUserCertString:Ljava/lang/String;

.field private final mDoNotValidateEapServerString:Ljava/lang/String;

.field private mEapAnonymousIdPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mEapAnonymousView:Landroid/widget/EditText;

.field private mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

.field private mEapCaCertPref:Landroidx/preference/DropDownPreference;

.field private mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mEapDomainView:Landroid/widget/EditText;

.field protected mEapDomainViewWatcher:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$EditTextWatcher;

.field private mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

.field private mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mEapIdentityErrorText:Landroid/widget/TextView;

.field private mEapIdentityView:Landroid/widget/EditText;

.field mEapMethodChangeListener:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;

.field private mEapMethodPref:Landroidx/preference/DropDownPreference;

.field private mEapOcspPref:Landroidx/preference/DropDownPreference;

.field private mEapSimPref:Landroidx/preference/DropDownPreference;

.field private mEapUserCertPref:Landroidx/preference/DropDownPreference;

.field private final mEditTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mErrorDialogDiaply:Z

.field private mExternalValidationResult:Z

.field protected mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mGatewayPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mGatewayView:Landroid/widget/EditText;

.field private mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

.field private final mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

.field private mIpAddrPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mIpAddressView:Landroid/widget/EditText;

.field private mIpSettingsPref:Landroidx/preference/DropDownPreference;

.field private mIsLockEnabled:Z

.field private mIsPasswordUnlocked:Z

.field private mIsPasswordVisible:Z

.field private mIsRegistered:Z

.field private final mIsRetryPopup:Z

.field private mIsTrustOnFirstUseSupported:Z

.field private mLastNetworkId:I

.field private final mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private final mLog:Lcom/samsung/wifitrackerlib/LogUtils;

.field private mMeteredPref:Landroidx/preference/DropDownPreference;

.field private mNetworkId:I

.field private mNetworkPrefixLenPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mNetworkPrefixLengthView:Landroid/widget/EditText;

.field private mPasswordErrorText:Landroid/widget/TextView;

.field private mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

.field private mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

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

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mRejectCount:I

.field private final mSAScreenId:Ljava/lang/String;

.field private mSaveButtonPref:Lcom/samsung/android/settings/widget/SecButtonPreference;

.field public mSaveConfig:Landroid/net/wifi/WifiConfiguration;

.field protected mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mSecurityFieldsInitialized:Z

.field private final mSecurityInPosition:[Ljava/lang/Integer;

.field private mSecurityPref:Landroidx/preference/DropDownPreference;

.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSharedPasswordPref:Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;

.field private mSharingCanceled:Z

.field private mSharingPassword:Z

.field private mShouldShowMessageForRetry:Z

.field private mSsidErrorText:Landroid/widget/TextView;

.field private mSsidPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mSsidView:Landroid/widget/EditText;

.field protected mSsidWatcher:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$EditTextWatcher;

.field private final mSupportWapi:Z

.field private mTempPassword:Ljava/lang/String;

.field private mTempSsid:Ljava/lang/String;

.field private final mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

.field private final mTrustOnFirstUse:Ljava/lang/String;

.field private final mUnspecifiedCertString:Ljava/lang/String;

.field private mUpdateSaveState:Z

.field private final mUseSystemCertsString:Ljava/lang/String;

.field private mWapiAaCertPref:Landroidx/preference/DropDownPreference;

.field private mWapiUserCertPref:Landroidx/preference/DropDownPreference;

.field public mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mWifiEntrySecurity:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field startTime:J


# direct methods
.method public static synthetic $r8$lambda$4_nSe0aWQANQo6DrX2hLOWWsG70(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->lambda$connectWithSharedPassword$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$5srlMPN1Q0L3S-19PdpaBJsEacQ(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->lambda$connectWithSharedPassword$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$D51KaAHsFzCoN5Lj7h70GaGF-G4(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->lambda$setClickListenerOnPasswordButton$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$IHGGYiFrHufDNw5eMAOi2KNP9JI(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->lambda$loadCertificates$5(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PvjPgXqNwaEKbtMNWH-K8mPcf9Y(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->lambda$showErrorDialogForEnterprise$6(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$U3hxyF1ZpV-TzVL1iAJdZXheEz0(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->lambda$displayPreference$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_nilOS8qCi0l3T5CgfNaCdJByis(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->lambda$displayPreference$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$frFRdrSbKfpQ1EzY0Ki-oPjdsdE(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->lambda$displayPreference$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mGzyqAV6JvZyzo7FWq1GmMZrArk(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->lambda$displayPreference$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tgwiRi8dPBMkVyMx62o7i0YtBXE(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->lambda$loadCertificates$4(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonPref(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectingState(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDetailedState(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/net/NetworkInfo$DetailedState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDoNotValidateEapServerString(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEapCaCertPref(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroidx/preference/DropDownPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEapDomainView(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEapIdentityView(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImeHelper(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiImeHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTrustOnFirstUseSupported(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsTrustOnFirstUseSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetworkId(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mLastNetworkId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLog(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Lcom/samsung/wifitrackerlib/LogUtils;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mLog:Lcom/samsung/wifitrackerlib/LogUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkId(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordView(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSAScreenId(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Lcom/samsung/android/wifi/SemWifiManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSharedPasswordPref(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordPref:Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSharingPassword(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingPassword:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSsidErrorText(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSsidView(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempSsid(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempSsid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimer(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrustOnFirstUse(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConnectingState(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDetailedState(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmErrorDialogDiaply(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiaply:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastNetworkId(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mLastNetworkId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShouldShowMessageForRetry(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mShouldShowMessageForRetry:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTempSsid(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempSsid:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearErrorTextUnderEditText(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->clearErrorTextUnderEditText(Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconnectWithSharedPassword(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->connectWithSharedPassword(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableViewsIfAppropriate(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->disableViewsIfAppropriate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableSubmitIfAppropriate(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->enableSubmitIfAppropriate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindIndexOfValue(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroidx/preference/DropDownPreference;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mfinishActivity(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->finishActivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadCertificates(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpasswordCheck(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->passwordCheck(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrejectSharedPassword(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->rejectSharedPassword()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetProgressButtonAndPreference(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->resetProgressButtonAndPreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscrollToTop(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->scrollToTop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDomainVisible(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setDomainVisible()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetOcspVisible(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setOcspVisible()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetProfileSharingMode(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setProfileSharingMode(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowErrorDialog(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowErrorDialogForEnterprise(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialogForEnterprise(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowErrorTextMsg(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorTextMsg(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowErrorTextUnderEditText(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroid/widget/EditText;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorTextUnderEditText(Landroid/widget/EditText;Landroid/widget/TextView;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEapSimPref(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateEapSimPref()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSummary(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroidx/preference/DropDownPreference;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 148
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->DBG:Z

    const-string v0, "MacRandSecret"

    const-string v1, "MacRandSapSecret"

    .line 208
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;ZLandroidx/fragment/app/Fragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 477
    invoke-direct {p0, p4}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 278
    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    .line 279
    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mLastNetworkId:I

    const-string v1, ""

    .line 280
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mBssid:Ljava/lang/String;

    const/4 v1, 0x0

    .line 288
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsPasswordVisible:Z

    .line 289
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUpdateSaveState:Z

    .line 298
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEditTexts:Ljava/util/ArrayList;

    const/4 v2, 0x1

    .line 303
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mCanChangeEapMethod:Z

    .line 304
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    .line 318
    iput v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mRejectCount:I

    .line 320
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mExternalValidationResult:Z

    .line 323
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingPassword:Z

    .line 336
    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1903
    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$5;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 2395
    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 2427
    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$7;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 2443
    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$8;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    const/4 v2, 0x0

    .line 2454
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempSsid:Ljava/lang/String;

    .line 2455
    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidWatcher:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$EditTextWatcher;

    .line 2505
    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$10;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainViewWatcher:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$EditTextWatcher;

    .line 3110
    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$11;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordWatcher:Landroid/text/TextWatcher;

    .line 478
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    .line 479
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Wifi_SupportWapi"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSupportWapi:Z

    .line 481
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 482
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 483
    iput-object p6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p3, "sem_wifi"

    .line 484
    invoke-virtual {p4, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 485
    iput-object p7, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    if-nez p1, :cond_0

    const/4 p3, 0x2

    goto :goto_0

    .line 487
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p3

    :goto_0
    iput p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    if-eqz p1, :cond_1

    .line 488
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 489
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez p3, :cond_2

    .line 490
    new-instance p3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_1

    .line 492
    :cond_2
    iget-object p3, p3, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mBssid:Ljava/lang/String;

    .line 494
    :goto_1
    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 495
    iput-object p8, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    .line 496
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsRetryPopup:Z

    .line 497
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mShouldShowMessageForRetry:Z

    .line 498
    sget p2, Lcom/android/settings/R$string;->wifi_select_cert:I

    invoke-virtual {p4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    .line 499
    sget p2, Lcom/android/settings/R$string;->wifi_do_not_validate_eap_server:I

    invoke-virtual {p4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 500
    sget p2, Lcom/android/settings/R$string;->wifi_use_system_certs:I

    invoke-virtual {p4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    .line 501
    sget p2, Lcom/android/settings/R$string;->wifi_do_not_provide_eap_user_cert:I

    invoke-virtual {p4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 502
    sget p2, Lcom/android/settings/R$string;->wifi_trust_on_first_use:I

    invoke-virtual {p4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    .line 503
    invoke-virtual {p6}, Landroid/net/wifi/WifiManager;->isTrustOnFirstUseSupported()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsTrustOnFirstUseSupported:Z

    .line 504
    new-instance p2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    const/16 p2, 0xa

    new-array p2, p2, [Ljava/lang/Integer;

    .line 505
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    .line 506
    invoke-virtual {p6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 507
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    :cond_3
    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mLastNetworkId:I

    .line 508
    invoke-static {p4}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSupportVerifyingForPassword(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsLockEnabled:Z

    .line 510
    new-instance p2, Lcom/samsung/wifitrackerlib/LogUtils;

    invoke-direct {p2}, Lcom/samsung/wifitrackerlib/LogUtils;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mLog:Lcom/samsung/wifitrackerlib/LogUtils;

    .line 512
    iget p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 p3, 0x3

    if-eq p2, p3, :cond_4

    const/4 p3, 0x7

    if-ne p2, p3, :cond_6

    :cond_4
    if-eqz p1, :cond_6

    .line 513
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {p4}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 514
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    .line 515
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 516
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object p2

    .line 517
    new-instance p3, Landroid/util/ArraySet;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget p6, Lcom/android/settings/R$array;->config_wifi_eap_sim_method_carrier_ssid_list:I

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p5}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 519
    new-instance p5, Landroid/util/ArraySet;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    sget p7, Lcom/android/settings/R$array;->config_wifi_eap_aka_method_carrier_ssid_list:I

    invoke-virtual {p6, p7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p6

    invoke-direct {p5, p6}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 521
    new-instance p6, Landroid/util/ArraySet;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p7, Lcom/android/settings/R$array;->config_wifi_eap_akaprime_method_carrier_ssid_list:I

    invoke-virtual {p4, p7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p4

    invoke-direct {p6, p4}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    const-string p4, "SIM"

    .line 524
    invoke-interface {p2, p3, p4}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p3, "AKA"

    .line 525
    invoke-interface {p2, p5, p3}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p3, "AKA\'"

    .line 526
    invoke-interface {p2, p6, p3}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 527
    invoke-interface {p2}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 528
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Set;

    .line 529
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 530
    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 531
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "the eapMethod of "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is set to "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiConnectPrefController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setEapMethod(Ljava/lang/String;)V

    .line 534
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mCanChangeEapMethod:Z

    :cond_6
    return-void
.end method

.method private checkAndShowErrorMessageForRetry()V
    .locals 2

    .line 3208
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mShouldShowMessageForRetry:Z

    if-eqz v0, :cond_2

    .line 3209
    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDisableReason:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3210
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorTextMsg(I)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3212
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorTextMsg(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 3214
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorTextMsg(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private clearErrorTextForCaCert()V
    .locals 1

    const/16 v0, -0x63

    .line 3225
    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDisableReason:I

    .line 3226
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private clearErrorTextUnderEditText(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 1

    const/16 v0, 0x8

    .line 3202
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3203
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    .line 3204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$color;->wifi_ap_dialog_title_text_color:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 3203
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private connectWithSharedPassword(Ljava/lang/String;)V
    .locals 3

    .line 2789
    sget-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectWithSaredPW : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectPrefController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->stopShareTimer()V

    .line 2791
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingPassword:Z

    if-nez v0, :cond_1

    .line 2792
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    .line 2793
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2795
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2796
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2798
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2801
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private convertFormattedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1046
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "%"

    .line 1047
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "%%"

    .line 1048
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private disableViewsIfAppropriate()V
    .locals 2

    .line 2755
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2756
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 2757
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2758
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2759
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2760
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method private enableSubmitIfAppropriate()V
    .locals 1

    .line 2569
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz v0, :cond_0

    return-void

    .line 2570
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->isSubmittable()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setButtonEnable(Z)V

    return-void
.end method

.method private findEditTextFromLayout(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 3

    .line 1116
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1117
    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1120
    :cond_0
    sget v1, Lcom/android/settings/R$id;->edittext:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1121
    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 1122
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEditTexts:Ljava/util/ArrayList;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    instance-of p0, v0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 1124
    sget-boolean p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->DBG:Z

    if-eqz p0, :cond_1

    .line 1125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "findEditTextFromLayout add mEditTexts :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiConnectPrefController"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private findEditTextFromPreference(Landroidx/preference/Preference;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1104
    :cond_0
    instance-of v0, p1, Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_1

    .line 1105
    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 1106
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->findEditTextFromLayout(Lcom/android/settingslib/widget/LayoutPreference;)V

    goto :goto_1

    .line 1107
    :cond_1
    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1108
    :goto_0
    move-object v1, p1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1109
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 1110
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->findEditTextFromPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I
    .locals 3

    .line 1318
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1320
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v2, p0, v0

    .line 1321
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

.method private finishActivity()V
    .locals 2

    .line 2387
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 2388
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    goto :goto_0

    .line 2390
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2391
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private getEapMethod()Ljava/lang/String;
    .locals 0

    .line 1295
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    .line 1296
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

    .line 2767
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

    .line 2329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPhase2Method eapMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->getEapMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phase2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectPrefController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->getEapMethod()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PEAP"

    .line 2332
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

    .line 2350
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

    .line 2353
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    if-eq p1, v6, :cond_8

    if-eq p1, v4, :cond_4

    if-eq p1, v7, :cond_3

    .line 2368
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

.method private isEapMethodWithPassword()Z
    .locals 1

    .line 2742
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "PEAP"

    if-eqz p0, :cond_0

    .line 2745
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 2747
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "TTLS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "PWD"

    .line 2748
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private isProfileShareSupport()Z
    .locals 3

    .line 2824
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MCF_SUPPORT_FRAMEWORK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WifiConnectPrefController"

    if-nez v0, :cond_0

    const-string p0, "SEC_FLOATING_FEATURE_MCF_SUPPORT_FRAMEWORK disabled"

    .line 2825
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2828
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->isSupportProfileRequest()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "device not support ProfileShare"

    .line 2829
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2832
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->isProfileShareSupportedAP(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 2836
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mBssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "BSSID is null"

    .line 2837
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2840
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ContactHelper;->getMyMobileNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string p0, "Owner number is empty"

    .line 2841
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2844
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/ContactHelper;->isContactsEmpty(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "No contact"

    .line 2845
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_0
    const-string p0, "ProfileShare not supported AP"

    .line 2833
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isProfileShareSupportedAP(I)Z
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private isSubmittable()Z
    .locals 11

    .line 2622
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    const/4 v1, 0x7

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 2623
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2624
    iget v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    if-ne v5, v3, :cond_0

    invoke-static {v0, v4}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isValidWep(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 2625
    invoke-static {v0, v4}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isValidPsk(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 2626
    invoke-static {v0, v4}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isValidSae(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    .line 2628
    :cond_3
    iget v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    if-eq v5, v2, :cond_4

    if-ne v5, v1, :cond_5

    .line 2630
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2631
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->isEapMethodWithPassword()Z

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v4

    .line 2636
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSubmittable passwordInvalid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WifiConnectPrefController"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v5}, Landroidx/preference/Preference;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-eqz v5, :cond_a

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v5, :cond_7

    .line 2638
    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    if-nez v0, :cond_a

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v5, :cond_9

    .line 2639
    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v0, :cond_9

    goto :goto_1

    .line 2643
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSubmittable enabled1 : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_2

    .line 2641
    :cond_a
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSubmittable mSsidView enabled : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 2646
    :goto_2
    iget v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 v7, 0x6

    const-string v8, ""

    if-eq v5, v2, :cond_b

    if-eq v5, v1, :cond_b

    if-ne v5, v7, :cond_10

    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    .line 2649
    invoke-virtual {v5}, Landroidx/preference/Preference;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2651
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v5}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 2653
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_c
    move-object v5, v8

    .line 2655
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isSubmittable caCertSelection : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    :goto_4
    move v0, v4

    goto :goto_5

    .line 2660
    :cond_d
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    .line 2661
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 2662
    invoke-virtual {v9}, Landroidx/preference/Preference;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    .line 2663
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2666
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    sget v5, Lcom/android/settings/R$string;->wifi_enter_domain_warning:I

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 2667
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_4

    .line 2669
    :cond_e
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2672
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    sget v9, Lcom/android/settings/R$string;->wifi_do_not_validate_eap_server_warning:I

    invoke-virtual {v5, v9}, Landroidx/preference/Preference;->setTitle(I)V

    .line 2673
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_5

    .line 2674
    :cond_f
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mShouldShowMessageForRetry:Z

    if-nez v5, :cond_11

    iget v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDisableReason:I

    const/16 v9, 0xb

    if-eq v5, v9, :cond_11

    .line 2676
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_5

    .line 2679
    :cond_10
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 2682
    :cond_11
    :goto_5
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v5}, Landroidx/preference/Preference;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2684
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v5}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 2686
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_12
    move-object v5, v8

    .line 2688
    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isSubmittable userCertSelection : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v0, v4

    .line 2696
    :cond_13
    iget v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    if-eq v5, v2, :cond_1a

    if-eq v5, v1, :cond_1a

    if-ne v5, v7, :cond_14

    goto :goto_9

    :cond_14
    const/16 v1, 0x9

    if-ne v5, v1, :cond_1d

    .line 2711
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2713
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 2715
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_15
    move-object v1, v8

    .line 2717
    :goto_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    .line 2718
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 2719
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    move v0, v4

    .line 2723
    :cond_17
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2725
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 2727
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2729
    :cond_18
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    .line 2730
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 2731
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_19
    :goto_8
    move v0, v4

    goto :goto_b

    .line 2699
    :cond_1a
    :goto_9
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "PEAP"

    if-eqz v1, :cond_1b

    .line 2702
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_1b
    move-object v1, v2

    .line 2704
    :goto_a
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "TTLS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "TLS"

    .line 2705
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "PWD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2706
    :cond_1c
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_8

    .line 2737
    :cond_1d
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSubmittable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mExternalValidationResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1e

    .line 2738
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mExternalValidationResult:Z

    if-eqz p0, :cond_1e

    goto :goto_c

    :cond_1e
    move v3, v4

    :goto_c
    return v3
.end method

.method private isSupportProfileRequest()Z
    .locals 3

    .line 2859
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "WifiConnectPrefController"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "UPSM mode or EmergencyMode is turned on"

    .line 2860
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2863
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedProfileRequest()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Device not support ProfileShare"

    .line 2864
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2867
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "nearby_scanning_enabled"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const-string p0, "Nearby scanning is disabled"

    .line 2868
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    return v0
.end method

.method private synthetic lambda$connectWithSharedPassword$7()V
    .locals 1

    const/4 v0, 0x0

    .line 2799
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->save(ZZ)V

    return-void
.end method

.method private synthetic lambda$connectWithSharedPassword$8()V
    .locals 0

    .line 2802
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->finishActivity()V

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Landroid/view/View;)V
    .locals 0

    .line 903
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setClickListenerOnPasswordButton()V

    return-void
.end method

.method private synthetic lambda$displayPreference$1(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 946
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->save(ZZ)V

    return-void
.end method

.method private synthetic lambda$displayPreference$2(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 953
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->save(ZZ)V

    return-void
.end method

.method private synthetic lambda$displayPreference$3(Landroid/view/View;)V
    .locals 0

    .line 957
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->requestpassword()V

    return-void
.end method

.method private static synthetic lambda$loadCertificates$4(Ljava/lang/String;)Z
    .locals 5

    .line 1420
    sget-object v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1421
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

.method private static synthetic lambda$loadCertificates$5(Ljava/lang/String;)Z
    .locals 5

    .line 1432
    sget-object v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1433
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

.method private synthetic lambda$setClickListenerOnPasswordButton$9()V
    .locals 1

    .line 2889
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showPassword()V

    const/4 v0, 0x1

    .line 2890
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsPasswordUnlocked:Z

    return-void
.end method

.method private synthetic lambda$showErrorDialogForEnterprise$6(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 1752
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1392
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->getAndroidKeystoreAliasLoader()Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    move-result-object v0

    .line 1393
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1395
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 1397
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x6

    if-eqz p4, :cond_1

    .line 1399
    iget-boolean p4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsTrustOnFirstUseSupported:Z

    if-eqz p4, :cond_1

    iget p4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    if-eq p4, v2, :cond_1

    .line 1401
    iget-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p4, "CACERT_"

    .line 1405
    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v3, 0x0

    if-eqz p4, :cond_2

    .line 1406
    invoke-virtual {v0}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getCaCertAliases()Ljava/util/Collection;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string p4, "USRPKEY_"

    .line 1407
    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 1408
    invoke-virtual {v0}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getKeyCertAliases()Ljava/util/Collection;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string p4, "android.security.legacykeystore"

    .line 1411
    invoke-static {p4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p4

    .line 1410
    invoke-static {p4}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object p4

    if-eqz p4, :cond_4

    const/16 v0, 0x3f2

    .line 1413
    :try_start_0
    invoke-interface {p4, p2, v0}, Landroid/security/legacykeystore/ILegacyKeystore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "WifiConnectPrefController"

    const-string p4, "can\'t get the certificate list from android.security.legacykeystore"

    .line 1415
    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object p2, v3

    :goto_0
    if-eqz p2, :cond_5

    .line 1417
    array-length p4, p2

    if-eqz p4, :cond_5

    .line 1418
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p4, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda4;

    invoke-direct {p4}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda4;-><init>()V

    .line 1419
    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 1426
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 1418
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 1429
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result p2

    if-eqz p2, :cond_6

    .line 1430
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p4, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda5;

    invoke-direct {p4}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda5;-><init>()V

    .line 1431
    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 1438
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 1430
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1441
    :cond_6
    iget p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    if-eq p0, v2, :cond_7

    .line 1442
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1445
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/CharSequence;

    const/4 p2, 0x0

    move p3, p2

    .line 1446
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_8

    .line 1447
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 1450
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/CharSequence;

    .line 1451
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 1452
    invoke-virtual {p1, p3}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1453
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private passwordCheck(Ljava/lang/String;)V
    .locals 6

    .line 2520
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2522
    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const-string v2, "[0-9A-Fa-f]*"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_5

    .line 2523
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x1a

    const/16 v5, 0xd

    if-le v0, v5, :cond_2

    if-eqz v1, :cond_1

    if-gt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :cond_2
    :goto_0
    if-nez v3, :cond_4

    if-nez v1, :cond_3

    .line 2527
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2529
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2531
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->max_char_reached:I

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorTextUnderEditText(Landroid/widget/EditText;Landroid/widget/TextView;I)V

    goto/16 :goto_6

    .line 2534
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->clearErrorTextUnderEditText(Landroid/widget/EditText;Landroid/widget/TextView;)V

    .line 2535
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_c

    .line 2536
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->resetPasswordHint()V

    goto :goto_6

    :cond_5
    const/4 v0, 0x3

    if-eq v1, v0, :cond_7

    const/4 v0, 0x7

    if-ne v1, v0, :cond_6

    goto :goto_2

    .line 2544
    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x40

    if-nez v0, :cond_8

    const/16 v1, 0x3f

    goto :goto_3

    :cond_7
    :goto_2
    const/16 v1, 0xc8

    .line 2549
    :cond_8
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_b

    .line 2550
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_4
    if-ltz v0, :cond_a

    .line 2551
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2552
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    if-gt v3, v1, :cond_9

    .line 2553
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 2557
    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->max_char_reached:I

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorTextUnderEditText(Landroid/widget/EditText;Landroid/widget/TextView;I)V

    goto :goto_6

    .line 2560
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->clearErrorTextUnderEditText(Landroid/widget/EditText;Landroid/widget/TextView;)V

    .line 2561
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_c

    .line 2562
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->resetPasswordHint()V

    :cond_c
    :goto_6
    return-void
.end method

.method private refreshEapItems(I)V
    .locals 5

    const-string v0, "WifiConnectPrefController"

    const-string v1, "refreshEapItems"

    .line 1158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    if-ltz p1, :cond_16

    .line 1160
    array-length v3, v1

    if-lt p1, v3, :cond_0

    goto/16 :goto_4

    .line 1170
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1171
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1172
    aget-object v1, v1, p1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1173
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    .line 1174
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setEapMethod(Ljava/lang/String;)V

    .line 1176
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string p1, "PEAP"

    .line 1177
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

    .line 1183
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1184
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1185
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1186
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1187
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1188
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_3
    const-string p1, "PWD"

    .line 1189
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1190
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1191
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1192
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1193
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1194
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->resetPasswordHint()V

    goto :goto_1

    .line 1196
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1197
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1198
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1199
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 1178
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1179
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1180
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1181
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1182
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->resetPasswordHint()V

    .line 1202
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "refreshEapItems load Ca Certificates"

    .line 1203
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const-string v4, "CACERT_"

    invoke-direct {p0, p1, v4, v1, v3}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1206
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_c

    .line 1207
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1208
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result p1

    .line 1209
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 1210
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    .line 1212
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    .line 1214
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_7

    .line 1216
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummaryWithWarning(Landroidx/preference/DropDownPreference;)V

    goto :goto_2

    .line 1218
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    goto :goto_2

    .line 1220
    :cond_8
    array-length v1, p1

    if-lez v1, :cond_a

    .line 1221
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    aget-object v4, p1, v2

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_9

    .line 1223
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummaryWithWarning(Landroidx/preference/DropDownPreference;)V

    .line 1224
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    aget-object v4, p1, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    aget-object v4, p1, v2

    .line 1225
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    aget-object p1, p1, v2

    .line 1226
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1227
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    .line 1230
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    goto :goto_2

    .line 1234
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v1, v3}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1241
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getDomainSuffixMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1243
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setDomainVisible()V

    .line 1246
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "refreshEapItems load User Certificates"

    .line 1247
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1250
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_11

    .line 1251
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object p1

    .line 1252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1253
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_e

    .line 1255
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    goto :goto_3

    .line 1257
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    goto :goto_3

    .line 1260
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_10

    .line 1262
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    goto :goto_3

    .line 1264
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 1270
    :cond_11
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1271
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_12

    .line 1272
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object p1

    .line 1273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1274
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1279
    :cond_12
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1280
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_13

    .line 1281
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempPassword:Ljava/lang/String;

    .line 1282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1283
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1288
    :cond_13
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1289
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_14

    .line 1290
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getOcsp()I

    move-result v2

    .line 1289
    :cond_14
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    :cond_15
    return-void

    .line 1161
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

    .line 1162
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1163
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1164
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1165
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1166
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1167
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private rejectSharedPassword()V
    .locals 4

    .line 2818
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v1, "0125"

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2819
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->stopShareTimer()V

    const/4 v0, 0x0

    .line 2820
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setProfileSharingMode(Z)V

    return-void
.end method

.method private requestpassword()V
    .locals 4

    .line 2775
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v0, :cond_0

    return-void

    .line 2776
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingPassword:Z

    const-string v1, "WifiConnectPrefController"

    if-eqz v0, :cond_1

    const-string p0, "Request is already in progress"

    .line 2777
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2780
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->startTime:J

    .line 2781
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->startSharingTimer()V

    const/4 v0, 0x1

    .line 2782
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setProfileSharingMode(Z)V

    .line 2783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPassword : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiManager;->requestPassword(Z)V

    return-void
.end method

.method private resetPasswordHint()V
    .locals 2

    .line 2910
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsRetryPopup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2911
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    sget v1, Lcom/android/settings/R$string;->wifi_unchanged:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 2912
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private resetProgressButtonAndPreference()V
    .locals 3

    .line 2923
    sget-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiConnectPrefController"

    const-string v1, "resetProgressButtonAndPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_connect:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->setButtonText(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2925
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setPreferenceEnable(Z)V

    const/4 v0, 0x0

    .line 2926
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setButtonConnecting(Z)V

    return-void
.end method

.method private save(ZZ)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "0125"

    if-eqz p2, :cond_0

    .line 1919
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v3, "1027"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingPassword:Z

    if-eqz v2, :cond_1

    .line 1921
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-wide/16 v3, 0x3

    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 1924
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1926
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    .line 1927
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1928
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v2, :cond_2

    .line 1929
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    .line 1930
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1929
    invoke-static {v2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1931
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v2, :cond_4

    .line 1932
    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    .line 1934
    :cond_2
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1935
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 1936
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    .line 1935
    invoke-static {v2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 1938
    :cond_3
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 1939
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    .line 1938
    invoke-static {v2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1940
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1943
    :cond_4
    :goto_1
    iget v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const-string v3, "[0-9A-Fa-f]{64}"

    const/4 v4, 0x4

    const/4 v5, 0x2

    const-string v6, "WifiConnectPrefController"

    const/4 v7, 0x3

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x1

    const/16 v11, 0x22

    const/4 v12, 0x0

    const-string v13, ""

    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v2, 0x8

    .line 1996
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1997
    new-instance v3, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v3}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1998
    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1999
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2001
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2003
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v13

    .line 2005
    :goto_2
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v2, v13

    .line 2010
    :cond_6
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2012
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    move-object v3, v13

    .line 2014
    :goto_3
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    move-object v13, v3

    .line 2017
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WapiAsCert name= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WapiUserCert name= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v3, "WAPI Certificate"

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiCertSuite(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1985
    :pswitch_1
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1986
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_2d

    .line 1987
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1988
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1989
    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_10

    .line 1991
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_10

    .line 1965
    :pswitch_2
    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1966
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_2d

    .line 1967
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1968
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_10

    .line 1948
    :pswitch_3
    invoke-virtual {v1, v9}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_10

    :pswitch_4
    const/4 v3, 0x5

    if-ne v2, v9, :cond_a

    .line 2026
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_5

    :cond_a
    if-ne v2, v8, :cond_b

    const/16 v2, 0x9

    .line 2028
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_5

    .line 2030
    :cond_b
    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 2032
    :goto_5
    new-instance v2, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2034
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v11, "PEAP"

    if-eqz v2, :cond_c

    .line 2036
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_c
    move-object v2, v11

    .line 2038
    :goto_6
    iget-object v14, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v14, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v14

    .line 2039
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const-string v8, "AKA\'"

    const-string v9, "AKA"

    const-string v3, "SIM"

    const-string v4, "TTLS"

    if-eqz v15, :cond_d

    .line 2040
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 2041
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_7

    :cond_d
    const-string v15, "TLS"

    .line 2042
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 2043
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    .line 2044
    :cond_e
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 2045
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v15, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 2046
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_7

    :cond_f
    const-string v5, "PWD"

    .line 2047
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2048
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    .line 2049
    :cond_10
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2050
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x4

    invoke-virtual {v5, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    .line 2051
    :cond_11
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2052
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x5

    invoke-virtual {v5, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    .line 2053
    :cond_12
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2054
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x6

    invoke-virtual {v5, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 2056
    :cond_13
    :goto_7
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v5}, Landroidx/preference/Preference;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2058
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v5}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 2060
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_14
    move-object v5, v13

    .line 2062
    :goto_8
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 2063
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v15, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    .line 2064
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 2065
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 2066
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_9

    .line 2068
    :cond_15
    iget-boolean v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsTrustOnFirstUseSupported:Z

    if-eqz v7, :cond_16

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 2069
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->enableTrustOnFirstUse(Z)V

    goto :goto_9

    .line 2070
    :cond_16
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 2071
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v15, "/system/etc/security/cacerts"

    invoke-virtual {v7, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_9

    .line 2083
    :cond_17
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    new-array v15, v10, [Ljava/lang/String;

    aput-object v5, v15, v12

    invoke-virtual {v7, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 2086
    :cond_18
    :goto_9
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 2087
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_a

    .line 2090
    :cond_19
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 2091
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v7}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_1a

    .line 2093
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2095
    :cond_1a
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-direct {v0, v7, v5}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result v5

    .line 2096
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    goto :goto_b

    .line 2088
    :cond_1b
    :goto_a
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    .line 2099
    :cond_1c
    :goto_b
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v5}, Landroidx/preference/Preference;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 2101
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v5}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 2103
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    :cond_1d
    move-object v5, v13

    .line 2105
    :goto_c
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 2106
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    :cond_1e
    move-object v5, v13

    .line 2111
    :cond_1f
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 2113
    :cond_20
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v5}, Landroidx/preference/Preference;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2114
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 2116
    :cond_21
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_23

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 2117
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2118
    :cond_22
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 2119
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 2121
    :cond_23
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_d

    .line 2130
    :cond_24
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_e

    .line 2122
    :cond_25
    :goto_d
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2123
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v3

    .line 2122
    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 2124
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->getEapMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x5

    if-eq v14, v2, :cond_26

    const/4 v2, 0x6

    if-eq v14, v2, :cond_26

    const/4 v2, 0x7

    if-ne v14, v2, :cond_27

    .line 2127
    :cond_26
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 2132
    :cond_27
    :goto_e
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2133
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_29

    .line 2134
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 2135
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempPassword:Ljava/lang/String;

    goto :goto_f

    .line 2139
    :cond_28
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 2140
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempPassword:Ljava/lang/String;

    .line 2142
    :cond_29
    :goto_f
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2d

    .line 2143
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    .line 2144
    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    goto/16 :goto_10

    .line 1972
    :pswitch_5
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1973
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_2d

    .line 1974
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1975
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1976
    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_10

    .line 1978
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1979
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1980
    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_10

    .line 1951
    :pswitch_6
    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1952
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_2d

    .line 1953
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 1954
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2b

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_2b

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_2c

    :cond_2b
    const-string v2, "[0-9A-Fa-f]*"

    .line 1957
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1958
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v2, v12

    goto :goto_10

    .line 1960
    :cond_2c
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    goto :goto_10

    .line 1945
    :pswitch_7
    invoke-virtual {v1, v12}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 2151
    :cond_2d
    :goto_10
    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setAdvancedItems(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz p1, :cond_2e

    .line 2154
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSaveConfig:Landroid/net/wifi/WifiConfiguration;

    return-void

    .line 2157
    :cond_2e
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v2, :cond_2f

    .line 2158
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V

    .line 2159
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v1, v0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void

    .line 2162
    :cond_2f
    iput-boolean v10, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    .line 2163
    iget v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_30

    const/4 v3, 0x7

    if-ne v2, v3, :cond_31

    .line 2164
    :cond_30
    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSimCredential(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    .line 2165
    invoke-static {v2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSimCheck(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 2166
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_no_usim_warning:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialog(Ljava/lang/String;)V

    return-void

    .line 2169
    :cond_31
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 2170
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    .line 2171
    sget-boolean v2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->DBG:Z

    if-eqz v2, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connect to saved AP netId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2173
    :cond_32
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    .line 2175
    :cond_33
    :goto_11
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mAutoReconnectPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2176
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mAutoReconnectPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 2178
    :cond_34
    iput v12, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mRejectCount:I

    .line 2179
    new-instance v2, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 2180
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2181
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V

    .line 2182
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V

    .line 2183
    invoke-direct {v0, v10}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setButtonConnecting(Z)V

    .line 2184
    invoke-direct {v0, v12}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setPreferenceEnable(Z)V

    .line 2185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->startTime:J

    .line 2186
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->startConnectionTimer()V

    .line 2189
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v10, v4}, Lcom/samsung/android/wifi/SemWifiManager;->setConnectionAttemptInfo(IZLjava/lang/String;)V

    .line 2193
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/16 v1, -0x63

    .line 2194
    iput v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDisableReason:I

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

.method private scrollToTop()V
    .locals 2

    .line 3187
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const-string v0, "WifiConnectPrefController"

    const-string v1, "scrollToTop"

    .line 3188
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private setAdvancedItems(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 9

    .line 2199
    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 v1, 0x7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_6

    .line 2200
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->getEapMethod()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PEAP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->getEapMethod()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TTLS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2201
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    const-string v3, "WifiConnectPrefController"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2202
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2203
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->getPhase2Method(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2204
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 2205
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAdvancedItems eapPhase2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->getEapMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_4

    .line 2209
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    goto :goto_0

    .line 2211
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2212
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 2216
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2217
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 2218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAdvancedItems eapAnonymousId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    :cond_6
    new-instance v0, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 2225
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 2226
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIpSettingsPref:Landroidx/preference/DropDownPreference;

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    .line 2227
    invoke-virtual {v2}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2228
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIpSettingsPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 2229
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_1

    :cond_7
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 2233
    :cond_8
    :goto_1
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v4, 0x0

    if-ne v1, v2, :cond_c

    .line 2234
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2235
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2238
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2239
    new-instance v6, Landroid/net/LinkAddress;

    invoke-direct {v6, v2, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v6}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2241
    :catch_0
    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v2, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v5}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 2245
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2246
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 2248
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2249
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2251
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2252
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 2253
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2255
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2258
    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2259
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 2261
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2264
    :cond_b
    invoke-virtual {v0, v6}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    .line 2266
    :cond_c
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 2268
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 2269
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxySettingsPref:Landroidx/preference/DropDownPreference;

    if-eqz v5, :cond_e

    .line 2270
    invoke-virtual {v5}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 2271
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxySettingsPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v5}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_d

    .line 2273
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_3

    :cond_d
    const/4 v3, 0x2

    if-ne v5, v3, :cond_e

    .line 2275
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    :cond_e
    :goto_3
    const/4 v3, 0x0

    .line 2281
    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v2, v5, :cond_f

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyHostNameView:Landroid/widget/EditText;

    if-eqz v5, :cond_f

    .line 2282
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2283
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2284
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyExclusionlistView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2285
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 2286
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v6, ","

    .line 2288
    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 2287
    invoke-static {v5, v3, v6}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v3

    goto :goto_4

    .line 2290
    :cond_f
    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v2, v5, :cond_10

    .line 2291
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyPacView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 2292
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 2293
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 2295
    invoke-static {v5}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v3

    :cond_10
    :goto_4
    if-nez v3, :cond_11

    .line 2299
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 2301
    :cond_11
    new-instance v5, Landroid/net/IpConfiguration;

    invoke-direct {v5}, Landroid/net/IpConfiguration;-><init>()V

    .line 2302
    invoke-virtual {v5, v1}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 2303
    invoke-virtual {v5, v2}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 2304
    invoke-virtual {v5, v0}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 2305
    invoke-virtual {v5, v3}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 2306
    invoke-virtual {p1, v5}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 2309
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2310
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    goto :goto_5

    .line 2312
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 2315
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2316
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    goto :goto_6

    .line 2318
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_15

    .line 2319
    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSupportRandomMac(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSupportRandomMacForLgu(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2320
    :cond_14
    iput v4, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    goto :goto_6

    .line 2322
    :cond_15
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    iput p0, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    :goto_6
    return-object p1
.end method

.method private setButtonConnecting(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 2600
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->isSubmittable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2601
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setButtonEnable(Z)V

    .line 2602
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->setProgressVisibility(Z)V

    return-void
.end method

.method private setButtonEnable(Z)V
    .locals 2

    .line 2606
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2608
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->stop()V

    .line 2610
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2611
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2612
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;->setEnabled(Z)V

    return-void

    .line 2616
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;->setEnabled(Z)V

    return-void
.end method

.method private setClickListenerOnPasswordButton()V
    .locals 4

    .line 2876
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2877
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsLockEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 2879
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    int-to-long v2, v0

    const-string v0, "1021"

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2881
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2882
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/android/settings/R$string;->wifi_show_password_contentdescription:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(I)V

    .line 2883
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setPasswordWithMasking()V

    goto :goto_1

    .line 2885
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/android/settings/R$string;->wifi_hide_password_contentdescription:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(I)V

    .line 2886
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsLockEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2887
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsPasswordUnlocked:Z

    if-nez v0, :cond_3

    .line 2888
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2893
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2894
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2896
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showPassword()V

    goto :goto_1

    .line 2899
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showPassword()V

    :goto_1
    return-void
.end method

.method private setDefaultEAPPhase2Method(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PEAP"

    .line 1150
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_0

    :cond_0
    const-string v0, "TTLS"

    .line 1152
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1153
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setDomainVisible()V
    .locals 3

    .line 1353
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 1355
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1357
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 1358
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    .line 1359
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1363
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1364
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1365
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_2

    .line 1360
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1361
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private setEapMethod(Ljava/lang/String;)V
    .locals 2

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEapMethod : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectPrefController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PEAP"

    .line 1132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_0
    const-string v0, "TLS"

    .line 1134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_1
    const-string v0, "TTLS"

    .line 1136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1137
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_2
    const-string v0, "PWD"

    .line 1138
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1139
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_3
    const-string v0, "SIM"

    .line 1140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1141
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_4
    const-string v0, "AKA"

    .line 1142
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1143
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_5
    const-string v0, "AKA\'"

    .line 1144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1145
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private setOcspVisible()V
    .locals 3

    .line 1371
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1373
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1375
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 1376
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    .line 1377
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 1375
    :goto_1
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private setPasswordWithMasking()V
    .locals 2

    .line 2905
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2906
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private setPreferenceEnable(Z)V
    .locals 4

    .line 2574
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 2575
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2576
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 2577
    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2578
    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2580
    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->findEditTextFromPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 2582
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2583
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2585
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->isPasswordVisibilityToggleEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2586
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    .line 2588
    :cond_3
    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 v1, 0x6

    if-eq p1, v1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mCanChangeEapMethod:Z

    if-nez p1, :cond_5

    .line 2589
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2591
    :cond_5
    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x7

    if-eq p1, v0, :cond_6

    if-ne p1, v1, :cond_7

    .line 2594
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateEapSimPref()V

    .line 2596
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->updateImeOptions()V

    return-void
.end method

.method private setProfileSharingMode(Z)V
    .locals 2

    .line 2807
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingPassword:Z

    .line 2808
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordPref:Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;->setEnabled(Z)V

    .line 2809
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2810
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    xor-int/lit8 v0, p1, 0x1

    .line 2811
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setPreferenceEnable(Z)V

    if-nez p1, :cond_0

    .line 2812
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->isSubmittable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2813
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setSimSpinnerEmpty()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 3174
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_no_sim_card:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3175
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 3176
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v2, "0"

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 3177
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 3178
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 3179
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private setTopPadding(Landroid/widget/TextView;I)V
    .locals 2

    .line 1042
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method private setupAdvancedPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "eap_phase2"

    .line 996
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    const-string v0, "eap_anonymous"

    .line 997
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapAnonymousIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 998
    sget v1, Lcom/android/settings/R$id;->edittext:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    const-string v0, "ip_settings"

    .line 1001
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIpSettingsPref:Landroidx/preference/DropDownPreference;

    const-string v0, "wifi_ip_address"

    .line 1002
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIpAddrPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "gateway"

    .line 1003
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mGatewayPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "wifi_network_prefix_length"

    .line 1004
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkPrefixLenPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "wifi_dns1"

    .line 1005
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDns1Pref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "wifi_dns2"

    .line 1006
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDns2Pref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 1008
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIpAddrPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    .line 1009
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mGatewayPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mGatewayView:Landroid/widget/EditText;

    .line 1010
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkPrefixLenPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    .line 1011
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDns1Pref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDns1View:Landroid/widget/EditText;

    .line 1012
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDns2Pref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDns2View:Landroid/widget/EditText;

    const-string v0, "proxy_settings"

    .line 1014
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxySettingsPref:Landroidx/preference/DropDownPreference;

    const-string v0, "proxy_pac"

    .line 1015
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyPacPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "proxy_hostname"

    .line 1016
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyHostNamePref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "proxy_port"

    .line 1017
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyPortPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "proxy_exclusionlist"

    .line 1018
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyExclusionListPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 1020
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyPacPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyPacView:Landroid/widget/EditText;

    .line 1021
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyHostNamePref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyHostNameView:Landroid/widget/EditText;

    .line 1022
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyPortPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    .line 1023
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyExclusionListPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyExclusionlistView:Landroid/widget/EditText;

    const-string v0, "metered"

    .line 1025
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    const-string v0, "hidden"

    .line 1026
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    const-string v0, "privacy"

    .line 1027
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    return-void
.end method

.method private setupEapItems()V
    .locals 5

    .line 1458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    sget-boolean v1, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    const-string v2, "SIM"

    const-string v3, "PEAP"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_0

    .line 1460
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    const-string v4, "CMCC"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1461
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1463
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1466
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS"

    .line 1467
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "TTLS"

    .line 1468
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "PWD"

    .line 1469
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1470
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1471
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "AKA"

    .line 1472
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "AKA\'"

    .line 1473
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 1477
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1478
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1480
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1482
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 1483
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupEapOcspItems()V
    .locals 4

    .line 1487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1488
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_do_not_validate_eap_server:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_eap_ocsp_request_cert_status:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_eap_ocsp_require_cert_status:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_eap_ocsp_require_all:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 1494
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1495
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1497
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1499
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 1500
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupSecuritySpinner()V
    .locals 8

    .line 1504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1507
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_security_none:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1511
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1512
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 1513
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_security_owe:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    iget v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1517
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    move v5, v3

    goto :goto_1

    :cond_1
    move v1, v2

    move v5, v4

    .line 1520
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->wifi_security_wep:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    iget v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    if-ne v6, v4, :cond_2

    move v1, v5

    .line 1524
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v7, v5, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v5

    .line 1526
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_security_wpa_wpa2:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    iget v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    if-ne v4, v3, :cond_3

    move v1, v7

    .line 1530
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v5, v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v7

    .line 1532
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1533
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_security_wpa3:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1534
    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    move v1, v5

    .line 1537
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v6, v5, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    move v5, v6

    .line 1540
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_security_eap_wpa_wpa2:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1541
    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    move v1, v5

    .line 1544
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v6, v5, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 1546
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1547
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_security_eap_wpa3:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1548
    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_7

    move v1, v6

    .line 1551
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v5, v6, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    move v6, v5

    .line 1554
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1555
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_security_eap_suiteb:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1556
    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_9

    move v1, v6

    .line 1559
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v5, v6, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    move v6, v5

    .line 1561
    :cond_a
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSupportWapi:Z

    if-eqz v3, :cond_d

    .line 1562
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_security_wapi_psk:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1563
    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_b

    move v1, v6

    .line 1566
    :cond_b
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v5, v6, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1567
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_security_wapi_cert:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_c

    move v1, v5

    .line 1571
    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 1573
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    .line 1574
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1575
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    .line 1576
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_e

    .line 1577
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1579
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1580
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 1727
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiaply:Z

    .line 1728
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1729
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1730
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 1731
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1732
    sget p1, Lcom/android/settings/R$string;->ok:I

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1741
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialog:Landroid/app/AlertDialog;

    .line 1742
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showErrorDialogForEnterprise(I)V
    .locals 5

    .line 1746
    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const-string p0, "WifiConnectPrefController"

    const-string p1, "Cancel show dialog - It\'s not an Enterprise network"

    .line 1748
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1751
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1752
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x0

    .line 1754
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    .line 1755
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    .line 1757
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1761
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->ca_certificate:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1762
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_domain_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1763
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_trust_on_first_use_dialog_content:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1765
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1766
    sget p1, Lcom/android/settings/R$string;->ok:I

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    invoke-virtual {v2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 1791
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$4;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    invoke-virtual {v2, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1800
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialog:Landroid/app/AlertDialog;

    .line 1801
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showErrorTextForCaCert()V
    .locals 2

    .line 3220
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    sget v1, Lcom/android/settings/R$string;->wifi_wrong_ca_cert_description:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 3221
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private showErrorTextMsg(I)V
    .locals 9

    .line 1805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showErrorTextMsg disableReason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", connectingstate is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRetry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mShouldShowMessageForRetry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", netId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectPrefController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1810
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 1811
    iget v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v5, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne p1, v0, :cond_2

    :goto_1
    move v0, v6

    move p1, v7

    goto/16 :goto_6

    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    move p1, v6

    move v0, v7

    goto/16 :goto_6

    :cond_3
    const/4 v0, 0x3

    if-eqz v2, :cond_8

    .line 1823
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v8

    if-eqz v8, :cond_8

    .line 1826
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p1

    .line 1827
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x7

    if-eq p1, v0, :cond_5

    if-eq p1, v4, :cond_4

    goto :goto_2

    :cond_4
    move p1, v7

    goto :goto_3

    .line 1837
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semGetOemDisableReason()I

    move-result p1

    if-ne p1, v7, :cond_7

    .line 1839
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_tips_ap_guide_connection_blocked_by_another_network:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_2

    .line 1832
    :cond_6
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiaply:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz p1, :cond_7

    .line 1833
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_failed_to_obtain_IP:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialog(Ljava/lang/String;)V

    :cond_7
    :goto_2
    move p1, v6

    :goto_3
    move v0, v6

    goto :goto_6

    :cond_8
    if-eqz p1, :cond_b

    if-eq p1, v7, :cond_b

    const/16 v2, 0x2710

    if-lt p1, v2, :cond_9

    goto :goto_4

    :cond_9
    if-ne p1, v0, :cond_a

    .line 1862
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiaply:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz p1, :cond_e

    .line 1863
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_disabled_connection_failure:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    if-ne p1, v3, :cond_e

    goto :goto_1

    .line 1849
    :cond_b
    :goto_4
    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    if-ne v0, v5, :cond_c

    .line 1850
    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mRejectCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mRejectCount:I

    if-lez p1, :cond_e

    goto/16 :goto_1

    :cond_c
    if-ne v0, v7, :cond_d

    const/16 v0, 0x4e20

    if-ne p1, v0, :cond_d

    goto :goto_5

    .line 1857
    :cond_d
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiaply:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz p1, :cond_e

    .line 1858
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_disabled_connection_failure:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialog(Ljava/lang/String;)V

    :cond_e
    :goto_5
    move p1, v6

    move v0, p1

    :goto_6
    if-eqz p1, :cond_12

    .line 1870
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showErrorDialog : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    .line 1871
    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowRetryDialog(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1870
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowRetryDialog(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 1873
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->resetProgressButtonAndPreference()V

    .line 1874
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiaply:Z

    .line 1875
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    .line 1876
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mShouldShowMessageForRetry:Z

    goto :goto_8

    .line 1878
    :cond_f
    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    if-eq p1, v3, :cond_11

    if-eq p1, v4, :cond_11

    if-eq p1, v5, :cond_11

    if-ne p1, v7, :cond_10

    goto :goto_7

    .line 1893
    :cond_10
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiaply:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz p1, :cond_13

    .line 1894
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_disabled_incorrect_password:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_8

    .line 1882
    :cond_11
    :goto_7
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_connect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 1883
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setPreferenceEnable(Z)V

    .line 1884
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->isSubmittable()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setButtonEnable(Z)V

    .line 1886
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_disabled_incorrect_password:I

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorTextUnderEditText(Landroid/widget/EditText;Landroid/widget/TextView;I)V

    .line 1888
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1889
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiaply:Z

    .line 1890
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    .line 1891
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mShouldShowMessageForRetry:Z

    goto :goto_8

    :cond_12
    if-eqz v0, :cond_13

    .line 1899
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorTextForCaCert()V

    :cond_13
    :goto_8
    return-void
.end method

.method private showErrorTextUnderEditText(Landroid/widget/EditText;Landroid/widget/TextView;I)V
    .locals 0

    .line 3194
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const/4 p3, 0x0

    .line 3195
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3196
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    .line 3197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$color;->sec_wifi_dialog_error_color:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 3196
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3198
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private showPassword()V
    .locals 2

    .line 2917
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2918
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2919
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void
.end method

.method private showSecurityFields(I)V
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eq p1, v1, :cond_a

    const/4 v3, 0x2

    if-eq p1, v3, :cond_a

    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x6

    if-eq p1, v3, :cond_4

    const/4 v3, 0x7

    if-eq p1, v3, :cond_4

    if-ne p1, v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    if-ne p1, v3, :cond_3

    .line 1638
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1639
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1640
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->refreshEapItems(I)V

    .line 1641
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1642
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->resetPasswordHint()V

    .line 1643
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1644
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_6

    :cond_3
    const/16 v3, 0x9

    if-ne p1, v3, :cond_d

    .line 1646
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1647
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1648
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1649
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1650
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1651
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->refreshEapItems(I)V

    .line 1652
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const-string v3, "WAPIAS_"

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1654
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const-string v3, "WAPIUSR_"

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 1614
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1616
    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    if-ne p1, v4, :cond_5

    .line 1618
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    move p1, v1

    goto :goto_2

    .line 1620
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mCanChangeEapMethod:Z

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1621
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_6

    .line 1622
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->getEapMethodOverride()I

    move-result p1

    goto :goto_1

    .line 1623
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_7

    .line 1624
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p1

    goto :goto_1

    :cond_7
    move p1, v0

    :goto_1
    if-ne p1, v0, :cond_8

    move p1, v2

    .line 1628
    :cond_8
    :goto_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->refreshEapItems(I)V

    .line 1629
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 1631
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1632
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_9
    const-string p1, ""

    .line 1633
    :goto_3
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setDefaultEAPPhase2Method(Ljava/lang/String;)V

    .line 1635
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1636
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_6

    .line 1595
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1596
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1597
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->refreshEapItems(I)V

    .line 1598
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1599
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1600
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1601
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1602
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    sget v0, Lcom/android/settings/R$string;->wifi_unchanged:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 1604
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUpdateSaveState:Z

    if-eqz p1, :cond_d

    .line 1605
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempPassword:Ljava/lang/String;

    .line 1606
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1607
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1608
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_6

    .line 1586
    :cond_c
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1587
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1588
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1589
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->refreshEapItems(I)V

    .line 1590
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1591
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1659
    :cond_d
    :goto_6
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_10

    .line 1660
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsPasswordVisible:Z

    if-eqz v0, :cond_e

    .line 1661
    invoke-virtual {p1}, Landroid/widget/ImageButton;->performClick()Z

    .line 1662
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsPasswordVisible:Z

    .line 1665
    :cond_e
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1666
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    sget v0, Lcom/android/settings/R$string;->wifi_hide_password_contentdescription:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(I)V

    .line 1667
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1668
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_7

    .line 1670
    :cond_f
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    sget v0, Lcom/android/settings/R$string;->wifi_show_password_contentdescription:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(I)V

    .line 1671
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1672
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1674
    :goto_7
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1676
    :cond_10
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->isPasswordVisibilityToggleEnabled()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1677
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1678
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    goto :goto_8

    .line 1680
    :cond_11
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    .line 1681
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1685
    :cond_12
    :goto_8
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityFieldsInitialized:Z

    return-void
.end method

.method private updateEapSimPref()V
    .locals 10

    .line 3125
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3126
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 3127
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 3128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 3129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 3130
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 3132
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3133
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 3135
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3140
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 3141
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setSimSpinnerEmpty()V

    return-void

    .line 3145
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 3146
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move v4, v3

    .line 3147
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v4, v5, :cond_7

    .line 3148
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    .line 3149
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isEsim(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "eSIM"

    goto :goto_2

    :cond_4
    const-string v7, "SIM"

    :goto_2
    if-nez v5, :cond_5

    add-int/lit8 v5, v5, 0x1

    .line 3152
    :cond_5
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    .line 3153
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3154
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v3

    .line 3155
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v1

    const-string v5, "%s %d"

    .line 3154
    invoke-static {v8, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 3155
    :cond_6
    aput-object v8, v0, v4

    .line 3156
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3159
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v4, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 3160
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move v0, v3

    .line 3161
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 3162
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v2, v4, :cond_8

    .line 3163
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 3164
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3168
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_a

    .line 3169
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_a
    return-void
.end method

.method private updateSaveState()V
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_5

    .line 1078
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    sget v1, Lcom/android/settings/R$string;->wifi_ssid_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 1087
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1088
    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1089
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempPassword:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 1094
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempPassword:Ljava/lang/String;

    goto :goto_2

    .line 1092
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempPassword:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string p0, "WifiConnectPrefController"

    const-string v0, "savedInstanceState getconfig is null"

    .line 1098
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method private updateSecurity()V
    .locals 2

    .line 1690
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 1691
    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1720
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1717
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1714
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1711
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1705
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1696
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1708
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1702
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1699
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 1693
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1723
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->passwordCheck(Ljava/lang/String;)V

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

    .line 1054
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_preference_summary_primary_color:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 1055
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 1054
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1056
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    if-ltz p2, :cond_1

    .line 1057
    array-length v1, v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 1062
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 1063
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->convertFormattedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1064
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 1058
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

    const-string p1, "WifiConnectPrefController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSummaryWithWarning(Landroidx/preference/DropDownPreference;)V
    .locals 3

    .line 1068
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_wifi_dialog_error_color:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 1069
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 1068
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1070
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 1071
    invoke-virtual {p1, v1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 1072
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->convertFormattedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1073
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 11

    .line 797
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 798
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "ssid"

    .line 800
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 801
    sget v1, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 802
    sget v2, Lcom/android/settings/R$string;->wifi_ssid:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 803
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v3, Lcom/android/settings/R$id;->edittext:I

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    .line 804
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidWatcher:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$EditTextWatcher;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 805
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    sget v4, Lcom/android/settings/R$string;->wifi_ssid_hint:I

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 806
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v4, Lcom/android/settings/R$id;->wifi_error_text:I

    invoke-virtual {v2, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidErrorText:Landroid/widget/TextView;

    const/16 v5, 0x8

    .line 807
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v2, "security_settings"

    .line 809
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityPref:Landroidx/preference/DropDownPreference;

    .line 810
    sget v6, Lcom/android/settings/R$string;->wifi_security:I

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setTitle(I)V

    .line 811
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 812
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityPref:Landroidx/preference/DropDownPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 813
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setupSecuritySpinner()V

    const-string v2, "wapi_as_cert"

    .line 815
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    const-string v2, "wapi_user_cert"

    .line 816
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    .line 817
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSupportWapi:Z

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 818
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 819
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 820
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 821
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 823
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiAaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 824
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWapiUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    const-string v2, "eap_method"

    .line 828
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    .line 829
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 830
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 831
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    sget v7, Lcom/android/settings/R$string;->wifi_eap_method:I

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setTitle(I)V

    .line 832
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setupEapItems()V

    .line 833
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v2, "eap_ca_cert"

    .line 835
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    .line 836
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 837
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 838
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v2, "eap_domain"

    .line 840
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 841
    invoke-virtual {v2, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v7, Lcom/android/settings/R$string;->wifi_eap_domain:I

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 842
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    const/high16 v7, 0x80000

    .line 843
    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 844
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainView:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainViewWatcher:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$EditTextWatcher;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 845
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v2, "eap_user_cert"

    .line 847
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    .line 848
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 849
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v8}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 850
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v2, "eap_ocsp"

    .line 852
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    .line 853
    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 854
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    sget v8, Lcom/android/settings/R$string;->wifi_eap_ocsp:I

    invoke-virtual {v2, v8}, Landroidx/preference/Preference;->setTitle(I)V

    .line 855
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 856
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v8}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 857
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setupEapOcspItems()V

    .line 859
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->disableViewsIfAppropriate()V

    const-string v2, "eap_ca_cert_error_text"

    .line 861
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    .line 862
    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v2, "wifi_eap_ca_error_text"

    .line 864
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    .line 865
    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v2, "eap_identity"

    .line 867
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 868
    invoke-virtual {v2, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v8, Lcom/android/settings/R$string;->wifi_eap_identity:I

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 869
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    .line 870
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v2, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdentityErrorText:Landroid/widget/TextView;

    .line 871
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    new-instance v9, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;

    invoke-direct {v9, p0, v8, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 872
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 873
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdentityErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 874
    iget v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 v7, 0x7

    const/4 v8, 0x3

    if-eq v2, v8, :cond_1

    if-eq v2, v7, :cond_1

    .line 876
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    const-string v2, "eap_sim_select"

    .line 879
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    .line 880
    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 881
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 882
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 883
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateEapSimPref()V

    const-string v2, "wifi_password"

    .line 885
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 886
    invoke-virtual {v2, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 887
    sget v9, Lcom/android/settings/R$string;->wifi_password:I

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 888
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v10, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 889
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    .line 890
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 891
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 892
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 893
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    sget v3, Lcom/android/settings/R$string;->wifi_enter_password:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 894
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    .line 895
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 896
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v3, Lcom/android/settings/R$id;->input_password:I

    invoke-virtual {v1, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 897
    sget v3, Lcom/android/settings/R$string;->wifi_show_password_contentdescription:I

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(I)V

    .line 898
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    .line 900
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v9, "text_input_end_icon"

    const-string v10, "id"

    invoke-virtual {v1, v9, v10, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 901
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v1, :cond_2

    .line 903
    new-instance v4, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 906
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 908
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 909
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 911
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$dimen;->device_info_top_space_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 912
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v4, :cond_4

    .line 913
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 914
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 915
    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    if-eq v0, v8, :cond_5

    if-eq v0, v7, :cond_5

    .line 917
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setTopPadding(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 920
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setTopPadding(Landroid/widget/TextView;I)V

    .line 922
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_a

    .line 923
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 926
    iget v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const/4 v2, 0x2

    const/4 v4, 0x0

    if-eq v1, v2, :cond_8

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8

    if-ne v1, v5, :cond_6

    goto :goto_2

    :cond_6
    if-ne v1, v3, :cond_7

    .line 931
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v4

    goto :goto_3

    .line 929
    :cond_8
    :goto_2
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_9

    .line 933
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_9

    goto :goto_4

    :cond_9
    move-object v4, v0

    .line 937
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_a

    .line 938
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 939
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_a
    const-string v0, "auto_connect"

    .line 944
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mAutoReconnectPref:Landroidx/preference/SwitchPreferenceCompat;

    const-string v0, "save_button"

    .line 945
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSaveButtonPref:Lcom/samsung/android/settings/widget/SecButtonPreference;

    .line 946
    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 947
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSaveButtonPref:Lcom/samsung/android/settings/widget/SecButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_connect:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSaveButtonPref:Lcom/samsung/android/settings/widget/SecButtonPreference;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    const-string v0, "button"

    .line 950
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    .line 951
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 953
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "shared_password"

    .line 956
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordPref:Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;

    .line 957
    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 959
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordPref:Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 962
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setupAdvancedPreferences(Landroidx/preference/PreferenceScreen;)V

    .line 964
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez p1, :cond_b

    .line 965
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_save:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->setButtonText(Ljava/lang/String;)V

    goto :goto_5

    .line 967
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 969
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 970
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSaveButtonPref:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 971
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->setActionPreference(Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;)V

    .line 973
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSecurity()V

    .line 975
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz p1, :cond_c

    .line 976
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setButtonConnecting(Z)V

    .line 978
    :cond_c
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUpdateSaveState:Z

    if-eqz p1, :cond_d

    .line 979
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSaveState()V

    .line 982
    :cond_d
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsRetryPopup:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 983
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsLockEnabled:Z

    if-eqz p1, :cond_e

    .line 984
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 985
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 986
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1, v6}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    goto :goto_6

    .line 988
    :cond_e
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    sget v0, Lcom/android/settings/R$string;->wifi_unchanged:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 989
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 991
    :goto_6
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempPassword:Ljava/lang/String;

    :cond_f
    return-void
.end method

.method getAndroidKeystoreAliasLoader()Lcom/android/settings/utils/AndroidKeystoreAliasLoader;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1382
    new-instance p0, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;-><init>(Ljava/lang/Integer;)V

    return-object p0
.end method

.method getEapMethodOverride()I
    .locals 3

    .line 1331
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1332
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .line 1340
    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

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

    .line 1345
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getEapMethodOverride return "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiConnectPrefController"

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "save_config_state"

    .line 692
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 693
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    :cond_0
    const-string v0, "save_securitytype_state"

    .line 694
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const-string v0, "save_pw_button_state"

    .line 695
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsPasswordVisible:Z

    const/4 p1, 0x1

    .line 696
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUpdateSaveState:Z

    .line 699
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 700
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 701
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    .line 702
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 703
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.net.wifi.NETWORK_CONNECT_FAILED"

    .line 704
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 705
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 706
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    const-string v2, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v0, p0, p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "WifiConnectPrefController"

    const-string v1, "onDestroy clearall"

    .line 712
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 717
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 720
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 723
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->stop()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 545
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    const/4 v0, 0x0

    if-ne p1, p3, :cond_1

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    const/16 p1, 0xa0

    if-ne p2, p1, :cond_1

    .line 546
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->isSubmittable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 547
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->save(ZZ)V

    return p1

    :cond_1
    return v0
.end method

.method public onPause()V
    .locals 3

    const-string v0, "WifiConnectPrefController"

    const-string v1, "onPause"

    .line 728
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingPassword:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->requestPassword(Z)V

    .line 733
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->stopShareTimer()V

    const/4 v0, 0x1

    .line 734
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingCanceled:Z

    .line 736
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsRegistered:Z

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    sget-object v2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordCallback:Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->unregisterPasswordCallback(Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V

    const/4 v0, 0x0

    .line 738
    sput-object v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordCallback:Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    .line 739
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsRegistered:Z

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 557
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 558
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 560
    check-cast p1, Landroidx/preference/DropDownPreference;

    .line 561
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "WifiConnectPrefController"

    if-eqz v1, :cond_19

    if-ltz p2, :cond_19

    .line 562
    array-length v4, v1

    if-lt p2, v4, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v4, "security_settings"

    .line 567
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_4

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "security type changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    int-to-long v3, p2

    const-string v1, "1023"

    invoke-static {v0, v1, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 570
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 571
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    .line 572
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showSecurityFields(I)V

    .line 573
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSecurity()V

    .line 574
    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    if-eq p1, v5, :cond_1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_2

    :cond_1
    const-string p1, "PEAP"

    .line 575
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setDefaultEAPPhase2Method(Ljava/lang/String;)V

    .line 577
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodChangeListener:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;

    if-eqz p1, :cond_3

    .line 578
    invoke-interface {p1}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;->onChanged()V

    .line 580
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->enableSubmitIfAppropriate()V

    .line 581
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->updateImeOptions()V

    goto/16 :goto_5

    :cond_4
    const-string v4, "wapi_as_cert"

    .line 582
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_18

    const-string v4, "wapi_user_cert"

    .line 583
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_6

    :cond_5
    const-string v4, "eap_method"

    .line 587
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange KEY_EAP_METHOD_PREF : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 590
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->refreshEapItems(I)V

    .line 591
    aget-object p1, v1, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 592
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setDefaultEAPPhase2Method(Ljava/lang/String;)V

    .line 593
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodChangeListener:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;

    if-eqz p1, :cond_6

    .line 594
    invoke-interface {p1}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;->onChanged()V

    .line 596
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->enableSubmitIfAppropriate()V

    .line 597
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->disableViewsIfAppropriate()V

    .line 598
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->updateImeOptions()V

    .line 599
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    int-to-long p1, p2

    const-string v0, "1047"

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    return v6

    :cond_7
    const-string v4, "eap_ocsp"

    .line 601
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange KEY_EAP_OCSP_PREF : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 604
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    return v6

    :cond_8
    const-string v4, "eap_ca_cert"

    .line 606
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange KEY_EAP_CA_CERT_PREF : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->clearErrorTextForCaCert()V

    .line 609
    aget-object v0, v1, p2

    .line 610
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 611
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 612
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v4, "/system/etc/security/cacerts"

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_0

    .line 614
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    .line 615
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    new-array v4, v6, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 618
    :cond_a
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsTrustOnFirstUseSupported:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 619
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->enableTrustOnFirstUse(Z)V

    goto :goto_1

    .line 621
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->enableTrustOnFirstUse(Z)V

    :goto_1
    if-nez p2, :cond_c

    .line 625
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummaryWithWarning(Landroidx/preference/DropDownPreference;)V

    goto :goto_2

    .line 627
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 630
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setDomainVisible()V

    .line 631
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setOcspVisible()V

    .line 632
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz p1, :cond_d

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    .line 633
    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->enableSubmitIfAppropriate()V

    .line 634
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->disableViewsIfAppropriate()V

    if-eqz p2, :cond_13

    .line 644
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsTrustOnFirstUseSupported:Z

    const/4 v0, 0x4

    const/4 v2, 0x2

    if-eqz p1, :cond_f

    if-eq p2, v6, :cond_12

    if-ne p2, v2, :cond_e

    goto :goto_4

    .line 647
    :cond_e
    array-length p1, v1

    add-int/lit8 p2, p2, 0x1

    if-ne p1, p2, :cond_11

    :goto_3
    move p2, v0

    goto :goto_4

    :cond_f
    if-ne p2, v6, :cond_10

    move v5, v2

    .line 652
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->getEapMethod()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TLS"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    array-length p1, v1

    add-int/lit8 p2, p2, 0x1

    if-ne p1, p2, :cond_11

    goto :goto_3

    :cond_11
    move p2, v5

    .line 656
    :cond_12
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    int-to-long v0, p2

    const-string p2, "1048"

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 659
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->updateImeOptions()V

    return v6

    :cond_14
    const-string v4, "eap_user_cert"

    .line 661
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange KEY_EAP_USER_CERT_PREF : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    aget-object v0, v1, p2

    .line 664
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 665
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 667
    :cond_15
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 668
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->enableSubmitIfAppropriate()V

    .line 669
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->disableViewsIfAppropriate()V

    return v6

    :cond_16
    const-string v1, "eap_sim_select"

    .line 671
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChanged KEY_EAP_SIM_SELECT_PREF : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    :cond_17
    :goto_5
    return v2

    .line 584
    :cond_18
    :goto_6
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 585
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->enableSubmitIfAppropriate()V

    return v6

    .line 563
    :cond_19
    :goto_7
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

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume mWifiEntrySecurity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectPrefController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->isProfileShareSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mBssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare to share "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mLog:Lcom/samsung/wifitrackerlib/LogUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mBssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    sget-object v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordCallback:Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    if-nez v0, :cond_0

    .line 753
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback-IA;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordCallback:Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mBssid:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordCallback:Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->registerPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V

    const/4 v0, 0x1

    .line 756
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsRegistered:Z

    .line 758
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingCanceled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 759
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setProfileSharingMode(Z)V

    .line 760
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingCanceled:Z

    .line 764
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityFieldsInitialized:Z

    if-nez v0, :cond_3

    .line 765
    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showSecurityFields(I)V

    .line 768
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 769
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 771
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 772
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 774
    :cond_5
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUpdateSaveState:Z

    .line 776
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 777
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    .line 780
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->checkAndShowErrorMessageForRetry()V

    .line 781
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 787
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->save(ZZ)V

    .line 788
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSaveConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "save_config_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 789
    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiEntrySecurity:I

    const-string v1, "save_securitytype_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 790
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p0, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result p0

    const-string v0, "save_pw_button_state"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public registerListener(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;)V
    .locals 0

    .line 1038
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapMethodChangeListener:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;

    return-void
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 1

    .line 2934
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mBssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2935
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mBssid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "WifiConnectPrefController"

    const-string p1, "BSSID is already set. ignore it"

    .line 2937
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setDisableReason(I)V
    .locals 0

    .line 2930
    iput p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDisableReason:I

    return-void
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 3183
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public update(Z)V
    .locals 2

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update triggered by Validator "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectPrefController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mExternalValidationResult:Z

    .line 1034
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->isSubmittable()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setButtonEnable(Z)V

    return-void
.end method
