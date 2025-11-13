.class public final Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;
.super Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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


# static fields
.field public static final DBG:Z

.field public static mSharedPasswordCallback:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;


# instance fields
.field public mAutoReconnectPref:Landroidx/preference/SwitchPreferenceCompat;

.field public mBssid:Ljava/lang/String;

.field public mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

.field public final mConnectListener:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;

.field public mConnectingState:Z

.field public final mContext:Landroid/content/Context;

.field public mDetailedState:Landroid/net/NetworkInfo$DetailedState;

.field public mDhcpNameSharingPref:Landroidx/preference/SwitchPreferenceCompat;

.field public mDisableReason:I

.field public mDns1Pref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mDns1View:Landroid/widget/EditText;

.field public mDns2Pref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mDns2View:Landroid/widget/EditText;

.field public mEapAnonymousView:Landroid/widget/EditText;

.field public mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

.field public mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

.field public mEapIdentityErrorText:Landroid/widget/TextView;

.field public final mEditTexts:Ljava/util/ArrayList;

.field public mErrorDialog:Landroid/app/AlertDialog;

.field public mErrorDialogDiplay:Z

.field public mExternalValidationResult:Z

.field public mGatewayPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mGatewayView:Landroid/widget/EditText;

.field public mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

.field public final mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

.field public mIpAddrPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mIpAddressView:Landroid/widget/EditText;

.field public mIpSettingsPref:Landroidx/preference/DropDownPreference;

.field public mIsPasswordShareDisplayed:Z

.field public mIsPasswordVisible:Z

.field public mIsRegistered:Z

.field public final mIsRetryPopup:Z

.field public mIsSaveButtonPressed:Z

.field public mLastNetworkId:I

.field public final mListenerForHidingKeyboard:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$5;

.field public final mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

.field public mMeteredPref:Landroidx/preference/DropDownPreference;

.field public mNetworkId:I

.field public mNetworkPrefixLenPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mNetworkPrefixLengthView:Landroid/widget/EditText;

.field public mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

.field public mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

.field public mPhase2Pref:Landroidx/preference/DropDownPreference;

.field public mPrivacyPref:Landroidx/preference/DropDownPreference;

.field public mProxyExclusionListPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mProxyExclusionlistView:Landroid/widget/EditText;

.field public mProxyHostNamePref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mProxyHostNameView:Landroid/widget/EditText;

.field public mProxyPacPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mProxyPacView:Landroid/widget/EditText;

.field public mProxyPortPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mProxyPortView:Landroid/widget/EditText;

.field public mProxySettingsPref:Landroidx/preference/DropDownPreference;

.field public final mReceiver:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mRejectCount:I

.field public final mSAScreenId:Ljava/lang/String;

.field public mSaveButtonPref:Lcom/samsung/android/settings/widget/SecButtonPreference;

.field public mSaveConfig:Landroid/net/wifi/WifiConfiguration;

.field public final mSaveListener:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;

.field public mScreen:Landroidx/preference/PreferenceScreen;

.field public mSecurityFieldsInitialized:Z

.field public final mSecurityInPosition:[Ljava/lang/Integer;

.field public mSecurityPref:Landroidx/preference/DropDownPreference;

.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public mSharedPasswordPref:Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;

.field public mSharingCanceled:Z

.field public mSharingPassword:Z

.field public mShouldShowMessageForRetry:Z

.field public mSsidErrorText:Landroid/widget/TextView;

.field public mSsidPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mSsidTitleView:Landroid/widget/TextView;

.field public mSsidView:Landroid/widget/EditText;

.field public final mSsidWatcher:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;

.field public mTempSsid:Ljava/lang/String;

.field public final mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

.field public mUpdateSaveState:Z

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;ZLandroidx/fragment/app/Fragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p4, p3, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/wifitrackerlib/WifiEntry;)V

    const/4 p3, -0x1

    iput p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    iput p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mLastNetworkId:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mBssid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsPasswordVisible:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUpdateSaveState:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEditTexts:Ljava/util/ArrayList;

    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mRejectCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mExternalValidationResult:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingPassword:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mReceiver:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$5;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mListenerForHidingKeyboard:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$5;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectListener:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSaveListener:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempSsid:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidWatcher:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p7, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    if-nez p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez p1, :cond_2

    new-instance p1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_1

    :cond_2
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mBssid:Ljava/lang/String;

    :goto_1
    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iput-object p8, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsRetryPopup:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mShouldShowMessageForRetry:Z

    invoke-virtual {p6}, Landroid/net/wifi/WifiManager;->isTrustOnFirstUseSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mIsTrustOnFirstUseSupported:Z

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Integer;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    invoke-virtual {p6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p3

    :cond_3
    iput p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mLastNetworkId:I

    new-instance p1, Lcom/samsung/android/wifitrackerlib/LogUtils;

    invoke-direct {p1}, Lcom/samsung/android/wifitrackerlib/LogUtils;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->isEnterpriseNetwork(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p4}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setupEapMethodForCarrierSsid()V

    :cond_4
    return-void
.end method


# virtual methods
.method public final afterShowSecurityFields()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsPasswordVisible:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsPasswordVisible:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v0, v0, Lcom/google/android/material/internal/CheckableImageButton;->checked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isPasswordVisibilityToggleEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityFieldsInitialized:Z

    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-super/range {p0 .. p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v2, "ssid"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a1041

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidTitleView:Landroid/widget/TextView;

    const v4, 0x7f1436c1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a0596

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidWatcher:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    const v5, 0x7f1436c2

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setHint(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v6, 0x7f0a1190

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidErrorText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v2, "security_settings"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityPref:Landroidx/preference/DropDownPreference;

    const v8, 0x7f143658

    invoke-virtual {v2, v8}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityPref:Landroidx/preference/DropDownPreference;

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mListenerForHidingKeyboard:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$5;

    invoke-virtual {v2, v8}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const v9, 0x7f143664

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result v8

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const v12, 0x7f143667

    invoke-virtual {v8, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v8, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const/4 v12, 0x4

    if-ne v8, v12, :cond_0

    move v8, v11

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    iget-object v13, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v11

    move v12, v10

    goto :goto_1

    :cond_1
    move v8, v9

    move v12, v11

    :goto_1
    iget-object v13, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const v14, 0x7f143681

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v13, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    if-ne v13, v11, :cond_2

    move v8, v12

    :cond_2
    iget-object v13, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v14, v12, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v12

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const v15, 0x7f143685

    invoke-virtual {v13, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v13, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    if-ne v13, v10, :cond_3

    move v8, v14

    :cond_3
    iget-object v13, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v15, v12, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v13, v14

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v13

    const/4 v14, 0x5

    const/4 v5, 0x3

    if-eqz v13, :cond_5

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const v11, 0x7f143684

    invoke-virtual {v13, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v11, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    if-ne v11, v14, :cond_4

    move v8, v15

    :cond_4
    iget-object v11, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/2addr v12, v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v15

    move v15, v12

    :cond_5
    iget-object v11, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const v12, 0x7f143661

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v11, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    if-ne v11, v5, :cond_6

    move v8, v15

    :cond_6
    iget-object v11, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v12, v15, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v15

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const v11, 0x7f143660

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const/4 v11, 0x7

    if-ne v5, v11, :cond_7

    move v8, v12

    :cond_7
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/2addr v15, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v12

    move v12, v15

    :cond_8
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const v11, 0x7f14365d

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const/4 v11, 0x6

    if-ne v5, v11, :cond_9

    move v8, v12

    :cond_9
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v12

    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v11, v5}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    move v11, v9

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_b

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_b
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityPref:Landroidx/preference/DropDownPreference;

    iput-object v5, v2, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v8}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    const-string v2, "eap_method"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mListenerForHidingKeyboard:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$5;

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    const v5, 0x7f14354f

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setupEapItems()V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v2, "eap_ca_cert"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mListenerForHidingKeyboard:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$5;

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v2, "eap_domain"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f14354d

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainView:Landroid/widget/EditText;

    const/high16 v5, 0x80000

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainView:Landroid/widget/EditText;

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainViewWatcher:Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v2, "eap_user_cert"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mListenerForHidingKeyboard:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$5;

    invoke-virtual {v2, v8}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v2, "eap_min_tls_ver"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isTlsV13Supported()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setupEapMinTlsVer(Z)V

    const-string v2, "eap_ocsp"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    const v8, 0x7f143552

    invoke-virtual {v2, v8}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mListenerForHidingKeyboard:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$5;

    invoke-virtual {v2, v8}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setupEapOcspItems()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->disableViewsIfAppropriate$4()V

    const-string v2, "eap_ca_cert_error_text"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string/jumbo v2, "wifi_eap_ca_error_text"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v2, "eap_identity"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f14354e

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdentityErrorText:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    new-instance v11, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;

    invoke-direct {v11, v0, v8, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v8, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapIdentityErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->isEnterpriseNetwork(I)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_c
    const-string v2, "eap_sim_select"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mListenerForHidingKeyboard:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$5;

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateEapSimPref()V

    const-string/jumbo v2, "wifi_password"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPaswordTitleView:Landroid/widget/TextView;

    const v5, 0x7f14361e

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordWatcher:Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    const v3, 0x7f143563

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a07ff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "text_input_end_icon"

    const-string v6, "id"

    invoke-virtual {v2, v5, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v2, :cond_d

    new-instance v3, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    invoke-static {v2}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070361

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v3, :cond_e

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v5, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v5, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    iget v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->isEnterpriseNetwork(I)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPaswordTitleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v5, v6, v2, v8, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_3

    :cond_e
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidTitleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v5, v6, v2, v8, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_f
    :goto_3
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_14

    iget v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const/4 v6, 0x0

    if-eq v5, v10, :cond_12

    if-ne v5, v14, :cond_10

    goto :goto_4

    :cond_10
    const/4 v8, 0x1

    if-ne v5, v8, :cond_11

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-static {v2}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_11
    move-object v2, v6

    goto :goto_5

    :cond_12
    :goto_4
    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_13

    goto :goto_6

    :cond_13
    move-object v6, v2

    :goto_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x40

    if-gt v2, v5, :cond_14

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    :cond_14
    const-string v2, "auto_connect"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mAutoReconnectPref:Landroidx/preference/SwitchPreferenceCompat;

    const-string/jumbo v2, "save_button"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecButtonPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSaveButtonPref:Lcom/samsung/android/settings/widget/SecButtonPreference;

    new-instance v5, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    iput-object v5, v2, Lcom/samsung/android/settings/widget/SecButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1434b5    # 1.9699941E38f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/samsung/android/settings/widget/SecButtonPreference;->mTitle:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSaveButtonPref:Lcom/samsung/android/settings/widget/SecButtonPreference;

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    const-string v2, "button"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    new-instance v5, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda0;

    const/4 v7, 0x2

    invoke-direct {v5, v0, v7}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    iput-object v5, v2, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    const-string/jumbo v2, "shared_password"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordPref:Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;

    new-instance v5, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda0;

    const/4 v7, 0x3

    invoke-direct {v5, v0, v7}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    iput-object v5, v2, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v2, "eap_phase2"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    const-string v2, "eap_anonymous"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    const-string v2, "ip_settings"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIpSettingsPref:Landroidx/preference/DropDownPreference;

    const-string/jumbo v2, "wifi_ip_address"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIpAddrPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v2, "gateway"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mGatewayPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string/jumbo v2, "wifi_network_prefix_length"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkPrefixLenPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string/jumbo v2, "wifi_dns1"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDns1Pref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string/jumbo v2, "wifi_dns2"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDns2Pref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIpAddrPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mGatewayPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mGatewayView:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkPrefixLenPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDns1Pref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDns1View:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDns2Pref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDns2View:Landroid/widget/EditText;

    const-string v2, "proxy_settings"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxySettingsPref:Landroidx/preference/DropDownPreference;

    const-string v2, "proxy_pac"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyPacPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v2, "proxy_hostname"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyHostNamePref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v2, "proxy_port"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyPortPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v2, "proxy_exclusionlist"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyExclusionListPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyPacPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyPacView:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyHostNamePref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyHostNameView:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyPortPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyExclusionListPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyExclusionlistView:Landroid/widget/EditText;

    const-string v2, "metered"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    const-string v2, "hidden"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    const-string v2, "dhcp_name_sharing"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDhcpNameSharingPref:Landroidx/preference/SwitchPreferenceCompat;

    const-string v2, "privacy"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/DropDownPreference;

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    if-nez v3, :cond_15

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f143644

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButtonText:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_7

    :cond_15
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButtonText:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/preference/Preference;->notifyChanged()V

    :goto_7
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSaveButtonPref:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {v1, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    sget-boolean v4, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->DBG:Z

    if-eqz v4, :cond_16

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "WifiImeHelper"

    const-string/jumbo v5, "setup action preference"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iput-object v2, v1, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mActionPreference:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSecurity()V

    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setButtonConnecting(Z)V

    :cond_17
    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUpdateSaveState:Z

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    invoke-static {v1}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    goto :goto_8

    :cond_18
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    const v2, 0x7f1436c2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    :cond_19
    :goto_8
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-static {v1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTempPassword:Ljava/lang/String;

    goto :goto_9

    :cond_1a
    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->isEnterpriseNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTempPassword:Ljava/lang/String;

    goto :goto_9

    :cond_1b
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTempPassword:Ljava/lang/String;

    goto :goto_9

    :cond_1c
    const-string v1, "WifiConnectPrefController"

    const-string/jumbo v2, "savedInstanceState getconfig is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_9
    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsRetryPopup:Z

    if-eqz v1, :cond_1e

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    const v2, 0x7f143721

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTempPassword:Ljava/lang/String;

    :cond_1e
    return-void
.end method

.method public final enableSubmitIfAppropriate()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->isSubmittable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setButtonEnable(Z)V

    return-void
.end method

.method public final fillPreviousPasswordIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUpdateSaveState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTempPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public final findEditTextFromPreference(Landroidx/preference/Preference;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a1041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0596

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEditTexts:Ljava/util/ArrayList;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    sget-boolean p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->DBG:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "findEditTextFromLayout add mEditTexts :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiConnectPrefController"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    move-object v1, p1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->findEditTextFromPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiConnectPrefController"

    return-object p0
.end method

.method public final getMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final insertSaLoggingForPasswordShare(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    const/4 p1, 0x0

    const-string v1, "0125"

    invoke-static {p0, v1, v0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method public final isSubmittable()Z
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    const-string v1, "PWD"

    const-string v2, "TTLS"

    const-string v3, "PEAP"

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    if-ne v7, v5, :cond_0

    invoke-static {v0, v6}, Lcom/android/settings/wifi/WifiUtils;->isValidWep(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    iget v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    invoke-static {v0, v6}, Lcom/android/settings/wifi/WifiUtils;->isValidPsk(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    iget v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    invoke-static {v0, v6}, Lcom/android/settings/wifi/WifiUtils;->isValidSae(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    :goto_0
    move v0, v5

    goto :goto_2

    :cond_3
    iget v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->isEnterpriseNetwork(I)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v3

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v6

    :goto_2
    const-string v7, "isSubmittable passwordInvalid : "

    const-string v8, "WifiConnectPrefController"

    invoke-static {v7, v8, v0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v7}, Landroidx/preference/Preference;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-eqz v7, :cond_a

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    if-nez v0, :cond_a

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    const-string v0, "isSubmittable enabled1 : false"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    goto :goto_4

    :cond_a
    :goto_3
    const-string v0, "isSubmittable mSsidView enabled : false"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_4
    iget v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const-string v7, ""

    const/4 v9, 0x6

    const/4 v10, 0x7

    const/4 v11, 0x3

    if-eq v4, v11, :cond_b

    if-eq v4, v10, :cond_b

    if-ne v4, v9, :cond_10

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v4}, Landroidx/preference/Preference;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v4}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_c
    move-object v4, v7

    :goto_5
    const-string v12, "isSubmittable caCertSelection : "

    invoke-static {v12, v4, v8}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    :goto_6
    move v0, v6

    goto :goto_7

    :cond_d
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v12}, Landroidx/preference/Preference;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainView:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainView:Landroid/widget/EditText;

    const v4, 0x7f143562

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_6

    :cond_e
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    const v12, 0x7f143525

    invoke-virtual {v4, v12}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_7

    :cond_f
    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mShouldShowMessageForRetry:Z

    if-nez v4, :cond_11

    iget v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDisableReason:I

    const/16 v12, 0xb

    if-eq v4, v12, :cond_11

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_7

    :cond_10
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_11
    :goto_7
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v4}, Landroidx/preference/Preference;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v4}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_12
    const-string v4, "isSubmittable userCertSelection : "

    invoke-static {v4, v7, v8}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v0, v6

    :cond_13
    iget v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    if-eq v4, v11, :cond_14

    if-eq v4, v10, :cond_14

    if-ne v4, v9, :cond_17

    :cond_14
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v4}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_15
    move-object v4, v3

    :goto_8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "TLS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v0, v6

    :cond_17
    const-string v1, "isSubmittable "

    const-string v2, "/"

    invoke-static {v1, v2, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mExternalValidationResult:Z

    invoke-static {v1, v2, v8}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v0, :cond_18

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mExternalValidationResult:Z

    if-eqz p0, :cond_18

    goto :goto_9

    :cond_18
    move v5, v6

    :goto_9
    return v5
.end method

.method public final isUnchangedNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsRetryPopup:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    if-eqz p1, :cond_1

    const-string/jumbo v0, "save_config_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    :cond_0
    const-string/jumbo v0, "save_securitytype_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const-string/jumbo v0, "save_pw_button_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsPasswordVisible:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUpdateSaveState:Z

    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.android.net.wifi.NETWORK_CONNECT_FAILED"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mReceiver:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;

    const-string v3, "android.permission.NETWORK_SETTINGS"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public final onDestroy()V
    .locals 6

    const-string v0, "onDestroy clearall"

    const-string v1, "WifiConnectPrefController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsSaveButtonPressed:Z

    if-eqz v2, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    const-string v2, "1"

    :goto_0
    const-string v3, "not_save"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v3, "1027"

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsPasswordShareDisplayed:Z

    if-eqz v2, :cond_1

    const-string v2, "Displayed"

    goto :goto_1

    :cond_1
    const-string v2, "Not Displayed"

    :goto_1
    const-string v5, "password_share_displayed"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mReceiver:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$1;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "timer stop"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    const/4 v0, 0x0

    if-ne p1, p3, :cond_1

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    const/16 p1, 0xa0

    if-ne p2, p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->isSubmittable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->save(ZZ)V

    return p1

    :cond_1
    return v0
.end method

.method public final onPause()V
    .locals 4

    const-string v0, "onPause"

    const-string v1, "WifiConnectPrefController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingPassword:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->requestPassword(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Stop share timer"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingCanceled:Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    sget-object v1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordCallback:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->unregisterPasswordCallback(Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordCallback:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsRegistered:Z

    :cond_1
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    check-cast p1, Landroidx/preference/DropDownPreference;

    iget-object v1, p1, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    const-string v2, "WifiConnectPrefController"

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    if-ltz p2, :cond_1a

    array-length v4, v1

    if-lt p2, v4, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onPreferenceChange "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "security_settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, -0x1

    const-string v5, "1027"

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "None"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    const-string v0, "WPA3-Enterprise 192-bit"

    goto :goto_0

    :cond_2
    aget-object v0, v1, p2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "security_type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    invoke-static {v0, v5, v1, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityInPosition:[Ljava/lang/Integer;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->showSecurityFields(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSecurity()V

    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->isEnterpriseNetwork(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "PEAP"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setDefaultEAPPhase2Method(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodChangeListener:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$1;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    iput v4, p1, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Method:I

    iget-boolean p2, p1, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mIsExpanded:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->updatePreference(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->enableSubmitIfAppropriate()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->updateImeOptions()V

    goto/16 :goto_6

    :cond_5
    const-string v2, "eap_method"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->refreshEapItems(I)V

    aget-object p1, v1, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setDefaultEAPPhase2Method(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodChangeListener:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$1;

    if-eqz p2, :cond_6

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    iput v4, p2, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Method:I

    iget-boolean v0, p2, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mIsExpanded:Z

    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->updatePreference(Z)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->enableSubmitIfAppropriate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->disableViewsIfAppropriate$4()V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->updateImeOptions()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "eap_method_type"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    invoke-static {p0, v5, p2, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return v6

    :cond_7
    const-string v2, "eap_ocsp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    return v6

    :cond_8
    const-string v2, "eap_min_tls_ver"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    return v6

    :cond_9
    const-string v2, "eap_ca_cert"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v0, -0x63

    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDisableReason:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    aget-object v0, v1, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v4, "/system/etc/security/cacerts"

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    :cond_b
    :goto_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mIsTrustOnFirstUseSupported:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->enableTrustOnFirstUse(Z)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->enableTrustOnFirstUse(Z)V

    :goto_2
    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummaryWithWarning(Landroidx/preference/DropDownPreference;)V

    goto :goto_3

    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setDomainVisible()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setOcspVisible()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setMinTlsVersionVisible()V

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz p1, :cond_e

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->enableSubmitIfAppropriate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->disableViewsIfAppropriate$4()V

    if-eqz p2, :cond_15

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mIsTrustOnFirstUseSupported:Z

    const-string v0, "Do not validate"

    const-string v2, "Use system certificates"

    const-string v4, "Use saved certificates"

    if-eqz p1, :cond_13

    if-ne p2, v6, :cond_10

    :cond_f
    move-object v0, v2

    goto :goto_5

    :cond_10
    const/4 p1, 0x2

    if-ne p2, p1, :cond_11

    const-string v0, "Trust on first use (TOFU)"

    goto :goto_5

    :cond_11
    array-length p1, v1

    add-int/2addr p2, v6

    if-ne p1, p2, :cond_12

    goto :goto_5

    :cond_12
    move-object v0, v4

    goto :goto_5

    :cond_13
    if-ne p2, v6, :cond_14

    goto :goto_4

    :cond_14
    move-object v2, v4

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->getEapMethod$1()Ljava/lang/String;

    move-result-object p1

    const-string v4, "TLS"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    array-length p1, v1

    add-int/2addr p2, v6

    if-ne p1, p2, :cond_f

    :goto_5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "ca_certificate_type"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    invoke-static {p2, v5, p1, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    :cond_15
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->updateImeOptions()V

    return v6

    :cond_16
    const-string v2, "eap_user_cert"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    aget-object v0, v1, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->enableSubmitIfAppropriate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->disableViewsIfAppropriate$4()V

    return v6

    :cond_18
    const-string v1, "eap_sim_select"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    :cond_19
    :goto_6
    return v3

    :cond_1a
    :goto_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onPreferenceChange: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " entries null or length error"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final onResume()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->finishActivity$2()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onResume mWifiEntrySecurity : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiConnectPrefController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_MCF_SUPPORT_FRAMEWORK"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v5, 0x0

    if-nez v0, :cond_2

    const-string v0, "SEC_FLOATING_FEATURE_MCF_SUPPORT_FRAMEWORK disabled"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "UPSM mode or EmergencyMode is turned on"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedProfileRequest()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Device not support ProfileShare"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "nearby_scanning_enabled"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_5

    const-string v0, "Nearby scanning is disabled"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "device not support ProfileShare"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_5
    if-eqz v4, :cond_f

    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    if-eq v0, v3, :cond_6

    const/4 v6, 0x5

    if-eq v0, v6, :cond_6

    if-ne v0, v1, :cond_f

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mBssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "BSSID is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/settings/wifi/ContactHelper;->CONTENT_COUNT_URI:Landroid/net/Uri;

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/wifi/ContactHelper;->CONTENT_COUNT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_9

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_a

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_9
    :try_start_3
    const-string v1, "Wifi.ContactHelper"

    const-string v6, "cursor is null"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    if-eqz v0, :cond_c

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :goto_1
    if-eqz v0, :cond_b

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_2
    throw v1
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_c
    :goto_4
    const-string v0, "No contact"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mBssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Prepare to share "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mBssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordCallback:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;

    if-nez v0, :cond_e

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordCallback:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mBssid:Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordCallback:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;

    invoke-virtual {v0, v2, v6}, Lcom/samsung/android/wifi/SemWifiManager;->registerPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsRegistered:Z

    goto :goto_6

    :cond_f
    const-string v0, "ProfileShare not supported AP"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_6
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingCanceled:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setProfileSharingMode(Z)V

    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingCanceled:Z

    :cond_11
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSecurityFieldsInitialized:Z

    if-nez v0, :cond_12

    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->showSecurityFields(I)V

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    :cond_14
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mUpdateSaveState:Z

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    :cond_15
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mShouldShowMessageForRetry:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDisableReason:I

    if-ne v0, v3, :cond_16

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorTextMsg(I)V

    goto :goto_7

    :cond_16
    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorTextMsg(I)V

    goto :goto_7

    :cond_17
    const/16 v1, 0xb

    if-ne v0, v1, :cond_18

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorTextMsg(I)V

    :cond_18
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->save(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSaveConfig:Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v1, "save_config_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "save_securitytype_state"

    iget v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/material/internal/CheckableImageButton;->checked:Z

    const-string/jumbo v0, "save_pw_button_state"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final resetProgressButtonAndPreference()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiConnectPrefController"

    const-string/jumbo v1, "resetProgressButtonAndPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1434b5    # 1.9699941E38f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButtonText:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setPreferenceEnable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setButtonConnecting(Z)V

    return-void
.end method

.method public final save(ZZ)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsSaveButtonPressed:Z

    if-eqz p2, :cond_0

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v5, "1027"

    invoke-static {v4, v5}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingPassword:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "user action"

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->insertSaLoggingForPasswordShare(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "shared"

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->insertSaLoggingForPasswordShare(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const-string v6, "\""

    if-nez v5, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v7, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    :goto_1
    iget v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const-string v9, "[0-9A-Fa-f]{64}"

    const/4 v10, 0x4

    const-string v13, "TTLS"

    const/4 v14, 0x7

    const/16 v15, 0x22

    const/4 v11, 0x5

    const-string v12, "PEAP"

    const/4 v3, 0x6

    const-string v8, ""

    packed-switch v7, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {v4, v10}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v15, v6, v1}, Landroidx/compose/ui/platform/AndroidUriHandler$$ExternalSyntheticOutline0;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_5
    :goto_3
    move-object/from16 v16, v5

    goto/16 :goto_13

    :pswitch_1
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_3

    :pswitch_2
    const/4 v9, 0x3

    if-ne v7, v3, :cond_6

    invoke-virtual {v4, v11}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_4

    :cond_6
    if-ne v7, v14, :cond_7

    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {v4, v9}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :goto_4
    new-instance v7, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v7}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v7}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_8
    move-object v7, v12

    :goto_5
    iget-object v15, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v15, v15, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v15}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v15

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const-string v14, "AKA\'"

    const-string v3, "AKA"

    const-string v11, "SIM"

    if-eqz v16, :cond_9

    iget-object v9, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    iget-object v9, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_6

    :cond_9
    const-string v10, "TLS"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v9, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_6

    :cond_a
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v9, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    iget-object v9, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_6

    :cond_b
    const-string v10, "PWD"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_6

    :cond_c
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_6

    :cond_d
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_6

    :cond_e
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_f
    :goto_6
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v9}, Landroidx/preference/Preference;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_19

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v9}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_10
    move-object v9, v8

    :goto_7
    iget-object v10, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v16, v5

    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    iget-object v10, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    iget-object v10, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_8

    :cond_11
    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mIsTrustOnFirstUseSupported:Z

    if-eqz v5, :cond_12

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->enableTrustOnFirstUse(Z)V

    goto :goto_8

    :cond_12
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v10, "/system/etc/security/cacerts"

    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    :cond_14
    :goto_8
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_a

    :cond_15
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v5}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_16
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-static {v5, v1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result v1

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v5}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_17

    const/4 v5, 0x0

    goto :goto_9

    :cond_17
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result v5

    :goto_9
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setMinimumTlsVersion(I)V

    const/4 v5, 0x0

    goto :goto_b

    :cond_18
    :goto_a
    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setMinimumTlsVersion(I)V

    goto :goto_b

    :cond_19
    move-object/from16 v16, v5

    const/4 v5, 0x0

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setMinimumTlsVersion(I)V

    :goto_b
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_1a
    move-object v1, v8

    :goto_c
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1b
    move-object v1, v8

    :cond_1c
    iget-object v2, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    :cond_1d
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    :cond_1e
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    :cond_20
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_d

    :cond_21
    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_e

    :cond_22
    :goto_d
    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->getEapMethod$1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x5

    if-eq v15, v1, :cond_23

    const/4 v1, 0x6

    if-eq v15, v1, :cond_23

    const/4 v1, 0x7

    if-ne v15, v1, :cond_24

    :cond_23
    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    :cond_24
    :goto_e
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_26

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTempPassword:Ljava/lang/String;

    goto :goto_f

    :cond_25
    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTempPassword:Ljava/lang/String;

    :cond_26
    :goto_f
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2a

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    iget-object v2, v2, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v1

    iput v1, v4, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    goto/16 :goto_13

    :pswitch_3
    move-object/from16 v16, v5

    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_10

    :cond_27
    invoke-static {v15, v6, v1}, Landroidx/compose/ui/platform/AndroidUriHandler$$ExternalSyntheticOutline0;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    iput-object v1, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_13

    :pswitch_4
    move-object/from16 v16, v5

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_29

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_29

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_28

    goto :goto_11

    :cond_28
    const/4 v3, 0x0

    goto :goto_12

    :cond_29
    :goto_11
    const-string v1, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    goto :goto_13

    :goto_12
    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {v15, v6, v2}, Landroidx/compose/ui/platform/AndroidUriHandler$$ExternalSyntheticOutline0;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_13

    :pswitch_5
    move-object/from16 v16, v5

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :cond_2a
    :goto_13
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_2b
    move-object v1, v12

    :goto_14
    iget v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->isEnterpriseNetwork(I)Z

    move-result v2

    const-string v3, "WifiConnectPrefController"

    if-eqz v2, :cond_31

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_2c
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    iget-object v2, v2, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    iget-object v2, v2, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v1}, Lcom/android/settings/wifi/WifiUtils;->getPhase2Method(ILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :cond_2d
    const-string/jumbo v5, "setAdvancedItems eapPhase2 "

    invoke-static {v2, v5, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x5

    if-eq v2, v1, :cond_2e

    const/4 v1, 0x6

    if-eq v2, v1, :cond_2e

    const/4 v1, 0x7

    if-ne v2, v1, :cond_2f

    :cond_2e
    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    goto :goto_15

    :cond_2f
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    :cond_30
    :goto_15
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setAdvancedItems eapAnonymousId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    new-instance v1, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v1}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIpSettingsPref:Landroidx/preference/DropDownPreference;

    if-eqz v5, :cond_32

    iget-object v5, v5, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_32

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIpSettingsPref:Landroidx/preference/DropDownPreference;

    iget-object v5, v5, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_32

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :cond_32
    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v2, v5, :cond_36

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/WifiUtils;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    if-eqz v5, :cond_33

    :try_start_0
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkPrefixLengthView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Landroid/net/LinkAddress;

    invoke-direct {v8, v5, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v8}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_16

    :catch_0
    new-instance v7, Landroid/net/LinkAddress;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v7}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    :cond_33
    :goto_16
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/WifiUtils;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_34

    invoke-static {v5}, Lcom/android/settings/wifi/WifiUtils;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    if-eqz v5, :cond_34

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_35

    invoke-static {v7}, Lcom/android/settings/wifi/WifiUtils;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    if-eqz v5, :cond_35

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    invoke-virtual {v1, v8}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    :cond_36
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxySettingsPref:Landroidx/preference/DropDownPreference;

    if-eqz v7, :cond_38

    iget-object v7, v7, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_38

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxySettingsPref:Landroidx/preference/DropDownPreference;

    iget-object v7, v7, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_37

    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_17

    :cond_37
    const/4 v8, 0x2

    if-ne v7, v8, :cond_38

    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_17

    :cond_38
    move-object v7, v5

    :goto_17
    sget-object v8, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v7, v8, :cond_39

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyHostNameView:Landroid/widget/EditText;

    if-eqz v8, :cond_39

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyPortView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyExclusionlistView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3a

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v11

    goto :goto_18

    :cond_39
    sget-object v8, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v7, v8, :cond_3a

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mProxyPacView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3a

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_3a

    invoke-static {v8}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v11

    goto :goto_18

    :cond_3a
    const/4 v11, 0x0

    :goto_18
    if-nez v11, :cond_3b

    goto :goto_19

    :cond_3b
    move-object v5, v7

    :goto_19
    new-instance v7, Landroid/net/IpConfiguration;

    invoke-direct {v7}, Landroid/net/IpConfiguration;-><init>()V

    invoke-virtual {v7, v2}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    invoke-virtual {v7, v5}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    invoke-virtual {v7, v1}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    invoke-virtual {v7, v11}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    if-eqz v1, :cond_3c

    iget-object v1, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    iget-object v1, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    goto :goto_1a

    :cond_3c
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    iput v1, v4, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    :goto_1a
    if-eqz v16, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1, v2}, Lcom/android/wifitrackerlib/Utils;->shouldSetHiddenSsid(Ljava/lang/String;Landroid/net/wifi/WifiManager;)Z

    move-result v1

    goto :goto_1b

    :cond_3d
    const/4 v1, 0x0

    :goto_1b
    if-eqz v1, :cond_3e

    const/4 v1, 0x1

    iput-boolean v1, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1c

    :cond_3e
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    iput-boolean v1, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1c

    :cond_3f
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v1, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_1c
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    if-eqz v1, :cond_40

    iget-object v1, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    iget-object v1, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    goto :goto_1d

    :cond_40
    if-eqz v16, :cond_42

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSupportRandomMac(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSupportRandomMacForLgu(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v1

    if-nez v1, :cond_42

    :cond_41
    const/4 v1, 0x0

    iput v1, v4, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    goto :goto_1d

    :cond_42
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    iput v1, v4, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    :goto_1d
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDhcpNameSharingPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiConfiguration;->setSendDhcpHostnameEnabled(Z)V

    :cond_43
    if-eqz p1, :cond_44

    iput-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSaveConfig:Landroid/net/wifi/WifiConfiguration;

    return-void

    :cond_44
    if-nez v16, :cond_45

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSaveListener:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;

    invoke-virtual {v1, v4, v0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void

    :cond_45
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    iget v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->isEnterpriseNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_47

    sget-object v1, Lcom/android/wifitrackerlib/Utils;->defaultSsidList:Ljava/util/List;

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v1, 0x1

    goto :goto_1e

    :cond_46
    const/4 v1, 0x0

    :goto_1e
    if-eqz v1, :cond_47

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSimCheck(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1435f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialog(Ljava/lang/String;)V

    return-void

    :cond_47
    invoke-virtual/range {v16 .. v16}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual/range {v16 .. v16}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_48

    invoke-virtual/range {v16 .. v16}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    sget-boolean v1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->DBG:Z

    if-eqz v1, :cond_49

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connect to saved AP netId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    invoke-static {v1, v2, v3}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_1f

    :cond_48
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    :cond_49
    :goto_1f
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mAutoReconnectPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mAutoReconnectPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    iput-boolean v1, v4, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    :cond_4a
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mRejectCount:I

    new-instance v1, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectListener:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$6;

    invoke-virtual {v1, v4, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget v2, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setButtonConnecting(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setPreferenceEnable(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->startTime:J

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_4b

    const-string/jumbo v5, "timer start"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v5, 0x1d4c0

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4b
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v5, 0x2710

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/16 v1, -0x63

    iput v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mDisableReason:I

    return-void

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

.method public final setButtonConnecting(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->isSubmittable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setButtonEnable(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->setProgressVisibility(Z)V

    return-void
.end method

.method public final setButtonEnable(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "WifiConnectPrefController"

    const-string/jumbo v3, "timer stop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;->setEnabled(Z)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->setProgressVisibility(Z)V

    return-void
.end method

.method public final setPreferenceEnable(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->findEditTextFromPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->isPasswordVisibilityToggleEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    :cond_3
    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const/4 v1, 0x6

    if-eq p1, v1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mCanChangeEapMethod:Z

    if-nez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->updateImeOptions()V

    return-void
.end method

.method public final setProfileSharingMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingPassword:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordPref:Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setPreferenceEnable(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->isSubmittable()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final setupPhase2Method(I)V
    .locals 0

    return-void
.end method

.method public final showErrorDialog(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiplay:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    const v1, 0x7f141b4b

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final showErrorTextMsg(I)V
    .locals 8

    const-string/jumbo v0, "showErrorTextMsg disableReason "

    const-string v1, ", connectingstate is "

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRetry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mShouldShowMessageForRetry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", netId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    const-string v2, "WifiConnectPrefController"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

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

    iget v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mNetworkId:I

    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v5, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne p1, v3, :cond_3

    :cond_2
    :goto_1
    move p1, v0

    :goto_2
    move v1, v6

    goto/16 :goto_6

    :cond_3
    const/16 v3, 0xb

    if-ne p1, v3, :cond_4

    move v1, v0

    move p1, v6

    goto/16 :goto_6

    :cond_4
    const/4 v3, 0x3

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p1

    if-eq p1, v3, :cond_6

    const/4 v1, 0x7

    if-eq p1, v1, :cond_5

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->getSemDisableReason()I

    move-result p1

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f143712

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiplay:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f14356a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialog(Ljava/lang/String;)V

    :cond_7
    :goto_3
    move p1, v6

    goto :goto_2

    :cond_8
    const v1, 0x7f1434fc    # 1.9700085E38f

    if-eqz p1, :cond_b

    if-eq p1, v0, :cond_b

    const/16 v7, 0x2710

    if-lt p1, v7, :cond_9

    goto :goto_4

    :cond_9
    if-ne p1, v3, :cond_a

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiplay:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    if-ne p1, v5, :cond_e

    goto :goto_1

    :cond_b
    :goto_4
    iget v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    if-ne v3, v4, :cond_c

    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mRejectCount:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mRejectCount:I

    if-lez p1, :cond_e

    goto/16 :goto_1

    :cond_c
    if-ne v3, v0, :cond_d

    const/16 v3, 0x4e20

    if-ne p1, v3, :cond_d

    goto :goto_5

    :cond_d
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiplay:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialog(Ljava/lang/String;)V

    :cond_e
    :goto_5
    move p1, v6

    move v1, p1

    :goto_6
    if-eqz p1, :cond_12

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showErrorDialog : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowRetryDialog(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowRetryDialog(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->resetProgressButtonAndPreference()V

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiplay:Z

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mShouldShowMessageForRetry:Z

    goto :goto_8

    :cond_f
    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const v1, 0x7f1434fe    # 1.970009E38f

    if-eq p1, v5, :cond_11

    if-eq p1, v4, :cond_11

    if-ne p1, v0, :cond_10

    goto :goto_7

    :cond_10
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiplay:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    :goto_7
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mButtonPref:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1434b5    # 1.9699941E38f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButtonText:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setPreferenceEnable(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->isSubmittable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setButtonEnable(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPaswordTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->showErrorTextUnderEditText(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiplay:Z

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mShouldShowMessageForRetry:Z

    goto :goto_8

    :cond_12
    if-eqz v1, :cond_13

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    const v1, 0x7f143755

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mEapCaCertErrorPref:Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_13
    :goto_8
    return-void
.end method

.method public final update(Z)V
    .locals 2

    const-string/jumbo v0, "update triggered by Validator "

    const-string v1, "WifiConnectPrefController"

    invoke-static {v0, v1, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mExternalValidationResult:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->isSubmittable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setButtonEnable(Z)V

    return-void
.end method
