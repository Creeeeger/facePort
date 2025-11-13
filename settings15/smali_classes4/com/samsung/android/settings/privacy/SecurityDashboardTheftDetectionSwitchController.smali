.class public Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecurityDashboardTheftDetectionSwitchController"


# instance fields
.field final MANDATORY_BIOMETRICS:I

.field private mConsentDialogLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mIsFirstTimeOnBoarded:Z

.field protected mIsScreenLockSet:Z

.field private final mIsTheftDetectionLockSupported:Z

.field private mPreference:Landroidx/preference/SecSwitchPreference;


# direct methods
.method public static synthetic $r8$lambda$1xjDIWEEKahE8-oeKLsIO9N2Ck0(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->lambda$authenticate$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3j3pi-XoyiBOCoZLnp6Wja-BVIM(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->handleConsentResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jW-tkfiMrdqfbFRkdZJHOhUrjK4(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->lambda$displayPreference$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;)Landroidx/preference/SecSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mPreference:Landroidx/preference/SecSwitchPreference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mauthenticate(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->authenticate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mauthenticate3p(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->authenticate3p()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/high16 p2, 0x10000

    iput p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->MANDATORY_BIOMETRICS:I

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isOfflineLockSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mIsTheftDetectionLockSupported:Z

    return-void
.end method

.method private authenticate()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mandatory_biometrics"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isInTrustedPlace(Landroid/content/Context;)Z

    move-result v0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const v3, 0x7f14211b

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f141db3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1408bf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    new-instance v4, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    const v1, 0x1000f

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    const v1, 0x800f

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;I)V

    new-instance p0, Landroid/os/CancellationSignal;

    invoke-direct {p0}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v3, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, p0, v3, v1}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method

.method private authenticate3p()V
    .locals 4

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14211b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141db3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->get3pDescription()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;I)V

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v3, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method

.method private get3pDescription()I
    .locals 1

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_0

    const p0, 0x7f1411e1

    return p0

    :cond_0
    const p0, 0x7f1411e3

    return p0

    :cond_1
    const p0, 0x7f1411e2

    return p0
.end method

.method private handleConsentResult(Landroidx/activity/result/ActivityResult;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleDialogResult : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    const-string v2, "SecurityDashboardTheftDetectionSwitchController"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mIsScreenLockSet:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->launchScreenLockDialog(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$authenticate$1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mPreference:Landroidx/preference/SecSwitchPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private lambda$displayPreference$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "theft_detection_lock_setting"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    move v0, p2

    :cond_0
    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x1

    :goto_0
    const p1, 0xd355

    const v3, 0xd3b9

    invoke-static {p1, v3, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->authenticate()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mConsentDialogLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v0, "THEFT_DETECTION_LOCK"

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftProtectionConsentUtils;->launchDialogIntent(Landroid/content/Context;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;)V

    :goto_1
    return p2
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mPreference:Landroidx/preference/SecSwitchPreference;

    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mIsTheftDetectionLockSupported:Z

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theft_detection_lock_setting"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-string v3, "key_theft_detection_lock_first_time_on_boarding_status"

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mIsFirstTimeOnBoarded:Z

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->updateTheftProtectionSharedPreference(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->FMM_SUPPORT_URI:Landroid/net/Uri;

    const-string v4, "key_theft_protection_preference"

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mIsFirstTimeOnBoarded:Z

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isScreenLockEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mIsScreenLockSet:Z

    iget-boolean p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mIsFirstTimeOnBoarded:Z

    if-eqz p0, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    if-eqz p0, :cond_5

    if-eqz v1, :cond_5

    :cond_4
    return v2

    :cond_5
    const/4 p0, 0x2

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public init(Landroidx/fragment/app/Fragment;)V
    .locals 2

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;)V

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mConsentDialogLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public isChecked()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "theft_detection_lock_setting"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->getAvailabilityStatus()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
