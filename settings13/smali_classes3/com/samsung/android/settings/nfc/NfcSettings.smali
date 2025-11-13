.class public Lcom/samsung/android/settings/nfc/NfcSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;
    }
.end annotation


# static fields
.field static final DBG:Z

.field public static IS_ANTENNA_ANIMATION:Z

.field public static OlpympicForSale:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final isJapanDCMModel:Z

.field private static final isJapanKDIModel:Z

.field private static mIconType:Ljava/lang/String;

.field private static mIsGpFelicaSupported:Z


# instance fields
.field private final ABOVE_MID:I

.field private final ABOVE_MID_TAB:I

.field private final BOTTOM:I

.field private final BOTTOM_MID:I

.field private final BOTTOM_MID_FOLDER:I

.field private final CENTER:I

.field private final CENTER_TAB:I

.field private final FLEX:I

.field private final LEFT:I

.field private final LEFT_DCM:I

.field private final RIGHT:I

.field private final RIGHT_CENTER:I

.field private final RIGHT_CENTER_DELTA:I

.field private final RIGHT_TOP:I

.field private final RIGHT_TOP_PORT:I

.field private final RIGHT_TOP_PORT_TAB:I

.field private final TOP:I

.field private final TOP_FOLDER:I

.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field private mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mEmptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private mExplainLayout:Lcom/android/settingslib/widget/LayoutPreference;

.field private mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsEmergencyMode:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

.field private mNfcMode:Landroidx/preference/SecPreferenceCategory;

.field private mNfcSettingPref:Landroidx/preference/PreferenceScreen;

.field private mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

.field private mPreferredSimCard:Landroidx/preference/SecPreferenceCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mSecureNfcDCM:Landroidx/preference/SecSwitchPreference;

.field private mSecureNfcKDI:Landroidx/preference/SecSwitchPreference;

.field private mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mTapPay:Landroidx/preference/SecPreferenceScreen;

.field private mTapPayDCM:Landroidx/preference/SecPreferenceScreen;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEmergencyMode(Lcom/samsung/android/settings/nfc/NfcSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsEmergencyMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPaymentSim(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdatePaymentSim(Lcom/samsung/android/settings/nfc/NfcSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->updatePaymentSim()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmIconType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIconType:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 71
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    const/4 v0, 0x0

    .line 84
    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsGpFelicaSupported:Z

    .line 107
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->isJapanDCMModel:Z

    .line 108
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isVzwModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Vzw"

    goto :goto_0

    :cond_0
    const-string v0, "Default"

    :goto_0
    sput-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIconType:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->isJapanKDIModel:Z

    .line 110
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_ConfigReaderModeUI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JAPAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->IS_ANTENNA_ANIMATION:Z

    .line 113
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isOlpympic()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->OlpympicForSale:Z

    .line 689
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/NfcSettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    .line 74
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    .line 75
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 76
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 77
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 79
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 80
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mExplainLayout:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsEmergencyMode:Z

    const/4 v1, 0x1

    .line 87
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->CENTER:I

    const/4 v1, 0x2

    .line 88
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->TOP:I

    const/4 v1, 0x3

    .line 89
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->BOTTOM:I

    const/4 v1, 0x4

    .line 90
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->ABOVE_MID:I

    const/4 v1, 0x5

    .line 91
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->RIGHT_TOP:I

    const/4 v1, 0x6

    .line 92
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->LEFT:I

    const/4 v1, 0x7

    .line 93
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->RIGHT:I

    const/16 v1, 0x8

    .line 94
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->TOP_FOLDER:I

    const/16 v1, 0x9

    .line 95
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->ABOVE_MID_TAB:I

    const/16 v1, 0xa

    .line 96
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->FLEX:I

    const/16 v1, 0xb

    .line 97
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->RIGHT_CENTER:I

    const/16 v1, 0xc

    .line 98
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->BOTTOM_MID:I

    const/16 v1, 0xd

    .line 99
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->BOTTOM_MID_FOLDER:I

    const/16 v1, 0xe

    .line 100
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->RIGHT_TOP_PORT_TAB:I

    const/16 v1, 0xf

    .line 101
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->LEFT_DCM:I

    const/16 v1, 0x10

    .line 102
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->RIGHT_TOP_PORT:I

    const/16 v1, 0x11

    .line 103
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->RIGHT_CENTER_DELTA:I

    const/16 v1, 0x12

    .line 104
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->CENTER_TAB:I

    .line 127
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    .line 130
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$1;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 5

    .line 328
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportCardModeUi()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v3, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 330
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v3, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 331
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    sget v3, Lcom/android/settings/R$string;->nfc_standard_mode_desc_support_p2p:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    sget v3, Lcom/android/settings/R$string;->nfc_standard_mode_desc:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 337
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcMode:Landroidx/preference/SecPreferenceCategory;

    if-eqz v0, :cond_5

    .line 338
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    goto :goto_1

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 342
    iput-object v2, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 343
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_2

    .line 344
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_3

    .line 347
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcMode:Landroidx/preference/SecPreferenceCategory;

    if-eqz v0, :cond_4

    .line 350
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 352
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v0, :cond_5

    .line 353
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 358
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 359
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object v3, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->androidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    goto :goto_2

    .line 361
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 365
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mTapPay:Landroidx/preference/SecPreferenceScreen;

    if-eqz v0, :cond_9

    .line 366
    sget-boolean v3, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsGpFelicaSupported:Z

    if-eqz v3, :cond_8

    .line 367
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mTapPayDCM:Landroidx/preference/SecPreferenceScreen;

    iput-object v4, v3, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->tapPay:Landroidx/preference/SecPreferenceScreen;

    if-eqz v0, :cond_9

    .line 369
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 372
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iput-object v0, v3, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->tapPay:Landroidx/preference/SecPreferenceScreen;

    .line 373
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mTapPayDCM:Landroidx/preference/SecPreferenceScreen;

    if-eqz v0, :cond_9

    .line 374
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 375
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mTapPayDCM:Landroidx/preference/SecPreferenceScreen;

    .line 381
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz v0, :cond_b

    .line 382
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportDualSwp()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 383
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    .line 384
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->updatePaymentSim()V

    goto :goto_4

    .line 386
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iput-object v2, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    .line 387
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPreferredSimCard:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 393
    :cond_b
    :goto_4
    sget-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIconType:Ljava/lang/String;

    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    .line 394
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v1, :cond_c

    .line 395
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mTapPay:Landroidx/preference/SecPreferenceScreen;

    if-eqz v0, :cond_d

    .line 396
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_5

    .line 398
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    .line 399
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc.hce"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 400
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mTapPay:Landroidx/preference/SecPreferenceScreen;

    if-eqz v0, :cond_d

    .line 401
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 406
    :cond_d
    :goto_5
    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsGpFelicaSupported:Z

    if-eqz v0, :cond_10

    .line 407
    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->isJapanKDIModel:Z

    if-nez v0, :cond_f

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIMvnoModel()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_6

    .line 411
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSecureNfcDCM:Landroidx/preference/SecSwitchPreference;

    iput-object v1, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->secureNfc:Landroidx/preference/SecSwitchPreference;

    .line 412
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSecureNfcKDI:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_7

    .line 408
    :cond_f
    :goto_6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSecureNfcKDI:Landroidx/preference/SecSwitchPreference;

    iput-object v1, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->secureNfc:Landroidx/preference/SecSwitchPreference;

    .line 409
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSecureNfcDCM:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 417
    :cond_10
    :goto_7
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object v1, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 418
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcSettingPref:Landroidx/preference/PreferenceScreen;

    iput-object v1, v0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->nfcSettingPref:Landroidx/preference/PreferenceScreen;

    .line 420
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 421
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 422
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->NfcSettingToggle(Lcom/android/settings/widget/SettingsMainSwitchBar;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->androidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->AndroidBeam(Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->StandardMode(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 423
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->CardMode(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->tapPay:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->TapAndPay(Landroidx/preference/SecPreferenceScreen;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->PaymentSim(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->nfcSettingPref:Landroidx/preference/PreferenceScreen;

    .line 424
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->NfcSettingPref(Landroidx/preference/PreferenceScreen;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->build()Lcom/samsung/android/settings/nfc/NfcEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    goto/16 :goto_8

    .line 425
    :cond_11
    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsGpFelicaSupported:Z

    if-eqz v0, :cond_12

    .line 426
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 427
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->NfcSettingToggle(Lcom/android/settings/widget/SettingsMainSwitchBar;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->androidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->AndroidBeam(Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->StandardMode(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 428
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->CardMode(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->tapPay:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->TapAndPay(Landroidx/preference/SecPreferenceScreen;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->PaymentSim(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->nfcSettingPref:Landroidx/preference/PreferenceScreen;

    .line 429
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->NfcSettingPref(Landroidx/preference/PreferenceScreen;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->secureNfc:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->NfcJapanPreferenceSecureNfc(Landroidx/preference/SecSwitchPreference;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->build()Lcom/samsung/android/settings/nfc/NfcEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    goto :goto_8

    .line 431
    :cond_12
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 432
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->NfcSettingToggle(Lcom/android/settings/widget/SettingsMainSwitchBar;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->StandardMode(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 433
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->CardMode(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->tapPay:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->TapAndPay(Landroidx/preference/SecPreferenceScreen;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->PaymentSim(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->nfcSettingPref:Landroidx/preference/PreferenceScreen;

    .line 434
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->NfcSettingPref(Landroidx/preference/PreferenceScreen;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->build()Lcom/samsung/android/settings/nfc/NfcEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    .line 438
    :goto_8
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mExplainLayout:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->populateViewForOrientation(Lcom/android/settingslib/widget/LayoutPreference;)V

    const/4 v0, 0x0

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    .line 443
    new-instance v1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    .line 444
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    const/16 v3, 0xc

    .line 445
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 446
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 450
    new-instance v1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    .line 451
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    .line 452
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 453
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mExplainLayout:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 454
    :cond_13
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 457
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    return-object p0
.end method

.method static isOlpympic()Z
    .locals 6

    .line 659
    new-instance v0, Ljava/io/File;

    const-string v1, "/prism"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 663
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/etc/code"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 664
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Multi CSC"

    .line 665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "QOL"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 668
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SJP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 669
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 673
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 679
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 682
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 675
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    .line 679
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :goto_2
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 682
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 684
    :cond_3
    :goto_3
    throw v0

    :cond_4
    :goto_4
    return v2
.end method

.method private makeAlertDialog()V
    .locals 6

    .line 601
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 602
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ultra_powersaving_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 603
    sget v1, Lcom/android/settings/R$string;->nfc_show_alert_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 605
    :cond_0
    sget v1, Lcom/android/settings/R$string;->emergency_mode_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 607
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->nfc_show_alert_dialog_message:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "NFC"

    aput-object v5, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 608
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 609
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$3;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 617
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 618
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private populateViewForOrientation(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 7

    const-string v0, "NfcSettings"

    if-nez p1, :cond_1

    .line 462
    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "layoutPref is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 465
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/NfcSettings;->startAnimation(Lcom/android/settingslib/widget/LayoutPreference;)V

    .line 467
    sget v1, Lcom/android/settings/R$id;->nfc_settings_vert:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 468
    sget v2, Lcom/android/settings/R$id;->nfc_settings_land:I

    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/core/widget/NestedScrollView;

    .line 471
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-ne v3, v4, :cond_2

    .line 472
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 473
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 474
    sget v3, Lcom/android/settings/R$id;->nfc_settings_land_layout:I

    invoke-virtual {p1, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    goto :goto_0

    .line 476
    :cond_2
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 477
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 478
    sget v3, Lcom/android/settings/R$id;->nfc_settings_vert_layout:I

    invoke-virtual {p1, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    :goto_0
    if-eqz v3, :cond_3

    const/16 v4, 0xf

    .line 482
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 483
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    .line 484
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v5, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 483
    invoke-virtual {v3, v4, p0}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 487
    :cond_3
    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsGpFelicaSupported:Z

    if-eqz p0, :cond_5

    sget-boolean v3, Lcom/samsung/android/settings/nfc/NfcSettings;->IS_ANTENNA_ANIMATION:Z

    if-nez v3, :cond_5

    .line 488
    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p0, :cond_4

    const-string p0, "need to delete all layout for global"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_4
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 490
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_5
    if-nez p0, :cond_6

    .line 492
    sget p0, Lcom/android/settings/R$id;->gpfelica_jpn_desc:I

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 493
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private startAnimation(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 2

    .line 499
    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsGpFelicaSupported:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->IS_ANTENNA_ANIMATION:Z

    if-nez v0, :cond_0

    return-void

    .line 504
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 505
    sget v0, Lcom/android/settings/R$id;->antenna_guide_image_land:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 506
    sget v1, Lcom/android/settings/R$id;->nfc_settings_land_desc:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    .line 508
    :cond_1
    sget v0, Lcom/android/settings/R$id;->antenna_guide_image_vert:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 509
    sget v1, Lcom/android/settings/R$id;->nfc_settings_vert_desc:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 512
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 513
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 514
    sget v1, Lcom/android/settings/R$string;->nfc_antenna_position_explain_all_tablet_support_p2p:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 516
    :cond_2
    sget v1, Lcom/android/settings/R$string;->nfc_antenna_position_explain_all_tablet:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 518
    :goto_1
    sget v1, Lcom/android/settings/R$string;->nfc_antenna_position_description_tablet:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 520
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 521
    sget v1, Lcom/android/settings/R$string;->nfc_antenna_position_explain_all_support_p2p:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 523
    :cond_4
    sget v1, Lcom/android/settings/R$string;->nfc_antenna_position_explain_all:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 525
    :goto_2
    sget v1, Lcom/android/settings/R$string;->nfc_antenna_position_description_phone:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    const/4 p1, 0x0

    const-string v1, "ro.vendor.nfc.info.antpos"

    .line 528
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 584
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_center:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 581
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_center_tab:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 578
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_right_center_delta:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 575
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_right_top_port:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 572
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_left_dcm:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 569
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_right_top_port_tab:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 566
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_flip:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 563
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_bottom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 560
    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_right_center:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 557
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_flex:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 554
    :pswitch_9
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_above_mid:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 551
    :pswitch_a
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_above:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 548
    :pswitch_b
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_right:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 545
    :pswitch_c
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_left:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 542
    :pswitch_d
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_right_top:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 539
    :pswitch_e
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_above_mid:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 536
    :pswitch_f
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_bottom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 533
    :pswitch_10
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_above:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 530
    :pswitch_11
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$anim;->sec_nfc_ant_center:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 588
    :goto_4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_5

    .line 590
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcSettings$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/nfc/NfcSettings$2;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method private updatePaymentSim()V
    .locals 6

    .line 623
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getPreferredSimSlot()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 627
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getEntryArray()[Ljava/lang/String;

    move-result-object v2

    .line 629
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->clearItems()V

    .line 630
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    aget-object v4, v2, v1

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    const-string v5, "1"

    invoke-virtual {v3, v2, v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v0, :cond_1

    .line 633
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_name_1"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 634
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_name_2"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 635
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v2, v4}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 638
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->onUpdateAdapter()V

    .line 639
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 640
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    new-instance v2, Lcom/samsung/android/settings/nfc/NfcSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$4;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setSIMcallback(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$CallbackOnSIMselected;)V

    .line 648
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    .line 649
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->isOffSlot(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->isOffSlot(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 652
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 650
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 168
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/R$string;->nfc_osaifukeitai_title:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settings/R$string;->nfcpayment_quick_toggle_title:I

    :goto_0
    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 158
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 159
    const-class p0, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 161
    :cond_0
    const-class p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NfcSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xe42

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/R$xml;->sec_nfc_settings_jpn:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settings/R$xml;->sec_nfc_settings:I

    :goto_0
    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 208
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 212
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 215
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 266
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 268
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mExplainLayout:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/NfcSettings;->populateViewForOrientation(Lcom/android/settingslib/widget/LayoutPreference;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    .line 176
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 p1, 0x0

    .line 178
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 180
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsGpFelicaSupported:Z

    .line 182
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 183
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportDualSwp()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 188
    new-instance p1, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mForwardingPref:Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;

    .line 189
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "nfc_explain"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mExplainLayout:Lcom/android/settingslib/widget/LayoutPreference;

    .line 190
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "nfc_mode_general"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcMode:Landroidx/preference/SecPreferenceCategory;

    .line 191
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "mode_standard_mode"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 192
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "mode_card_mode"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 193
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "empty_general"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 194
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "android_beam_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    .line 195
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "nfc_payment_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mTapPay:Landroidx/preference/SecPreferenceScreen;

    .line 196
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "nfc_payment_settings_dcm"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mTapPayDCM:Landroidx/preference/SecPreferenceScreen;

    .line 197
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "nfc_payment_sim"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    .line 198
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "nfc_preferred_general"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPreferredSimCard:Landroidx/preference/SecPreferenceCategory;

    .line 199
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "secure_nfc_settings_dcm"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSecureNfcDCM:Landroidx/preference/SecSwitchPreference;

    .line 200
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "secure_nfc_settings_kdi"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSecureNfcKDI:Landroidx/preference/SecSwitchPreference;

    .line 201
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcSettingPref:Landroidx/preference/PreferenceScreen;

    .line 203
    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcSettings;->OlpympicForSale:Z

    sput-boolean p0, Lcom/samsung/android/settings/nfc/NfcSettings;->IS_ANTENNA_ANIMATION:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 273
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 275
    iget-object p2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez p2, :cond_0

    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSupportRoutingSettings(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 277
    sget p2, Lcom/android/settings/R$string;->nfc_settings_advanced_setting:I

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    .line 278
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 257
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 259
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 296
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 307
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 299
    :cond_0
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    .line 300
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->nfc_settings_advanced_setting:I

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0xe49

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v1
.end method

.method public onPause()V
    .locals 1

    .line 242
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->pause()V

    .line 248
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsEmergencyMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    const/4 v0, 0x1

    .line 284
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 285
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p0, :cond_1

    .line 286
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .line 287
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 289
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 221
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    .line 225
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->resume()V

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsEmergencyMode:Z

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIsEmergencyMode:Z

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->makeAlertDialog()V

    :cond_1
    return-void
.end method
