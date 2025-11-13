.class public Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;
.super Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;
.source "WorkProfileConfirmLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;,
        Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$LastTryDialog;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DETAIL_TEXTS:[[I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAacTextView:Landroid/widget/TextView;

.field private mAacTextVisible:Z

.field private mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

.field private final mClientExecutor:Ljava/util/concurrent/Executor;

.field private mContext:Landroid/content/Context;

.field private mDeviceHasSoftKeys:Z

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDeviceScreenHeight:I

.field private mDisableStatusBarCount:I

.field private mEffectiveUserId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsInMultiWindowMode:Z

.field private mIsInternal:Z

.field private mIsUCMView:Z

.field private final mLockEventReceiver:Landroid/content/BroadcastReceiver;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMultiFactorImage:Landroid/widget/ImageView;

.field private mPasswordViewLayoutListener:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mReturnCredentials:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mVisibleLayoutBottomMagin:I

.field private final quality:I

.field private ucmPluginText:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$0A34WGQVzfTtwsiGlEE_X_BhT6A(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->lambda$showBiometricPrompt$0(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientExecutor(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mClientExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevicePolicyManager(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceScreenHeight(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mDeviceScreenHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInMultiWindowMode(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mIsInMultiWindowMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReturnCredentials(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mReturnCredentials:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVisibleLayoutBottomMagin(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mVisibleLayoutBottomMagin:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmVisibleLayoutBottomMagin(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mVisibleLayoutBottomMagin:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideKnoxLogo(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->hideKnoxLogo(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misInLandscapeMode(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isInLandscapeMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misWorkProfilePinView(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isWorkProfilePinView()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 107
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->DEBUG:Z

    const/4 v0, 0x3

    new-array v1, v0, [[I

    new-array v4, v0, [I

    .line 144
    sget v5, Lcom/android/settings/R$string;->sec_draw_pattern_WC:I

    aput v5, v4, v2

    sget v5, Lcom/android/settings/R$string;->sec_after_restarting_phone_pattern_WC:I

    aput v5, v4, v3

    sget v5, Lcom/android/settings/R$string;->sec_knox_for_your_security_pattern:I

    const/4 v6, 0x2

    aput v5, v4, v6

    aput-object v4, v1, v2

    new-array v4, v0, [I

    sget v5, Lcom/android/settings/R$string;->sec_enter_pin_WC:I

    aput v5, v4, v2

    sget v5, Lcom/android/settings/R$string;->sec_after_restarting_phone_pin_WC:I

    aput v5, v4, v3

    sget v5, Lcom/android/settings/R$string;->sec_knox_for_your_security_pin:I

    aput v5, v4, v6

    aput-object v4, v1, v3

    new-array v0, v0, [I

    sget v4, Lcom/android/settings/R$string;->sec_enter_password_WC:I

    aput v4, v0, v2

    sget v2, Lcom/android/settings/R$string;->sec_after_restarting_phone_password_WC:I

    aput v2, v0, v3

    sget v2, Lcom/android/settings/R$string;->sec_knox_for_your_security_password:I

    aput v2, v0, v6

    aput-object v0, v1, v6

    sput-object v1, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->DETAIL_TEXTS:[[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IIZZLcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;)V
    .locals 4

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;-><init>()V

    const-string v0, "KKG::WorkProfileConfirmLockHelper"

    .line 106
    iput-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 119
    iput-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v1, 0x0

    .line 125
    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mDeviceHasSoftKeys:Z

    .line 126
    iput v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mVisibleLayoutBottomMagin:I

    .line 127
    iput v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mDisableStatusBarCount:I

    .line 128
    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mIsInMultiWindowMode:Z

    .line 130
    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mIsUCMView:Z

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mAacTextVisible:Z

    .line 155
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mHandler:Landroid/os/Handler;

    .line 156
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mClientExecutor:Ljava/util/concurrent/Executor;

    .line 829
    new-instance v2, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$1;-><init>(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)V

    iput-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mLockEventReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    .line 162
    iput p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    .line 163
    iput p3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    .line 164
    iput-boolean p4, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mReturnCredentials:Z

    .line 165
    iput-boolean p5, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mIsInternal:Z

    .line 166
    iput-object p6, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    const-string p2, "device_policy"

    .line 168
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 170
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 171
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserManager:Landroid/os/UserManager;

    .line 172
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string p2, "persona"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 173
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 174
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string p2, "statusbar"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatusBarManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 176
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mDeviceScreenHeight:I

    .line 177
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->quality:I

    .line 178
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const-string p3, "config_showNavigationBar"

    const-string p4, "bool"

    const-string p5, "android"

    invoke-virtual {p2, p3, p4, p5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mDeviceHasSoftKeys:Z

    const/high16 p1, 0x70000

    if-ne v3, p1, :cond_0

    const/4 v1, 0x1

    .line 179
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mIsUCMView:Z

    .line 181
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance p4, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-direct {p4, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 p5, 0x0

    const/4 p6, 0x0

    move-object p2, v2

    invoke-virtual/range {p1 .. p6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Init. KeyguardStoredPasswordQuality = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_1

    const-string p2, "none"

    goto :goto_0

    :cond_1
    const/high16 p2, 0x10000

    if-gt v3, p2, :cond_2

    const-string p2, "pattern"

    goto :goto_0

    :cond_2
    const/high16 p2, 0x30000

    if-gt v3, p2, :cond_3

    const-string p2, "pin"

    goto :goto_0

    :cond_3
    const/high16 p2, 0x60000

    if-gt v3, p2, :cond_4

    const-string p2, "Password"

    goto :goto_0

    :cond_4
    const-string p2, "SmartCard"

    .line 188
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", applyWorkChallengeBackgroundCase = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->applyWorkChallengeBackgroundCase()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addListenersForPasswordView(Landroid/view/View;)V
    .locals 1

    .line 1036
    new-instance v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;-><init>(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mPasswordViewLayoutListener:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;

    .line 1037
    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->startListener()V

    return-void
.end method

.method private addWindowFlagsForWorkProfile(Landroid/view/Window;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 865
    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 866
    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 867
    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 868
    invoke-virtual {p1, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 869
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x300

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 873
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 874
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 875
    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 877
    sget-boolean p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "KKG::WorkProfileConfirmLockHelper"

    const-string v0, "Debug mode enabled"

    .line 879
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x2000

    .line 880
    invoke-virtual {p1, p0}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    return-void
.end method

.method private applyWorkChallengeBackgroundCase()Z
    .locals 3

    .line 892
    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mReturnCredentials:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    .line 893
    invoke-static {v0, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdChangeEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    .line 894
    invoke-static {v0, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->needSetupCredential(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mReturnCredentials:Z

    invoke-static {v0, v2, p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->needUCMLockSetWithoutWC(Landroid/content/Context;IZ)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private hideKnoxLogo(Landroid/view/View;)V
    .locals 1

    .line 413
    sget p0, Lcom/android/settings/R$id;->knoxLogoLayout:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const-string p1, "KKG::WorkProfileConfirmLockHelper"

    if-eqz p0, :cond_0

    const-string v0, "Hiding Knox logo."

    .line 415
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 416
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p0, "Unable to hide knox logo."

    .line 418
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isContainerLockedByAAC()Z
    .locals 1

    .line 284
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getCmfaManager()Lcom/samsung/android/knox/cmfa/CmfaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getValidActions()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 287
    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthActionType;->CONTAINER_LOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isDetailInvisible()Z
    .locals 5

    .line 293
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isContainerLockedByAAC()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 295
    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mAacTextVisible:Z

    .line 297
    :cond_0
    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->quality:I

    const/high16 v3, 0x10000

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/high16 v3, 0x20000

    if-eq v2, v3, :cond_1

    const/high16 v3, 0x30000

    if-eq v2, v3, :cond_1

    const/high16 v3, 0x40000

    if-eq v2, v3, :cond_1

    const/high16 v3, 0x50000

    if-eq v2, v3, :cond_1

    const/high16 v3, 0x60000

    if-eq v2, v3, :cond_1

    const/high16 v3, 0x70000

    if-eq v2, v3, :cond_1

    const/high16 v3, 0x80000

    if-eq v2, v3, :cond_1

    return v4

    :cond_1
    if-eqz v0, :cond_2

    .line 306
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isInLandscapeMode()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    return v1
.end method

.method private isInLandscapeMode()Z
    .locals 2

    .line 850
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private isMultifactorEnabled()Z
    .locals 3

    .line 858
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    const-string v1, "knox_finger_print_plus"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method private isStrongAuthRequired()Z
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserManager:Landroid/os/UserManager;

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    .line 925
    invoke-virtual {v0, p0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

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

.method private isWorkProfilePinView()Z
    .locals 2

    .line 1106
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->applyWorkChallengeBackgroundCase()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1110
    :cond_0
    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->quality:I

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$showBiometricPrompt$0(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1343
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->common_cancel:I

    .line 1345
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0xd

    .line 1343
    invoke-virtual {p1, p2, p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private sendAdminLockEvent(I)V
    .locals 1

    .line 886
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android.intent.extra.user_handle"

    .line 887
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "knox.container.proxy.POLICY_ADMIN_LOCK"

    .line 888
    invoke-static {p1, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private setKnoxLogo(Landroid/view/View;)V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 260
    sget v0, Lcom/android/settings/R$id;->knoxTitleText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->work_profile_lock_screen_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 262
    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->work_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    sget v0, Lcom/android/settings/R$id;->knoxTitleSubText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 267
    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    sget v0, Lcom/android/settings/R$id;->knoxLogo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 273
    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->knox_basic:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "#fffafafa"

    .line 277
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 279
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->updateKnoxLogo(Landroid/view/View;)V

    return-void
.end method

.method private setUCMMISCInfo()V
    .locals 2

    .line 1026
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->ucmPluginText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mIsUCMView:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1029
    iget v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v0}, Lcom/samsung/android/settings/ucm/UCMUtils;->getUCMKeyguardVendorName(I)Ljava/lang/String;

    move-result-object v0

    .line 1030
    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->ucmPluginText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->ucmPluginText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showBiometricPrompt(Landroid/app/Activity;)V
    .locals 5

    .line 1313
    new-instance v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;-><init>(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;Landroid/app/Activity;)V

    .line 1343
    new-instance p1, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    .line 1347
    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 1348
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setUseDefaultTitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 1349
    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDisallowBiometricsIfPolicyExists(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 1350
    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setReceiveSystemEvents(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    const/16 v2, 0xf

    .line 1354
    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    const/4 v2, 0x0

    .line 1355
    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 1356
    iget-object v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->common_cancel:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mClientExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v3, v4, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 1360
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    invoke-static {p1, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintEnabled(Landroid/content/Context;I)Z

    move-result p1

    .line 1363
    iget-object v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFaceEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 p1, p1, 0x2

    .line 1366
    :cond_0
    invoke-virtual {v1, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetBiometricType(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    if-eqz p1, :cond_1

    const/16 p1, 0x24

    .line 1370
    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    :goto_0
    or-int/lit8 p1, p1, 0x40

    or-int/lit16 p1, p1, 0x80

    .line 1375
    invoke-virtual {v1, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetPrivilegedFlag(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 1377
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object p1

    .line 1378
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mClientExecutor:Ljava/util/concurrent/Executor;

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateUser(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    return-void
.end method

.method private updateKnoxLogo(Landroid/view/View;)V
    .locals 5

    .line 430
    sget v0, Lcom/android/settings/R$id;->knoxLogoLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 432
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 433
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isInLandscapeMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    iget v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mDeviceScreenHeight:I

    int-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 437
    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mDeviceScreenHeight:I

    int-to-double v1, v1

    const-wide v3, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 439
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isInLandscapeMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 440
    iget v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mDeviceScreenHeight:I

    int-to-double v1, v1

    const-wide v3, 0x3fb70a3d70a3d70aL    # 0.09

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 444
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 445
    sget v0, Lcom/android/settings/R$id;->knoxTitleText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 447
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$dimen;->keyguard_knoxTitletext_text_height_dex:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    return-void
.end method

.method private updatePasswordViewLayout(Landroid/view/View;)V
    .locals 4

    .line 996
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->setKnoxLogo(Landroid/view/View;)V

    .line 998
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isInLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-nez v0, :cond_0

    .line 999
    sget v0, Lcom/android/settings/R$id;->topLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1000
    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1002
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->setUCMMISCInfo()V

    .line 1003
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->addListenersForPasswordView(Landroid/view/View;)V

    .line 1004
    sget v0, Lcom/android/settings/R$id;->password_show_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1005
    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1006
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1007
    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->show_password_width_height_dex:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1008
    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1009
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1012
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isInLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-nez v0, :cond_3

    .line 1013
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFoldableProduct()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v0, :cond_2

    .line 1014
    sget v0, Lcom/android/settings/R$id;->parent_password_entry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 1015
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1016
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenWidth(Landroid/content/Context;)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int p0, v0

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 1017
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1018
    sget v0, Lcom/android/settings/R$id;->parent_password_entry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 1019
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1020
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenWidth(Landroid/content/Context;)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v2

    double-to-int p0, v0

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_3
    :goto_0
    return-void
.end method

.method private updatePatternViewLayout(Landroid/view/View;)V
    .locals 1

    .line 247
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->setKnoxLogo(Landroid/view/View;)V

    .line 249
    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isInLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    sget v0, Lcom/android/settings/R$id;->topLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 252
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 253
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v0, p0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_0
    return-void
.end method


# virtual methods
.method public checkPasswordPolicy(Landroid/app/Activity;)V
    .locals 8

    .line 645
    const-class v0, Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;

    iget v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARCustomCrypto(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "KKG::WorkProfileConfirmLockHelper"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "DualDAR safe mode with custom crypto case"

    .line 647
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    iget-object v4, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 649
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->keyguard_can_not_use_work_apps_in_safe_mode:I

    .line 650
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 649
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 650
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 651
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    invoke-static {v1, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdChangeEnforced(Landroid/content/Context;I)Z

    move-result v1

    const-string v5, "isEnforcedPwdChanged"

    const-string v6, "android.intent.extra.USER_ID"

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mReturnCredentials:Z

    if-nez v1, :cond_1

    const-string v1, "Enforce password change case"

    .line 653
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 655
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 656
    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    invoke-virtual {v1, v6, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 657
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 658
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 659
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    invoke-static {v1, v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->needSetupCredential(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mReturnCredentials:Z

    if-nez v1, :cond_2

    const-string v1, "Legacy reset password case"

    .line 661
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 663
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 664
    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    invoke-virtual {v1, v6, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "confirm_credentials"

    .line 665
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 666
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 667
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 668
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 669
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isOneLockOngoing(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mReturnCredentials:Z

    if-nez p0, :cond_3

    const-string p0, "one lock uncompliant case"

    .line 670
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 672
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 673
    invoke-virtual {p0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "isOneLockOngoing"

    .line 674
    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 675
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 676
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public confirmBiometricIfNeeded(ZLandroid/app/Activity;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 349
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    invoke-interface {p1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->disableConfirmCredentialCallback()V

    .line 350
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->showBiometricPrompt(Landroid/app/Activity;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultDetails()I
    .locals 6

    .line 731
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isDetailInvisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    sget p0, Lcom/android/settings/R$string;->sec_pattern_advanced_access_none:I

    return p0

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaUserHasBeenShutdownBefore(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    .line 738
    invoke-static {v0, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isTimeoutStrongAuth(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    .line 739
    invoke-static {v0, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFirstStrongAuthForWork(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    .line 740
    invoke-static {v0, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isBiometricLockOutStrongAuth(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 741
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintLockSetForUser(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    .line 742
    invoke-static {v3, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFaceLockSetForUser(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v1

    :goto_3
    const/4 v4, 0x2

    if-nez v3, :cond_5

    .line 744
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isStrongAuthRequired()Z

    move-result v3

    if-nez v3, :cond_9

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    .line 745
    invoke-static {v3, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdChangeEnforced(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isMultifactorEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    .line 748
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    invoke-static {v3, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->strongAuthWithDeviceReboot(Landroid/content/Context;I)Z

    move-result v3

    .line 749
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isStrongAuthRequired()Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v0, :cond_8

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    :goto_4
    move v0, v4

    goto :goto_6

    :cond_9
    :goto_5
    move v0, v2

    .line 752
    :goto_6
    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->quality:I

    const/high16 v3, 0x10000

    if-eq p0, v3, :cond_c

    const/high16 v3, 0x20000

    if-eq p0, v3, :cond_b

    const/high16 v3, 0x30000

    if-eq p0, v3, :cond_b

    const/high16 v3, 0x40000

    if-eq p0, v3, :cond_a

    const/high16 v3, 0x50000

    if-eq p0, v3, :cond_a

    const/high16 v3, 0x60000

    if-eq p0, v3, :cond_a

    const/high16 v3, 0x70000

    if-eq p0, v3, :cond_b

    const/high16 v1, 0x80000

    if-eq p0, v1, :cond_a

    return v2

    .line 763
    :cond_a
    sget-object p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->DETAIL_TEXTS:[[I

    aget-object p0, p0, v4

    aget p0, p0, v0

    return p0

    .line 758
    :cond_b
    sget-object p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->DETAIL_TEXTS:[[I

    aget-object p0, p0, v1

    aget p0, p0, v0

    return p0

    .line 754
    :cond_c
    sget-object p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->DETAIL_TEXTS:[[I

    aget-object p0, p0, v2

    aget p0, p0, v0

    return p0
.end method

.method public getDefaultHeader(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1099
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1102
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_knox_confirm_password_title:I

    new-array v0, v0, [Ljava/lang/Object;

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {p1, p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p2

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_knox_confirm_pin_title:I

    new-array v0, v0, [Ljava/lang/Object;

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {p1, p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p2

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getErrorMessage(I)I
    .locals 2

    const/4 v0, 0x0

    .line 1069
    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mAacTextVisible:Z

    .line 1070
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mAacTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 1071
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1074
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->applyWorkChallengeBackgroundCase()Z

    return p1
.end method

.method public hideSoftInputIfNeeded(Landroid/widget/ImeAwareEditText;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1123
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public interceptAuthenticationSucceededIfNeeded(ZZ)Z
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 688
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isContainerLockedByAAC()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 689
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "CMFA_LOCKED_BY_FACTOR"

    const-string p2, ""

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public interceptOnResumeIfNeeded(Landroid/app/Activity;)Z
    .locals 2

    .line 716
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->lock_screen_doesnt_support_multi_window_text:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 718
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public interceptUpdateErrorMessageIfNeeded(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isMultifactorView()Z
    .locals 2

    .line 472
    iget v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 474
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isMultifactorEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mReturnCredentials:Z

    if-nez v0, :cond_0

    return v1

    .line 480
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isMultifactorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mReturnCredentials:Z

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v0, p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdChangeEnforced(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public needToUpdateErrorMessage(Landroid/widget/TextView;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/View;)V
    .locals 4

    .line 314
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->applyWorkChallengeBackgroundCase()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isContainerLockedByAAC()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mAacTextVisible:Z

    if-eqz v0, :cond_2

    .line 320
    sget v0, Lcom/android/settings/R$id;->aacText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mAacTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_pattern_advanced_access_control:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CMFA_LOCKED_BY_FACTOR"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "CMFA_TOUCH_DYNAMICS"

    .line 325
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->cmfa_factor_touchdynamics_workprofile_locked_notice:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mAacTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mAacTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    :cond_2
    sget v0, Lcom/android/settings/R$id;->password_entry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 337
    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 338
    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextOperationUser(Landroid/os/UserHandle;)V

    :cond_3
    const/4 p0, 0x2

    .line 340
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setImportantForAutofill(I)V

    .line 343
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mLockEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 631
    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 633
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mPasswordViewLayoutListener:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;

    if-eqz p0, :cond_1

    .line 634
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->stopListener()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSavedInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->onSavedInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 699
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isSoftKeyboardShown(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 702
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->refreshBiometricsListeningState()V

    goto :goto_0

    .line 704
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->stopListeningForBiometrics()V

    :goto_0
    return-void
.end method

.method public removeGlobalLayoutListenerIfRequired()V
    .locals 0

    .line 1129
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mPasswordViewLayoutListener:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;

    if-eqz p0, :cond_0

    .line 1130
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->stopListener()V

    :cond_0
    return-void
.end method

.method public reportFailedAttempt(ILandroidx/fragment/app/FragmentManager;Landroid/app/Activity;)Z
    .locals 11

    const-string v0, "KKG::WorkProfileConfirmLockHelper"

    const-string v1, "reportFailedAttempt"

    .line 527
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    .line 529
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe(I)I

    move-result v1

    .line 533
    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getPasswordPolicy(Landroid/content/Context;I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 535
    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v2

    goto :goto_1

    .line 540
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v2, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v2

    if-lez v2, :cond_1

    .line 542
    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    const v5, 0x186a0

    mul-int/2addr v2, v5

    goto :goto_0

    .line 544
    :cond_1
    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    :goto_0
    new-array v5, v4, [Ljava/lang/String;

    .line 546
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    .line 547
    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v7, "getMaximumFailedPasswordsForDisable"

    invoke-static {v2, v6, v7, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :goto_1
    if-lez v1, :cond_3

    if-lez v2, :cond_3

    .line 553
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    if-lez v2, :cond_5

    move v5, v2

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    if-lez v5, :cond_14

    if-gtz p1, :cond_6

    goto/16 :goto_5

    :cond_6
    sub-int v6, v5, p1

    const/16 v7, 0xa

    if-le v6, v7, :cond_7

    return v3

    .line 571
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    if-ne v6, v4, :cond_8

    .line 572
    iget-object v8, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->keyguard_password_attempt_count_pin_code:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 573
    :cond_8
    iget-object v8, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->keyguard_password_attempts_count_pin_code:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    new-array v9, v4, [Ljava/lang/Object;

    .line 574
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    .line 571
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->showErrorText(Ljava/lang/CharSequence;J)V

    const/4 v7, 0x5

    if-le v6, v7, :cond_9

    return v3

    .line 582
    :cond_9
    iget-object v7, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v7, v8}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 583
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Under than 5 attempts left : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " :  Wipe : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Disable : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const/4 v2, 0x3

    const/4 v8, 0x2

    if-ne v5, v1, :cond_d

    if-ne p1, v4, :cond_b

    if-ne v6, v4, :cond_a

    .line 590
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->incorrect_dialog_wipe_1:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v7, v0, v3

    aput-object v7, v0, v4

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 592
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->incorrect_dialog_wipe_2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v7, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    aput-object v7, v0, v8

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :cond_b
    if-ne v6, v4, :cond_c

    .line 595
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->incorrect_dialog_wipe_4:I

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    aput-object v7, v2, v4

    aput-object v7, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 597
    :cond_c
    iget-object v9, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/settings/R$string;->incorrect_dialog_wipe_3:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    aput-object v7, v0, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v8

    aput-object v7, v0, v2

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_d
    if-ne p1, v4, :cond_f

    if-ne v5, v4, :cond_e

    .line 603
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->incorrect_dialog_1:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v7, v0, v3

    aput-object v7, v0, v4

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 605
    :cond_e
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->incorrect_dialog_2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v7, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    aput-object v7, v0, v8

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_f
    if-ne v6, v4, :cond_10

    .line 607
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->incorrect_dialog_4:I

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    aput-object v7, v2, v4

    aput-object v7, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 609
    :cond_10
    iget-object v9, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/settings/R$string;->incorrect_dialog_3:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    aput-object v7, v0, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v8

    aput-object v7, v0, v2

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    if-ge v6, v4, :cond_12

    if-eq v5, v1, :cond_11

    .line 615
    iget p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->sendAdminLockEvent(I)V

    .line 619
    :cond_11
    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    return v4

    :cond_12
    const/4 p0, 0x0

    const p3, 0x104000a

    if-ge v6, v4, :cond_13

    move v3, v4

    .line 623
    :cond_13
    invoke-static {p2, p0, p1, p3, v3}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$LastTryDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;IZ)Z

    return v4

    :cond_14
    :goto_5
    return v3
.end method

.method public reportSuccessfulAttempt()V
    .locals 2

    const-string v0, "KKG::WorkProfileConfirmLockHelper"

    const-string v1, "reportSuccessfulAttempt"

    .line 710
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    return-void
.end method

.method public bridge synthetic resetState(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->resetState(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public setBiometricLockoutDeadline(I)V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricAttemptDeadline(II)J

    return-void
.end method

.method public bridge synthetic setCredentialCheckResultTrackerIfNeeded(Z)Z
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->setCredentialCheckResultTrackerIfNeeded(Z)Z

    move-result p0

    return p0
.end method

.method public setPasswordEntry(Landroid/widget/ImeAwareEditText;)V
    .locals 3

    .line 1135
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->applyWorkChallengeBackgroundCase()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x800013

    .line 1138
    invoke-virtual {p1, v0}, Landroid/widget/ImeAwareEditText;->setGravity(I)V

    .line 1139
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->knox_pwd_entry_padding_left_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/widget/ImeAwareEditText;->setPadding(IIII)V

    return-void
.end method

.method public setPatternColor(Lcom/android/internal/widget/LockPatternView;)V
    .locals 2

    .line 502
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->applyWorkChallengeBackgroundCase()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->work_profile_lock_screen_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    .line 506
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->status_bar_color:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const/high16 v1, -0x10000

    .line 505
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/internal/widget/LockPatternView;->setColors(III)V

    return-void
.end method

.method public setShowPwdImgColor(Landroid/widget/ImageButton;Z)V
    .locals 2

    .line 1041
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->applyWorkChallengeBackgroundCase()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1047
    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/settings/R$drawable;->sec_lock_setting_btn_password_show_mtrl:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    .line 1049
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/settings/R$drawable;->sec_lock_setting_btn_password_hide_mtrl:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 1052
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->work_profile_lock_screen_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1053
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1054
    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1055
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    const/4 p2, 0x3

    invoke-static {p0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/ImageButton;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    goto :goto_1

    :cond_2
    const-string p0, "KKG::WorkProfileConfirmLockHelper"

    const-string p1, "Password show drawable is null."

    .line 1058
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public setWorkChallengeBackgroundIfNeeded(Landroid/view/View;ILandroid/app/Activity;)V
    .locals 5

    .line 358
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->applyWorkChallengeBackgroundCase()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 362
    :cond_0
    sget p2, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p3, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    const/16 v0, 0x8

    .line 363
    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    .line 365
    sget p2, Lcom/android/settings/R$id;->background_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    .line 368
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getInflatedLayoutType(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 369
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_knox_credential_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_knox_credential_bg_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 373
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    :cond_2
    sget p2, Lcom/android/settings/R$id;->knox_logo_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const-string v0, "KKG::WorkProfileConfirmLockHelper"

    if-eqz p2, :cond_8

    .line 379
    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mIsInMultiWindowMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 380
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 382
    sget p2, Lcom/android/settings/R$id;->knox_secure_logo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 383
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 384
    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->knox_logo_height_multiwindow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 385
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 386
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isInLandscapeMode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 387
    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mDeviceHasSoftKeys:Z

    if-eqz p1, :cond_9

    .line 388
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isWinnerProduct()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result p1

    goto :goto_1

    :cond_4
    move p1, v2

    .line 389
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isWinnerProduct()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v1

    goto :goto_2

    :cond_5
    move v1, v2

    .line 390
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 391
    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p2, v2, v2, v1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_3

    .line 393
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p2, v3, v2, v1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_3

    .line 396
    :cond_7
    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mDeviceHasSoftKeys:Z

    if-eqz p1, :cond_9

    .line 397
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, v2, v2, v2, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_3

    :cond_8
    const-string p1, "SecuredLogo is NULL"

    .line 400
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_9
    :goto_3
    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->addWindowFlagsForWorkProfile(Landroid/view/Window;)V

    .line 405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Display rotation : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "actvity width : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenWidth(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "activity height : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenHeight(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Device screen width : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Device screen height : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setupForgotButtonIfManagedProfile(Landroid/widget/Button;)V
    .locals 0

    .line 825
    invoke-virtual {p1}, Landroid/widget/Button;->getPaintFlags()I

    move-result p0

    or-int/lit8 p0, p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setPaintFlags(I)V

    return-void
.end method

.method public switchViewIfNeeded(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/app/Activity;)Landroid/view/View;
    .locals 3

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->applyWorkChallengeBackgroundCase()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 199
    :cond_0
    invoke-virtual {p3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mIsInMultiWindowMode:Z

    .line 200
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsInMultiWindowMode : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mIsInMultiWindowMode:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "KKG::WorkProfileConfirmLockHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->quality:I

    const/high16 v0, 0x10000

    const/4 v1, 0x0

    if-eq p2, v0, :cond_5

    const/high16 v0, 0x20000

    const/high16 v2, 0x70000

    if-eq p2, v0, :cond_1

    const/high16 v0, 0x30000

    if-eq p2, v0, :cond_1

    const/high16 p3, 0x40000

    if-eq p2, p3, :cond_2

    const/high16 p3, 0x50000

    if-eq p2, p3, :cond_2

    const/high16 p3, 0x60000

    if-eq p2, p3, :cond_2

    if-eq p2, v2, :cond_2

    const/high16 p3, 0x80000

    if-eq p2, p3, :cond_2

    .line 230
    iget p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->appliedPasswordPolicy(I)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-boolean p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mReturnCredentials:Z

    if-nez p2, :cond_7

    .line 232
    sget p2, Lcom/android/settings/R$layout;->sec_confirm_lock_password_settings_work_profile:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    :cond_1
    const-string p2, "Password quality is numeric"

    .line 213
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_2
    iget-boolean p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-eqz p2, :cond_3

    .line 220
    sget p2, Lcom/android/settings/R$layout;->sec_confirm_lock_password_settings_work_profile_multiwindow:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 222
    :cond_3
    sget p2, Lcom/android/settings/R$layout;->sec_confirm_lock_password_settings_work_profile:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 224
    iget p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->quality:I

    if-ne p1, v2, :cond_4

    .line 225
    sget p1, Lcom/android/settings/R$id;->ucmTitleText:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->ucmPluginText:Landroid/widget/TextView;

    .line 227
    :cond_4
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->updatePasswordViewLayout(Landroid/view/View;)V

    goto :goto_2

    .line 204
    :cond_5
    iget-boolean p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-eqz p2, :cond_6

    .line 205
    sget p2, Lcom/android/settings/R$layout;->sec_confirm_lock_pattern_settings_work_profile_multiwindow:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 207
    :cond_6
    sget p2, Lcom/android/settings/R$layout;->sec_confirm_lock_pattern_settings_work_profile:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_1
    move-object v1, p1

    .line 209
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->updatePatternViewLayout(Landroid/view/View;)V

    .line 237
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isMultifactorView()Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v1, :cond_8

    .line 238
    sget p1, Lcom/android/settings/R$id;->knox_two_step_image:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mMultiFactorImage:Landroid/widget/ImageView;

    .line 239
    sget p2, Lcom/android/settings/R$drawable;->ws_ic_2step_02:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mMultiFactorImage:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    return-object v1
.end method

.method public updateStageNeedToUnlock(Lcom/android/internal/widget/LockPatternView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .line 424
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 425
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->sec_knox_confirm_pattern_title:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {p1, p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateStageNeedToUnlockWrong(Lcom/android/internal/widget/LockPatternView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    const/4 p1, 0x0

    .line 817
    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mAacTextVisible:Z

    .line 818
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mAacTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    .line 819
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateState()V
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->updateState()V

    return-void
.end method
