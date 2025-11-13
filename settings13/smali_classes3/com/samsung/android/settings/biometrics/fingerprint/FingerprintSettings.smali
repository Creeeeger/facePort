.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog$FingerprintTemplateChangeDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;
    }
.end annotation


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static mIsKeepEnrollSession:Z

.field private static mIsPreferenceClicked:Z

.field private static final mScreenOffIconOptionSummaryString:[I


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mAboutFingerprints:Landroidx/preference/PreferenceScreen;

.field private mAddFingerprint:Landroidx/preference/PreferenceScreen;

.field private mAlwaysOn:Landroidx/preference/SwitchPreference;

.field private final mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mBiometricsSecurityUnlockInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private mChallenge:J

.field private mEmptyView:Landroid/view/View;

.field private mEnrolledFingerCount:I

.field private mFastRecognition:Landroidx/preference/SwitchPreference;

.field private mFingerEffect:Landroidx/preference/SwitchPreference;

.field private mFingerprintCancel:Landroid/os/CancellationSignal;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintTemplateChangeDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mIdentifyFingerprint:Z

.field private mIsAfw:Z

.field private mIsFromTemplateChangeNoti:Z

.field private mIsInMultiWindowMode:Z

.field private mIsKnox:Z

.field private mIsRegisteredFromEntry:Z

.field private mIsRelativeLink:Z

.field private mIsRunRegister:Z

.field private mIsSupportFpAlwaysOn:Z

.field private mLaunchedConfirm:Z

.field private mLockConfirmed:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMaskViewToken:Landroid/os/IBinder;

.field private mNeedFmmPopup:Z

.field mPrompt:Landroid/hardware/biometrics/BiometricPrompt;

.field mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field private mSamsungAccount:Landroidx/preference/SwitchPreference;

.field private mSamsungAccountContext:Landroid/content/Context;

.field private mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

.field private mScreenOffIcon:Landroidx/preference/SwitchPreference;

.field private mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

.field private mToken:[B

.field private mUserId:I

.field private mWebSignIn:Landroidx/preference/SwitchPreference;

.field private through_onpreferencechange:Z


# direct methods
.method public static synthetic $r8$lambda$FlKn9f5xQa1uifE72zFajPDWvB0(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->lambda$registerAuthenticate$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UP5z2Vqny3M-tgT2LN8aBXJ9yO0(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;Landroid/content/Intent;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->lambda$onActivityResult$1(Landroid/content/Intent;IIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFingerprintManager(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartSelectListUI(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;I[Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startSelectListUI(I[Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 127
    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_screen_off_icon_option_summary_never:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_screen_off_icon_option_summary_touch_to_show:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_screen_off_icon_option_summary_always_on:I

    const/4 v3, 0x2

    aput v1, v0, v3

    sput-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconOptionSummaryString:[I

    .line 152
    sput-boolean v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    .line 153
    sput-boolean v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    .line 1867
    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    const/4 v1, 0x0

    .line 112
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    .line 132
    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    .line 164
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    .line 165
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    .line 168
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    .line 172
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    .line 175
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintTemplateChangeDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;

    .line 176
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsFromTemplateChangeNoti:Z

    .line 177
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRegisteredFromEntry:Z

    .line 178
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    .line 179
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRelativeLink:Z

    .line 180
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mNeedFmmPopup:Z

    .line 181
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsSupportFpAlwaysOn:Z

    .line 185
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 187
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mMaskViewToken:Landroid/os/IBinder;

    .line 189
    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    .line 211
    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$2;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method private addFingerprintItemPreferences()V
    .locals 9

    .line 464
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 465
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    .line 469
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 471
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    const-string v3, "FpstFingerprintSettings"

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 472
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    .line 474
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isJdmModel()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    .line 476
    :goto_0
    iget v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v2, v5, :cond_2

    move v5, v2

    :goto_1
    if-lez v5, :cond_1

    .line 478
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v6

    iget-object v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v8}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v8

    if-le v6, v8, :cond_1

    .line 480
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 481
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v7, v5, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    :cond_2
    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v2, v5, :cond_3

    const-string v2, "addFingerprintItemPreferences : Sort Error"

    .line 488
    invoke-static {v3, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    .line 490
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 492
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    .line 497
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFingerprintItemPreferences : mEnrolledFingerCount["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v1, :cond_5

    move v1, v4

    .line 501
    :goto_2
    iget v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v1, v5, :cond_4

    .line 502
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    .line 503
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addFingerprintItemPreferences : fid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "], Name["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "], Gid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 503
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v4

    .line 508
    :goto_3
    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v1, v2, :cond_7

    .line 509
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 510
    new-instance v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;Landroid/content/Context;)V

    .line 511
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->genKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 513
    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 514
    sget v2, Lcom/android/settings/R$layout;->sec_fingerprint_preference:I

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 515
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 516
    sget v2, Lcom/android/settings/R$drawable;->sec_biometrics_ic_menu_add_inset:I

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setIcon(I)V

    .line 517
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/settings/R$integer;->sec_fingerprint_register_category_order_default:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 519
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 520
    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 523
    :cond_5
    iput v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const-string v0, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 2"

    .line 524
    invoke-static {v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 527
    :cond_6
    iput v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const-string v0, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 1"

    .line 528
    invoke-static {v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->updateAddPreference()V

    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 4

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "cancelAndSessionEnd() "

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->stopFingerprintAuth()V

    .line 255
    sget-boolean v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    if-nez v1, :cond_1

    const-string v1, "Close the session and finish the activity"

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    .line 258
    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->revokeChallenge(IJ)V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->finishFingerprintSettings()V

    goto :goto_0

    :cond_1
    const-string p0, "Keep the session and activity"

    .line 262
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private checkMobileKeyboard()Z
    .locals 3

    .line 1805
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1807
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1808
    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isNotAvailableFingerprintWithMobileKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1813
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMobileKeyboard. return : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isAdded() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FpstFingerprintSettings"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 3

    .line 451
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "FpstFingerprintSettings"

    const-string v2, "createPreferenceHierarchy : remove all"

    .line 453
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 457
    :cond_0
    sget v1, Lcom/android/settings/R$xml;->sec_fingerprint:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 458
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerprintPreference()V

    .line 459
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->addFingerprintItemPreferences()V

    return-object v0
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFingerprintSamsungAccountVerification()Z
    .locals 2

    .line 1580
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_used_samsungaccount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 1581
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFingerprintSamsungAccountVerification :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FpstFingerprintSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getFingerprintVerification()Z
    .locals 2

    .line 1564
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1565
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_webpass"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 1566
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFingerprintVerification :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FpstFingerprintSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private getReasonIsCancelSession(Landroid/content/Intent;)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "reason"

    .line 1160
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cancelsession"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWalletApp()Z
    .locals 5

    const/4 v0, 0x0

    .line 2036
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.samsung.android.spay.common.share/global"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "GET_global"

    const-string v3, "samsungwallet_open_quickaccess"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "wallet_app_status"

    .line 2038
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    move v0, v1

    :catch_0
    :cond_0
    return v0
.end method

.method private synthetic lambda$onActivityResult$1(Landroid/content/Intent;IIJ)V
    .locals 0

    .line 1102
    iput-wide p4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    .line 1103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p2, p1, p3, p4, p5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    .line 1104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1106
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    if-nez p1, :cond_0

    const-string p1, "FpstFingerprintSettings"

    const-string p2, "CONFIRM_REQUEST: token = NULL"

    .line 1107
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    sget p2, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 1109
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    .line 1108
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$registerAuthenticate$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 331
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->stopFingerprintAuth()V

    const/4 p0, 0x0

    .line 332
    sput-boolean p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    return-void
.end method

.method private launchConfirmLock()V
    .locals 5

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "Launch ConfirmLock"

    .line 1196
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1198
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLaunchedConfirm:Z

    .line 1199
    sput-boolean v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    .line 1201
    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 1202
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v3, 0xc9

    .line 1203
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 1204
    invoke-virtual {v3, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 1205
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 1206
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 1207
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 1209
    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_0

    .line 1210
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 1214
    :cond_0
    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1215
    invoke-virtual {v2, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setKnoxWorkProfileSecurity(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 1219
    :cond_1
    invoke-virtual {v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Launch ConfirmLock - Fail"

    .line 1220
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1221
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLaunchedConfirm:Z

    .line 1222
    sput-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    .line 1223
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    return-void
.end method

.method private registerAuthenticate()V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 323
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 324
    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_check_added_fingerprints:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 325
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    sget v1, Lcom/android/settings/R$string;->fingerprintplus_select_msg:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 327
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetBiometricType(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 328
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetPrivilegedFlag(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    sget v1, Lcom/android/settings/R$string;->sec_biometrics_common_done:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 334
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    .line 336
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isOpticalSensor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semAddMaskView()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mMaskViewToken:Landroid/os/IBinder;

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    iget p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateUser(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "FpstFingerprintSettings"

    const-string v0, "registerAuthenticate : Skip"

    .line 317
    invoke-static {p0, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private runRegister(Ljava/lang/String;)V
    .locals 5

    .line 1710
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FpstFingerprintSettings"

    if-eqz v0, :cond_0

    .line 1711
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    goto/16 :goto_1

    .line 1712
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    if-eqz v0, :cond_2

    .line 1713
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_doesnt_support_multi_window_text:I

    .line 1714
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1715
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_fullscreen_register_finger:I

    .line 1717
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1718
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isDisableScreenForDisplayFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1719
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.samsung.android.settings.biometrics.fingerprint.FingerprintLockSettings"

    .line 1720
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, -0x1

    const-string v4, "fingerIndex"

    .line 1722
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "previousStage"

    .line 1723
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1724
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    const-string v3, "identifyFingerprint"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 1725
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1726
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz p1, :cond_3

    const-string v3, "hw_auth_token"

    .line 1727
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1729
    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    if-eqz p1, :cond_4

    .line 1730
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "runRegister already called : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 p1, 0x1

    .line 1733
    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    .line 1734
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runRegister called : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :try_start_0
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez p1, :cond_5

    const/16 p1, 0x3e9

    .line 1738
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_5
    const/16 p1, 0x3e8

    .line 1740
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 1744
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    const-string p0, "runRegister : reset mIsPreferenceClicked value"

    .line 1748
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    sput-boolean v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    return-void
.end method

.method private setEnableScreenOffIcon(Z)V
    .locals 2

    .line 1538
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    if-nez v0, :cond_0

    return-void

    .line 1542
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 1544
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1545
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1546
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1547
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    sget v1, Lcom/android/settings/R$string;->sec_biometircs_cannot_change_setting_by_powersaving_mode:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1548
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    .line 1550
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 1597
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1600
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "fingerprint_samsungaccount_confirmed"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    .line 1601
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setFingerPrintOnSamsungAccountConfirmed:result : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FpstFingerprintSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private setFingerprintPreference()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "com.samsung.android.biometrics.app.setting"

    const-string v3, "FpstFingerprintSettings"

    .line 1246
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    .line 1247
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "device_provisioned"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1248
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v6, v7}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintUnlockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v6

    .line 1253
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v7, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v7}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    const-string v7, "check_added_fingerprints"

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 1254
    invoke-virtual {v1, v7}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    .line 1255
    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    const-string v9, "key_fingerprint_add"

    .line 1257
    invoke-virtual {v1, v9}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    iput-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAddFingerprint:Landroidx/preference/PreferenceScreen;

    .line 1259
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->setStorageDeviceProtected()V

    const/4 v10, 0x0

    .line 1264
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1266
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setFingerprintPreference : resources exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    :goto_0
    const-string v12, "set_screen_lock"

    .line 1271
    invoke-virtual {v1, v12}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    iput-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    if-eqz v0, :cond_7

    .line 1274
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1275
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v6, :cond_1

    .line 1278
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v13, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v5, v13}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricsLockDBValue(Landroid/content/Context;II)V

    goto :goto_1

    .line 1281
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v13, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v5, v13}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricsLockDBValue(Landroid/content/Context;II)V

    .line 1285
    :goto_1
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 1288
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v13, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v13}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1291
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v13, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v13}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 1292
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v13, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v13}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1295
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v13, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v13}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v13, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    .line 1296
    invoke-virtual {v0, v13}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "setFingerprintPreference : Screen lock switch disable by MDM!"

    .line 1298
    invoke-static {v3, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 1300
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v13, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v13}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabledByDPM(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1301
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v13

    const/16 v14, 0x20

    iget v15, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v13, v14, v15}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1306
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1310
    :cond_4
    :goto_2
    iget v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1311
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v13, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v13}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1312
    iget-object v13, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/android/settings/R$string;->sec_fingerprint_set_as_screen_lock_summary_common_workspace:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-array v15, v5, [Ljava/lang/Object;

    aput-object v0, v15, v8

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1315
    :cond_5
    iget-boolean v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-nez v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v13, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v13}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->isNotSupportBiometricsLockMenu(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1316
    :cond_6
    invoke-virtual {v1, v12}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_7
    const-string v0, "set_always_on"

    .line 1321
    invoke-virtual {v1, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Landroidx/preference/SwitchPreference;

    iput-object v12, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    const-string v13, "string"

    if-eqz v12, :cond_f

    .line 1323
    iget-boolean v12, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsSupportFpAlwaysOn:Z

    if-eqz v12, :cond_e

    .line 1324
    iget-boolean v12, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-nez v12, :cond_d

    iget-boolean v12, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    if-eqz v12, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v11, :cond_a

    .line 1330
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isDisabledFingerprintScreenOff(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "sec_fingerprint_always_on_summary_dex"

    .line 1331
    invoke-virtual {v11, v0, v13, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    const-string v0, "sec_fingerprint_always_on_summary"

    .line 1333
    invoke-virtual {v11, v0, v13, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1335
    :goto_3
    iget-object v12, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v12, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1337
    :cond_a
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1338
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    iget v14, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v12, v14}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnBooleanValue(Landroid/content/Context;I)Z

    move-result v12

    invoke-virtual {v0, v12}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v6, :cond_c

    .line 1340
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v12, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v12}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1341
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isDisabledFingerprintScreenOff(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    .line 1344
    :cond_b
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_6

    .line 1342
    :cond_c
    :goto_4
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_6

    .line 1325
    :cond_d
    :goto_5
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 1326
    iput-object v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    goto :goto_6

    .line 1348
    :cond_e
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 1349
    iput-object v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    :cond_f
    :goto_6
    const-string v0, "screen_off_icon_aod"

    .line 1354
    invoke-virtual {v1, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Landroidx/preference/SecDropDownPreference;

    iput-object v12, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    if-eqz v12, :cond_15

    .line 1356
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIconAod(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1357
    iget-boolean v12, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-nez v12, :cond_13

    iget-boolean v12, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    if-eqz v12, :cond_10

    goto/16 :goto_8

    .line 1361
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v12, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v12}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintScreenOffIconAodDbValue(Landroid/content/Context;I)I

    move-result v0

    .line 1362
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "iconOptionType : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    iget-object v12, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/CharSequence;

    sget v10, Lcom/android/settings/R$string;->sec_fingerprint_screen_off_icon_option_dropdown_always_on:I

    .line 1365
    invoke-virtual {v1, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v15, v8

    sget v10, Lcom/android/settings/R$string;->sec_fingerprint_screen_off_icon_option_dropdown_touch_to_show:I

    .line 1366
    invoke-virtual {v1, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v15, v5

    sget v10, Lcom/android/settings/R$string;->sec_fingerprint_screen_off_icon_option_dropdown_never:I

    .line 1367
    invoke-virtual {v1, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x2

    aput-object v10, v15, v16

    .line 1364
    invoke-virtual {v12, v15}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1370
    iget-object v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    new-array v12, v14, [Ljava/lang/CharSequence;

    .line 1371
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v8

    .line 1372
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v5

    .line 1373
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v16

    .line 1370
    invoke-virtual {v10, v12}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1376
    iget-object v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    sget-object v12, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconOptionSummaryString:[I

    aget v14, v12, v0

    invoke-virtual {v10, v14}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1377
    iget-object v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    array-length v12, v12

    sub-int/2addr v12, v5

    sub-int/2addr v12, v0

    invoke-virtual {v10, v12}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 1378
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1379
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    if-eqz v6, :cond_12

    .line 1381
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v10}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsSupportFpAlwaysOn:Z

    if-eqz v0, :cond_11

    .line 1382
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v10}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnBooleanValue(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_7

    .line 1385
    :cond_11
    invoke-direct {v1, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setEnableScreenOffIcon(Z)V

    goto :goto_9

    .line 1383
    :cond_12
    :goto_7
    invoke-direct {v1, v8}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setEnableScreenOffIcon(Z)V

    goto :goto_9

    .line 1358
    :cond_13
    :goto_8
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const/4 v10, 0x0

    .line 1359
    iput-object v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    goto :goto_9

    .line 1389
    :cond_14
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 1390
    iput-object v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    :cond_15
    :goto_9
    const-string v0, "screen_off_icon"

    .line 1395
    invoke-virtual {v1, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v10

    check-cast v10, Landroidx/preference/SwitchPreference;

    iput-object v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    if-eqz v10, :cond_1d

    .line 1397
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIcon()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1398
    iget-boolean v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-nez v10, :cond_1b

    iget-boolean v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    if-eqz v10, :cond_16

    goto :goto_b

    .line 1402
    :cond_16
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1403
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    iget v12, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v10, v12}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintScreenOffIconBooleanValue(Landroid/content/Context;I)Z

    move-result v10

    invoke-virtual {v0, v10}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v6, :cond_19

    .line 1405
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v10}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsSupportFpAlwaysOn:Z

    if-eqz v0, :cond_17

    .line 1406
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v10}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnBooleanValue(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_18

    .line 1407
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_a

    .line 1413
    :cond_18
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_c

    :cond_19
    :goto_a
    if-eqz v11, :cond_1a

    .line 1408
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isDisabledFingerprintScreenOff(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1409
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    const-string v10, "sec_fingerprint_screen_off_summary_dex"

    invoke-virtual {v11, v10, v13, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1411
    :cond_1a
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_c

    .line 1399
    :cond_1b
    :goto_b
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const/4 v2, 0x0

    .line 1400
    iput-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    goto :goto_c

    :cond_1c
    const/4 v2, 0x0

    .line 1417
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 1418
    iput-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    :cond_1d
    :goto_c
    const-string v0, "support_web_signin"

    .line 1423
    invoke-virtual {v1, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mWebSignIn:Landroidx/preference/SwitchPreference;

    if-eqz v2, :cond_20

    .line 1425
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v10, "com.sec.android.app.sbrowser"

    invoke-static {v2, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1426
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-boolean v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-nez v2, :cond_1f

    iget-boolean v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    if-eqz v2, :cond_1e

    goto :goto_d

    .line 1430
    :cond_1e
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mWebSignIn:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1431
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mWebSignIn:Landroidx/preference/SwitchPreference;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getFingerprintVerification()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    move v0, v5

    goto :goto_e

    :cond_1f
    :goto_d
    const-string v2, "setFingerprintPreference : Remove Web Sign-In"

    .line 1427
    invoke-static {v3, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_20
    move v0, v8

    :goto_e
    const-string v2, "support_samsung_account"

    .line 1437
    invoke-virtual {v1, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v10

    check-cast v10, Landroidx/preference/SwitchPreference;

    iput-object v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    if-eqz v10, :cond_28

    .line 1439
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 1440
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/settings/security/SecurityUtils;->checkSAMenuChanged(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_27

    .line 1441
    :cond_21
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-nez v10, :cond_27

    iget-boolean v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-nez v10, :cond_27

    iget-boolean v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    if-nez v10, :cond_27

    sget-boolean v10, Lcom/samsung/android/settings/Rune;->SUPPORT_DISABLE_ACCOUNTS_SETTINGS:Z

    if-eqz v10, :cond_22

    goto/16 :goto_13

    .line 1447
    :cond_22
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1448
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    sget v2, Lcom/android/settings/R$string;->sec_fingerprint_samsung_account_jp:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1451
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v0

    .line 1452
    iget-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v2

    .line 1453
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setFingerprintPreference : Samsung Account  isSAVerified : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " , isSASignedIn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :try_start_2
    iget-object v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    if-eqz v0, :cond_24

    if-eqz v2, :cond_24

    move v11, v5

    goto :goto_f

    :cond_24
    move v11, v8

    :goto_f
    invoke-direct {v1, v10, v11}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 1458
    iget-object v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    if-eqz v0, :cond_25

    if-eqz v2, :cond_25

    move v11, v5

    goto :goto_10

    :cond_25
    move v11, v8

    :goto_10
    invoke-direct {v1, v10, v11}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 1459
    iget-object v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_26

    if-eqz v2, :cond_26

    move v0, v5

    goto :goto_11

    :cond_26
    move v0, v8

    :goto_11
    invoke-virtual {v10, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_12

    :catch_2
    move-exception v0

    .line 1461
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1463
    :goto_12
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1464
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    move v0, v5

    goto :goto_14

    :cond_27
    :goto_13
    const-string v10, "setFingerprintPreference : Remove Samsung Account"

    .line 1443
    invoke-static {v3, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const/4 v2, 0x0

    .line 1445
    iput-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    :cond_28
    :goto_14
    const-string v2, "fast_recognition"

    .line 1470
    invoke-virtual {v1, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v10

    check-cast v10, Landroidx/preference/SwitchPreference;

    iput-object v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFastRecognition:Landroidx/preference/SwitchPreference;

    if-eqz v10, :cond_2d

    .line 1472
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFasterRecognition()Z

    move-result v10

    const-string v11, "security_option"

    if-eqz v10, :cond_2c

    .line 1473
    iget-boolean v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-eqz v10, :cond_29

    .line 1474
    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 1475
    invoke-virtual {v1, v11}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const/4 v2, 0x0

    .line 1476
    iput-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFastRecognition:Landroidx/preference/SwitchPreference;

    goto :goto_16

    .line 1478
    :cond_29
    iget-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFastRecognition:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1479
    iget-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFastRecognition:Landroidx/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    iget v11, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v10, v11}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintFastRecognitionBooleanValue(Landroid/content/Context;I)Z

    move-result v10

    invoke-virtual {v2, v10}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v6, :cond_2b

    .line 1481
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v10, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v2, v10}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_15

    .line 1484
    :cond_2a
    iget-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFastRecognition:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_16

    .line 1482
    :cond_2b
    :goto_15
    iget-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFastRecognition:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_16

    .line 1488
    :cond_2c
    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 1489
    invoke-virtual {v1, v11}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const/4 v2, 0x0

    .line 1490
    iput-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFastRecognition:Landroidx/preference/SwitchPreference;

    :cond_2d
    :goto_16
    if-nez v0, :cond_2e

    const-string v0, "setFingerprintPreference : No supported application"

    .line 1495
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "inset_application"

    .line 1496
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_2e
    const-string v0, "key_fingerprint_about_fingerprints"

    .line 1500
    invoke-virtual {v1, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceScreen;

    iput-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAboutFingerprints:Landroidx/preference/PreferenceScreen;

    if-eqz v2, :cond_2f

    .line 1502
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isDisplaySensor()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 1503
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v0, "inset_fingerprint_biometrics_security_unlock"

    .line 1504
    invoke-virtual {v1, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mBiometricsSecurityUnlockInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v2, :cond_2f

    .line 1506
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_2f
    if-eq v4, v5, :cond_30

    const-string v0, "setFingerprintPreference : SUW Remove reigster category"

    .line 1513
    invoke-static {v3, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    invoke-virtual {v1, v9}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 1515
    invoke-virtual {v1, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_30
    const-string v0, "fingerprint_effect"

    .line 1519
    invoke-virtual {v1, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    if-eqz v2, :cond_34

    .line 1521
    iget-boolean v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-nez v2, :cond_33

    iget-boolean v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    if-nez v2, :cond_33

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintEffect()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1522
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1523
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v3, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintEffectValue(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v6, :cond_32

    .line 1525
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_17

    .line 1528
    :cond_31
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_18

    .line 1526
    :cond_32
    :goto_17
    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_18

    .line 1531
    :cond_33
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const/4 v2, 0x0

    .line 1532
    iput-object v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    :cond_34
    :goto_18
    return-void
.end method

.method private setFingerprintVerification(Z)V
    .locals 1

    .line 1556
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1557
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_webpass"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1558
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setFingerprintVerification: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FpstFingerprintSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setLinkedDataView()V
    .locals 3

    .line 1987
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1991
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_5

    .line 1992
    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 1996
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1997
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.samsungpass"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1999
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v2, 0x201d

    .line 2000
    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 2001
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getMetricsCategory()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 2002
    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 2004
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2005
    sget v0, Lcom/android/settings/R$string;->iris_use_samsung_pass_jpn:I

    iput v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_0

    .line 2007
    :cond_1
    sget v0, Lcom/android/settings/R$string;->iris_use_samsung_pass:I

    iput v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 2009
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2010
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 2016
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isFingerprintSupportSamsungPay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2017
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.spay"

    const-string v2, "com.samsung.android.spay.ui.SpayMainActivity"

    .line 2018
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 2019
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2021
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v2, 0x201f

    .line 2022
    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 2023
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getMetricsCategory()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 2024
    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 2025
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->isWalletApp()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_use_samsungwallet:I

    goto :goto_1

    :cond_4
    sget v0, Lcom/android/settings/R$string;->iris_use_samsung_pay:I

    :goto_1
    iput v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 2027
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 2031
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private setUseFingerprintForSA(Landroid/content/Context;I)Z
    .locals 0

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 1587
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1590
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "fingerprint_used_samsungaccount"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    .line 1591
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setFingerPrintOnSamsungAccountUsed:result : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FpstFingerprintSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private showFingerprintDisclaimer()V
    .locals 4

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "startBiometricsDisclaimer"

    .line 1228
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.BiometricsDisclaimerSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1232
    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "BIOMETRICS_LOCK_TYPE"

    const/4 v3, 0x1

    .line 1233
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "fromSettingsOption"

    .line 1234
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x3f0

    .line 1237
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1239
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string p0, "startBiometricsDisclaimer : Activity Not Found !"

    .line 1240
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showMobileKeyboardToastMsg()V
    .locals 5

    .line 1702
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_keyboard_toast_msg:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/android/settings/R$string;->sec_fingerprint:I

    .line 1703
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1702
    invoke-static {v0, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1705
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showTemplateChangeDialog()V
    .locals 3

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "showTemplateChangeDialog"

    .line 622
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintTemplateChangeDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;-><init>(ILandroid/hardware/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintTemplateChangeDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintTemplateChangeDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;->setTurnOnDialogFragmentListener(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog$FingerprintTemplateChangeDialogListener;)V

    .line 628
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintTemplateChangeDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$FingerprintTemplateChangeDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "FingerprintSettings_FingerprintTemplateChangeDialog"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 3

    .line 1685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivityForResultWrapper:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstFingerprintSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    const-string v2, "isAfw"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1688
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    const-string v2, "is_knox"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1690
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1692
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    .line 1693
    sput-boolean p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1695
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "startActivityForResultWrapper : reset mIsPreferenceClicked value"

    .line 1696
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1697
    sput-boolean p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    :goto_0
    return-void
.end method

.method private startFmmBackupPasswordPopup()V
    .locals 3

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "startFmmBackupPasswordPopup"

    .line 594
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFmmPopupIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v2, 0x10000

    .line 599
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x7d0

    .line 601
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Exception occured!"

    .line 603
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private startRenameFingerprint(I)V
    .locals 4

    .line 1631
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1632
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    .line 1634
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRenameFingerprint : fId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstFingerprintSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "selected_id"

    .line 1637
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1638
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    const-string v3, "isAfw"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1639
    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1641
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1642
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1643
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1644
    const-class p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;

    .line 1645
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.android.settings"

    .line 1644
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3f1

    .line 1647
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    return-void
.end method

.method private startSelectListUI(I[Z)V
    .locals 3

    .line 1606
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1607
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    .line 1609
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSelectListUI : fId["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], twChecklist["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FpstFingerprintSettings"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    sput-boolean v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    .line 1613
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "selected_id"

    .line 1614
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1615
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    const-string v1, "isAfw"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1617
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_1

    const-string p1, "twmultiselected_id"

    .line 1619
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 1622
    :cond_1
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    .line 1623
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/16 p2, 0x3ef

    .line 1624
    invoke-virtual {p1, p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 1625
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x2019

    .line 1626
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 1627
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private stopFingerprintAuth()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FpstFingerprintSettings"

    const-string v2, "stopFingerprintAuth cancel()"

    .line 239
    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 241
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mMaskViewToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 245
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->semRemoveMaskView(Landroid/os/IBinder;)I

    .line 246
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mMaskViewToken:Landroid/os/IBinder;

    :cond_1
    return-void
.end method

.method private updateAddPreference()V
    .locals 3

    .line 536
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll()I

    move-result v1

    const-string v2, "FpstFingerprintSettings"

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAddFingerprint:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    const-string v0, "key_fingerprint_add"

    .line 538
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v0, "updateAddPreference : Remove mAddFingerprint"

    .line 539
    invoke-static {v2, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAddPreference [mEnrolledFingerCount] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePreferences()V
    .locals 2

    .line 671
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    .line 674
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setLinkedDataView()V

    .line 676
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 677
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEmptyView:Landroid/view/View;

    .line 679
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEmptyView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockConfirmed:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->hideMenuList(Landroid/app/Activity;Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public deleteAllFingerprints()V
    .locals 4

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "deleteAllFingerprints"

    .line 632
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_0

    .line 637
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 642
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showTemplateChangeDialog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 647
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    new-instance v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;I)V

    invoke-virtual {v0, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void
.end method

.method protected finishFingerprintSettings()V
    .locals 4

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "finishFingerprintSettings()"

    .line 267
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsFromTemplateChangeNoti:Z

    if-eqz v1, :cond_1

    .line 270
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 271
    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    if-nez v2, :cond_0

    const-string v2, "Go to Biometrics and security"

    .line 272
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.settings.SECURITY_SETTINGS"

    .line 273
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v2, "Go to Work profile"

    .line 276
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.knox.containeragent"

    const-string v2, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivity"

    .line 277
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 283
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 941
    sget p0, Lcom/android/settings/R$string;->help_url_fingerprint:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 355
    const-class p0, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2016

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 350
    sget p0, Lcom/android/settings/R$xml;->sec_fingerprint:I

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_security_and_privacy"

    return-object p0
.end method

.method protected handleError(ILjava/lang/CharSequence;)V
    .locals 3

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleError errMsgId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstFingerprintSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->stopFingerprintAuth()V

    const/4 v0, 0x0

    .line 293
    sput-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    .line 306
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 308
    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_0
    return-void

    :cond_1
    const-string p0, "handleError FINGERPRINT_ERROR_CANCELED"

    .line 299
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 946
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==onActivityResult requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstFingerprintSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 950
    sput-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    if-eqz p3, :cond_0

    const-string v2, "biometrics_settings_destroy"

    .line 954
    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "onActivityResult: Finish Settings"

    .line 957
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    sput-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    .line 959
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    return-void

    :cond_0
    const/16 v2, 0x65

    const-string v3, "fingerprint_used_samsungaccount"

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq p1, v2, :cond_15

    const/16 v6, 0x66

    if-eq p1, v6, :cond_10

    const/16 v3, 0xc9

    if-eq p1, v3, :cond_e

    const/16 v3, 0x7d0

    if-eq p1, v3, :cond_d

    const/16 v3, 0x3e8

    if-eq p1, v3, :cond_3

    const/16 v3, 0x3e9

    if-eq p1, v3, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "activity. FINGERPRINT_RENAME_REQUEST"

    .line 1134
    invoke-static {v1, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_19

    .line 1136
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getReasonIsCancelSession(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1137
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isWinnerProduct()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    if-eqz p1, :cond_1

    .line 1138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->sec_fingerprint_doesnt_support_multi_window_text:I

    .line 1139
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1138
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1140
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1142
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto/16 :goto_2

    :pswitch_1
    const-string p0, "Biometrics disclaimer finished!"

    .line 1151
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_2
    const-string p1, "activity. FINGERPRINT_MULTI_SELECT"

    .line 1121
    invoke-static {v1, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_19

    .line 1123
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getReasonIsCancelSession(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1124
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isWinnerProduct()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    if-eqz p1, :cond_2

    .line 1125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->sec_fingerprint_doesnt_support_multi_window_text:I

    .line 1126
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1125
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1127
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1129
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto/16 :goto_2

    :cond_3
    if-eqz p3, :cond_4

    const-string p1, "hw_auth_token"

    .line 1017
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    const-string p1, "fingerprint_settings_destroy"

    .line 1018
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "onActivityResult: Finish Fingerprint Settings"

    .line 1021
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    sput-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    .line 1023
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    return-void

    .line 1027
    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    if-eqz p1, :cond_5

    const-string p1, "reset runRegister"

    .line 1028
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    :cond_5
    if-eq p2, v4, :cond_8

    if-ne p2, v5, :cond_6

    goto :goto_0

    :cond_6
    if-nez p2, :cond_7

    if-eqz p3, :cond_19

    const-string p1, "enrollResult"

    .line 1074
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v5, :cond_19

    .line 1077
    sput-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    .line 1078
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto/16 :goto_2

    .line 1082
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_19

    :try_start_0
    const-string p1, "SAMSUNGACCOUNT : there is no case"

    .line 1084
    invoke-static {v1, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 1086
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 1087
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    .line 1089
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_8
    :goto_0
    const/4 p1, 0x0

    if-eqz p3, :cond_9

    :try_start_1
    const-string p1, "previousStage"

    .line 1035
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1036
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string p2, "fingerprint_settings_set_screen_lock"

    .line 1039
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1040
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p3, v0, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintUnlockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_a
    const-string p2, "support_web_signin"

    .line 1043
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "previos stage is WebSingin"

    .line 1044
    invoke-static {v1, p2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    :cond_b
    const-string p2, "support_samsung_account"

    .line 1048
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1049
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    const-string p2, "Is_From_SA_Verify"

    const-string p3, "s5d189ajvs"

    const-string v0, "client_id"

    if-eqz p1, :cond_c

    :try_start_2
    const-string p1, "SamsungAccountSignedIn is TRUE."

    .line 1050
    invoke-static {v1, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    new-instance p1, Landroid/content/Intent;

    const-string v3, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "client_secret"

    const-string v0, "E8781246E4A0F6E9E213178CC003DE6A"

    .line 1054
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1056
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto/16 :goto_2

    :cond_c
    const-string p1, "SamsungAccountSignedIn is FALSE."

    .line 1058
    invoke-static {v1, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "mypackage"

    .line 1061
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "OSP_VER"

    const-string v3, "OSP_02"

    .line 1062
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "MODE"

    const-string v0, "ADD_ACCOUNT"

    .line 1064
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1066
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    const-string p0, "data is null!!"

    .line 1070
    invoke-static {v1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    const-string p0, "FMM Dialog finished!"

    .line 1147
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1097
    :cond_e
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLaunchedConfirm:Z

    if-ne p2, v4, :cond_f

    if-eqz p3, :cond_f

    const-string p1, "onActivityResult : CONFIRM_REQUEST"

    .line 1099
    invoke-static {v1, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iput-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockConfirmed:Z

    .line 1101
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;Landroid/content/Intent;)V

    invoke-virtual {p1, p2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    .line 1114
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    goto/16 :goto_2

    .line 1116
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_2

    :cond_10
    if-eq p2, v4, :cond_13

    if-ne p2, v5, :cond_11

    goto :goto_1

    .line 1002
    :cond_11
    :try_start_3
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 1003
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 1004
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1005
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SAMSUNGACCOUNT_REQUEST RESULT_NOK setChecked : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v5, :cond_12

    move v0, v5

    :cond_12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1005
    invoke-static {v1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception p0

    .line 1008
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 992
    :cond_13
    :goto_1
    :try_start_4
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 993
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 994
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 995
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SAMSUNGACCOUNT_REQUEST RESULT_OK setChecked : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v5, :cond_14

    move v0, v5

    :cond_14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 995
    invoke-static {v1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception p0

    .line 998
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_15
    if-ne p2, v4, :cond_17

    .line 968
    :try_start_5
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 969
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 970
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 971
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SAMSUNGACCOUNT_EXISTING_REQUEST RESULT_OK setChecked : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v5, :cond_16

    move v0, v5

    :cond_16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 971
    invoke-static {v1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception p0

    .line 974
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 978
    :cond_17
    :try_start_6
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 979
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 980
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 981
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SAMSUNGACCOUNT_EXISTING_REQUEST RESULT_NOK setChecked : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v5, :cond_18

    move v0, v5

    :cond_18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 981
    invoke-static {v1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    :catch_5
    move-exception p0

    .line 984
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ef
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1182
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p0, "FpstFingerprintSettings"

    const-string p1, "==onConfigurationChanged"

    .line 1183
    invoke-static {p0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 365
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "==onCreate()"

    .line 366
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->bio_fingerprint_sanner_title:I

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "challenge"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v4, "tokenFromLock"

    .line 375
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "identifyFingerprint"

    .line 376
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    const-string v5, "fingerprint_from_template_change_noti"

    .line 377
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsFromTemplateChangeNoti:Z

    const-string v5, "fingerprint_registered_from_fingerprint"

    .line 378
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRegisteredFromEntry:Z

    const-string v5, "isAfw"

    .line 379
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    const-string v5, "is_knox"

    .line 381
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    const-string v5, "android.intent.extra.USER_ID"

    .line 383
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    const-string v5, "relative_link"

    .line 384
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRelativeLink:Z

    const-string v5, "need_fmm_popup"

    .line 385
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mNeedFmmPopup:Z

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsAfw : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsKnox : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKnox:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsFromTemplateChangeNoti : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsFromTemplateChangeNoti:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsRegisteredFromEntry : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRegisteredFromEntry:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUserId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsRelativeLink : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRelativeLink:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNeedFmmPopup : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mNeedFmmPopup:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    .line 395
    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    .line 396
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    goto :goto_0

    :cond_1
    const-string v1, "args is null"

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    if-eqz p1, :cond_3

    const-string v0, "hw_auth_token"

    .line 405
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    .line 406
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    const-string v0, "is_change_configuration"

    .line 407
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 410
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 p1, 0x1

    .line 412
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 415
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 417
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    .line 419
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRegisteredFromEntry:Z

    if-nez v0, :cond_5

    .line 420
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isFPTemplateChangeForKnox(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, -0x1

    .line 421
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->semHasNewMatcher(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 422
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 423
    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 424
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->showTemplateChangeDialog()V

    goto :goto_1

    .line 425
    :cond_4
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x2

    .line 426
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->semHasNewMatcher(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 427
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->showTemplateChangeDialog()V

    .line 431
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLaunchedConfirm:Z

    if-nez v0, :cond_6

    if-nez v3, :cond_6

    .line 432
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->launchConfirmLock()V

    goto :goto_2

    .line 434
    :cond_6
    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockConfirmed:Z

    :goto_2
    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    const/4 v0, 0x1

    .line 440
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 441
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 5

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "==onDestroy()"

    .line 1165
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "reset runRegister"

    .line 1168
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsRunRegister:Z

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    iget-wide v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    invoke-virtual {v0, v1, v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->revokeChallenge(IJ)V

    .line 1176
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintSettingsCreateValue(Landroid/content/Context;IZ)V

    .line 1177
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 700
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 701
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    .line 702
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMultiWindowModeChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FpstFingerprintSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 706
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 707
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_biometrics_common_not_use_multi_window_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 706
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 708
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    .line 709
    sput-boolean p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    .line 710
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2016

    const/16 v2, 0x2017

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    .line 1192
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 3

    .line 684
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "==onPause()"

    .line 685
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 688
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_doesnt_support_multi_window_text:I

    .line 689
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 688
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 693
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    .line 799
    instance-of v0, p1, Landroidx/preference/SecDropDownPreference;

    const-string v1, "==onPreferenceChange : "

    const-string v2, "FpstFingerprintSettings"

    if-eqz v0, :cond_0

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 802
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 807
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "onPreferenceTreeClick : Multiwindow mode!! finish the activity"

    .line 808
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string v1, "fingerprint_enable_keyguard_toggle"

    .line 812
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    goto/16 :goto_4

    .line 814
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mWebSignIn:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 815
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x2016

    const/16 v7, 0x2021

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 816
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v4, :cond_3

    .line 817
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startDisclaimerFromWebSignin()Z

    move-result p0

    return p0

    .line 819
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    goto/16 :goto_4

    .line 821
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 822
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x2016

    const/16 v7, 0x201e

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 823
    iput-boolean v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    .line 824
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v4, :cond_5

    .line 825
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result p0

    return p0

    .line 828
    :cond_5
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 829
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 830
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccount:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p0, "SAMSUNGACCOUNT value is false "

    .line 831
    invoke-static {v2, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    .line 833
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 836
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenLock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 837
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    const-string p1, "passwordQuality : passwordQuality"

    .line 838
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x2016

    const/16 v7, 0x2020

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 841
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_c

    .line 842
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 843
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_7

    .line 844
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 847
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    if-eqz p1, :cond_8

    .line 848
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setEnableScreenOffIcon(Z)V

    .line 851
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_9

    .line 852
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 855
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFastRecognition:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_a

    .line 856
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 859
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_b

    .line 860
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 865
    :cond_b
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 866
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p1, p0, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->setTwoFactorValue(Landroid/content/Context;II)V

    goto/16 :goto_4

    .line 869
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    const-string p2, "fingerprint_settings_set_screen_lock"

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    .line 870
    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 871
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p1, v0, v1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;)V

    .line 874
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isDisabledFingerprintScreenOff(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 875
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 878
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    if-eqz p1, :cond_f

    .line 879
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsSupportFpAlwaysOn:Z

    if-eqz p1, :cond_e

    .line 880
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnBooleanValue(Landroid/content/Context;I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setEnableScreenOffIcon(Z)V

    goto :goto_1

    .line 882
    :cond_e
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setEnableScreenOffIcon(Z)V

    .line 886
    :cond_f
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_12

    .line 887
    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsSupportFpAlwaysOn:Z

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    if-eqz p2, :cond_11

    .line 888
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p2, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnBooleanValue(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {p2}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_10

    move v3, v4

    :cond_10
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 890
    :cond_11
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 894
    :cond_12
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFastRecognition:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_13

    .line 895
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 898
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_1d

    .line 899
    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_14
    const-string p1, "Launch the FingerprintLockSettings"

    .line 902
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    return v3

    .line 906
    :cond_15
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mAlwaysOn:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 907
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintAlwaysOnValue(Landroid/content/Context;ZI)V

    .line 908
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x2016

    const/16 v7, 0x2047

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 909
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    if-eqz p1, :cond_16

    .line 910
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setEnableScreenOffIcon(Z)V

    goto/16 :goto_4

    .line 911
    :cond_16
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_1d

    .line 912
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 914
    :cond_17
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 915
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 916
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mScreenOffIconAod :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    sget-object p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconOptionSummaryString:[I

    array-length v0, p2

    sub-int/2addr v0, v4

    sub-int/2addr v0, p1

    .line 918
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 919
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIconAod:Landroidx/preference/SecDropDownPreference;

    aget p2, p2, p1

    invoke-virtual {v1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 920
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p2, p1, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintScreenOffIconAodValue(Landroid/content/Context;II)V

    .line 921
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x2016

    const/16 v7, 0x2054

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    goto/16 :goto_4

    .line 922
    :cond_18
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mScreenOffIcon:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 923
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintScreenOffIconValue(Landroid/content/Context;ZI)V

    .line 924
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x2016

    const/16 v7, 0x2049

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    goto :goto_4

    .line 925
    :cond_19
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFastRecognition:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 926
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintFastRecognition(Landroid/content/Context;ZI)V

    .line 927
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x2016

    const/16 v7, 0x204a

    .line 928
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_3

    :cond_1a
    const/4 v3, 0x3

    :goto_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    .line 927
    invoke-static/range {v5 .. v10}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    goto :goto_4

    .line 930
    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerEffect:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 931
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintEffectValue(Landroid/content/Context;ZI)V

    .line 932
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x2016

    const/16 v7, 0x2058

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    goto :goto_4

    .line 934
    :cond_1c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown key:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_4
    return v4
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==onPreferenceTreeClick : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstFingerprintSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "onPreferenceTreeClick : Multiwindow mode!! finish the activity"

    .line 729
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 733
    :cond_0
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    const/4 v3, 0x1

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSwitchPreference;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroidx/preference/SecDropDownPreference;

    if-nez v0, :cond_2

    .line 737
    sget-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    if-eqz v0, :cond_1

    const-string p0, "onPreferenceTreeClick : Other preferece already clicked"

    .line 738
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 741
    :cond_1
    sput-boolean v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    goto :goto_0

    :cond_2
    const-string v0, "onPreferenceTreeClick : SwitchPreference tree clicked!"

    .line 744
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 750
    instance-of v4, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    const/16 v5, 0x2016

    if-eqz v4, :cond_3

    .line 751
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x201a

    invoke-static {v0, v5, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    .line 752
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x201b

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;I)V

    .line 754
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 755
    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    .line 756
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startRenameFingerprint(I)V

    .line 757
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 760
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "key_fingerprint_add"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_1
    const-string v6, "check_added_fingerprints"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_2
    const-string v6, "key_fingerprint_about_fingerprints"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_1

    :sswitch_3
    const-string v6, "support_samsung_account"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    move v4, v2

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 792
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 762
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->stopFingerprintAuth()V

    const-string p1, "FingerprintSettings_register"

    .line 763
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x201c

    invoke-static {p0, v5, p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    goto :goto_2

    :pswitch_1
    const-string p1, "FingerprintSettingsUtils.KEY_CHECK_ADDED_FINGERPRINTS clicked"

    .line 776
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x2048

    invoke-static {p1, v5, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    .line 778
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isDisableScreenForDisplayFingerprint(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 779
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->registerAuthenticate()V

    goto :goto_2

    :cond_8
    const-string p0, "onPreferenceTreeClick : reset mIsPreferenceClicked value"

    .line 781
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    sput-boolean v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    goto :goto_2

    .line 787
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x2050

    invoke-static {p1, v5, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    .line 788
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->showFingerprintDisclaimer()V

    goto :goto_2

    .line 769
    :pswitch_3
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    if-nez p1, :cond_9

    .line 770
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result p0

    return p0

    .line 772
    :cond_9
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    :goto_2
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77be5188 -> :sswitch_3
        -0x2b0a764 -> :sswitch_2
        0xa985185 -> :sswitch_1
        0x7b32d4e6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 7

    .line 551
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "==onResume()"

    .line 552
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLaunchedConfirm:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 555
    sput-boolean v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    .line 558
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 559
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "DesktopMode or MultiWindowMode."

    .line 560
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_2

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    return-void

    .line 569
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->updatePreferences()V

    .line 571
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    .line 572
    invoke-virtual {v1, v4}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Enroll session close."

    .line 573
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    .line 575
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    iget-wide v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/hardware/fingerprint/FingerprintManager;->revokeChallenge(IJ)V

    .line 578
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->semIsEnrollSession()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Session closed! Token must be null!"

    .line 579
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    .line 583
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mNeedFmmPopup:Z

    if-eqz v0, :cond_6

    .line 584
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mNeedFmmPopup:Z

    .line 585
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startFmmBackupPasswordPopup()V

    .line 588
    :cond_6
    sput-boolean v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    .line 590
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 717
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 718
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 719
    iget-wide v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    const-string v2, "challenge"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 720
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "is_change_configuration"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public startDisclaimerFromSamsungAccount()Z
    .locals 8

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "startDisclaimerFromSamsungAccount"

    .line 1753
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v1, :cond_1

    .line 1756
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1757
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    goto :goto_0

    :cond_0
    const-string v0, "support_samsung_account"

    .line 1759
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0

    .line 1762
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "Is_From_SA_Verify"

    const-string v3, "s5d189ajvs"

    const-string v4, "client_id"

    const-string v5, "com.osp.app.signin"

    const-string v6, "SamsungAccountSignedIn is TRUE."

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    .line 1763
    invoke-static {v0, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1767
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "client_secret"

    const-string v3, "E8781246E4A0F6E9E213178CC003DE6A"

    .line 1768
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1769
    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x65

    .line 1770
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1772
    :cond_2
    invoke-static {v0, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1776
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "mypackage"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OSP_VER"

    const-string v5, "OSP_02"

    .line 1777
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1778
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MODE"

    const-string v3, "ADD_ACCOUNT"

    .line 1779
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1780
    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x66

    .line 1781
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    :goto_1
    return v7
.end method

.method public startDisclaimerFromWebSignin()Z
    .locals 2

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "startDisclaimerFromWebSignin"

    .line 1787
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v0, :cond_1

    .line 1790
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1791
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    goto :goto_0

    :cond_0
    const-string v0, "support_web_signin"

    .line 1793
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v0, 0x1

    .line 1797
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    return v0
.end method
