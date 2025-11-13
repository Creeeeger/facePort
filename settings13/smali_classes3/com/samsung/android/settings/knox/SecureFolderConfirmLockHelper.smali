.class public Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;
.super Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;
.source "SecureFolderConfirmLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private contentObserver:Landroid/database/ContentObserver;

.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

.field private mContext:Landroid/content/Context;

.field private mDeviceHasSoftKeys:Z

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDeviceScreenHeight:I

.field private mEffectiveUserId:I

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsInMultiWindowMode:Z

.field private mIsInternal:Z

.field private mIsJPNModel:Z

.field private mKnoxEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLockEventReceiver:Landroid/content/BroadcastReceiver;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordViewLayoutListener:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

.field private mReturnCredentials:Z

.field mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

.field private mShouldShowForgetOrUninstallButton:I

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mVisibleLayoutBottomMagin:I

.field private final quality:I


# direct methods
.method public static synthetic $r8$lambda$kMrnOCa2WVxwxf0DAxx9C2Ck1Po(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->lambda$setResetOrUninstallButton$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kxaB1OF_h8K79InHN_HyDSULD-8(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->lambda$setResetOrUninstallButton$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceScreenHeight(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mDeviceScreenHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEffectiveUserId(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInMultiWindowMode(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKnoxEventList(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReturnCredentials(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mReturnCredentials:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVisibleLayoutBottomMagin(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mVisibleLayoutBottomMagin:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmVisibleLayoutBottomMagin(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mVisibleLayoutBottomMagin:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideKnoxLogo(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->hideKnoxLogo(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misInLandscapeMode(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isInLandscapeMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSecureFolderPinView(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isSecureFolderPinView()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowSFLockedView(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->showSFLockedView(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 98
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IIZZLcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;)V
    .locals 4

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;-><init>()V

    const-string v0, "KKG::SecureFolderConfirmLockHelper"

    .line 90
    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->TAG:Ljava/lang/String;

    .line 105
    sget-object v1, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->NONE:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    const/4 v1, 0x0

    .line 110
    iput-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v2, 0x0

    .line 114
    iput v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mVisibleLayoutBottomMagin:I

    .line 115
    iput-boolean v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mDeviceHasSoftKeys:Z

    .line 117
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isSecBrandAsGalaxy()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsJPNModel:Z

    .line 118
    iput-boolean v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    const/16 v2, 0x8

    .line 127
    iput v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mShouldShowForgetOrUninstallButton:I

    .line 148
    iput-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 551
    new-instance v1, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$1;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)V

    iput-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockEventReceiver:Landroid/content/BroadcastReceiver;

    .line 574
    new-instance v2, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$2;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->contentObserver:Landroid/database/ContentObserver;

    .line 154
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    .line 155
    iput p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mUserId:I

    .line 156
    iput p3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    .line 157
    iput-boolean p4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mReturnCredentials:Z

    .line 158
    iput-boolean p5, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInternal:Z

    .line 159
    iput-object p6, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    const-string p2, "device_policy"

    .line 161
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 163
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 164
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mUserManager:Landroid/os/UserManager;

    .line 165
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string p2, "persona"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 166
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 167
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->quality:I

    .line 168
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

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

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mDeviceHasSoftKeys:Z

    .line 170
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mDeviceScreenHeight:I

    .line 172
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance p4, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-direct {p4, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 p5, 0x0

    const/4 p6, 0x0

    move-object p2, v1

    invoke-virtual/range {p1 .. p6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 176
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->registerContentObserver()V

    .line 178
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->getStatusLogString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x64

    invoke-static {p3, p2}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addStatus(ILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Init. KeyguardStoredPasswordQuality = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_0

    const-string p2, "none"

    goto :goto_0

    :cond_0
    const/high16 p2, 0x10000

    if-gt v2, p2, :cond_1

    const-string p2, "pattern"

    goto :goto_0

    :cond_1
    const/high16 p2, 0x30000

    if-gt v2, p2, :cond_2

    const-string p2, "pin"

    goto :goto_0

    :cond_2
    const-string p2, "Password"

    .line 184
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", applySecureFolderBackgroundCase = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 182
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addListenersForPasswordView(Landroid/view/View;)V
    .locals 1

    .line 890
    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mPasswordViewLayoutListener:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;

    .line 891
    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->startListener()V

    return-void
.end method

.method private addWindowFlagsForWorkProfile(Landroid/view/Window;Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 607
    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 608
    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 609
    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 610
    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 611
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x300

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 615
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 616
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v2, -0x2

    .line 617
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 620
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isWallpaperResourceRequired(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 621
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x40

    .line 629
    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const p0, 0x3e0ccccd    # 0.1375f

    .line 630
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 p0, 0x2

    .line 631
    invoke-virtual {p1, p0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 622
    :cond_2
    :goto_0
    sget p0, Lcom/android/settings/R$id;->backgroundBlur:I

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_3

    .line 624
    new-instance p2, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {p2, v1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v2, 0x78

    .line 625
    invoke-virtual {p2, v2}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p2

    const-string v2, "#990e0e0e"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p2

    .line 626
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 633
    :cond_3
    :goto_1
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p0, 0x100000

    .line 634
    invoke-virtual {p1, p0, p0}, Landroid/view/Window;->setFlags(II)V

    .line 635
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 637
    :cond_4
    sget-boolean p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "KKG::SecureFolderConfirmLockHelper"

    const-string p2, "Debug mode enabled"

    .line 639
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x2000

    .line 640
    invoke-virtual {p1, p0}, Landroid/view/Window;->clearFlags(I)V

    :cond_5
    return-void
.end method

.method private applySecureFolderBackgroundCase()Z
    .locals 0

    .line 654
    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mReturnCredentials:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private checkSFLockState()Z
    .locals 3

    .line 773
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getSamsungAccount(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Samsung account : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KKG::SecureFolderConfirmLockHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    .line 777
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->initSFLockState(I)V

    .line 780
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_REMOVED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFICATION_FAILED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private drawSecureFolderLogo(Landroid/view/View;)V
    .locals 1

    .line 590
    sget v0, Lcom/android/settings/R$id;->knoxLogo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 591
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mUserId:I

    invoke-static {v0, p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getSecureFolderLogo(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getBitmapWallpaper()Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "KKG::SecureFolderConfirmLockHelper"

    const-string v1, "getBitmapWallpaper"

    .line 1029
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1032
    invoke-virtual {p0, v0, v1}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    .line 1033
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    .line 1035
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getCurrentLockType()Ljava/lang/String;
    .locals 1

    .line 957
    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->quality:I

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x70000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "password"

    goto :goto_0

    :cond_1
    const-string p0, "pin"

    goto :goto_0

    :cond_2
    const-string p0, "pattern"

    :goto_0
    return-object p0
.end method

.method private getDefaultWallpaper()Landroid/graphics/drawable/LayerDrawable;
    .locals 7

    .line 1009
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->getBitmapWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1012
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "#99000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "KKG::SecureFolderConfirmLockHelper"

    if-eqz v0, :cond_0

    const-string v6, "Getting wallpaper data has been completed."

    .line 1015
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    .line 1017
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v6, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v6, v4, v3

    aput-object v1, v4, v2

    invoke-direct {v5, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const-string v0, "something was wrong while getting wallpaper"

    .line 1020
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    .line 1022
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    new-array v0, v4, [Landroid/graphics/drawable/Drawable;

    .line 1023
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    aput-object p0, v0, v3

    aput-object v1, v0, v2

    invoke-direct {v5, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object v5
.end method

.method private getStatusLogString()Ljava/lang/String;
    .locals 2

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 983
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->getCurrentLockType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v1, p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintLockSetForUser(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, " + fingerprint"

    .line 985
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideKnoxLogo(Landroid/view/View;)V
    .locals 1

    .line 310
    sget p0, Lcom/android/settings/R$id;->knoxLogoLayout:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const-string p1, "KKG::SecureFolderConfirmLockHelper"

    if-eqz p0, :cond_0

    const-string v0, "Hiding Knox logo."

    .line 312
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 313
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p0, "Unable to hide knox logo."

    .line 315
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initSFLockState(I)V
    .locals 2

    .line 788
    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_REMOVED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    .line 789
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->hasSamsungAccount(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 790
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    if-lt p1, v0, :cond_1

    .line 791
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getSAccountLock(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 792
    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_CHANGED_LOCK:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    goto :goto_0

    .line 794
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFICATION_FAILED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    goto :goto_0

    .line 796
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getSAccountLock(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 797
    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_CHANGED_LOCK:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    goto :goto_0

    .line 799
    :cond_2
    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFIED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    .line 802
    :cond_3
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->setSFLockState(Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;)V

    return-void
.end method

.method private isFingerprintChanged()Z
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result p0

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInLandscapeMode()Z
    .locals 2

    .line 646
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

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

.method private isSecureFolderPinView()Z
    .locals 2

    .line 845
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 849
    :cond_0
    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->quality:I

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isStrongAuthRequired()Z
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mUserManager:Landroid/os/UserManager;

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    .line 663
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

.method private synthetic lambda$setResetOrUninstallButton$0(Landroid/view/View;)V
    .locals 2

    .line 683
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-eqz p1, :cond_0

    .line 684
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->lock_screen_doesnt_support_multi_window_text:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 687
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->showForgotPasswordDialog()V

    .line 689
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    const/16 v0, 0x64

    const/16 v1, 0x3e9

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->getCurrentLockType()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$setResetOrUninstallButton$1(Landroid/view/View;)V
    .locals 0

    .line 696
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->showUninstallDialog()V

    return-void
.end method

.method private registerContentObserver()V
    .locals 3

    const-string v0, "KKG::SecureFolderConfirmLockHelper"

    const-string v1, "registerContentObserver - 0"

    .line 569
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_secure_folder_flag"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->contentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private setKnoxLogo(Landroid/view/View;)V
    .locals 4

    .line 595
    sget v0, Lcom/android/settings/R$id;->knoxTitleText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 596
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 598
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->keyguard_knoxTitletext_text_height_dex:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 600
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->drawSecureFolderLogo(Landroid/view/View;)V

    .line 601
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->updateKnoxLogoMargin(Landroid/view/View;)V

    return-void
.end method

.method private setResetOrUninstallButton(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    sget v0, Lcom/android/settings/R$id;->btn_forgot_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 679
    new-instance v0, Lcom/samsung/android/settings/knox/securefolder/ResetPasswordButtonController;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/settings/knox/securefolder/ResetPasswordButtonController;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

    .line 680
    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->updateLayout()V

    .line 681
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mShouldShowForgetOrUninstallButton:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->setVisibility(I)V

    .line 682
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 693
    :cond_1
    sget v0, Lcom/android/settings/R$id;->sf_uninstall_bottom_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 694
    new-instance v0, Lcom/samsung/android/settings/knox/securefolder/UninstallButtonController;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/settings/knox/securefolder/UninstallButtonController;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

    .line 695
    iget p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mShouldShowForgetOrUninstallButton:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->setVisibility(I)V

    .line 696
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private setSFLockState(Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;)V
    .locals 1

    .line 806
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    .line 807
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initLockState : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KKG::SecureFolderConfirmLockHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setWallpaperIfNeeded(Landroid/view/View;)V
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isWallpaperResourceRequired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->getDefaultWallpaper()Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    .line 994
    sget v0, Lcom/android/settings/R$id;->background_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 996
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x2

    const/4 v0, 0x0

    .line 997
    invoke-virtual {p1, p0, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 998
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 999
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->supportBlur()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1000
    new-instance p0, Lcom/samsung/android/graphics/SemGfxImageFilter;

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    const/high16 v0, 0x43160000    # 150.0f

    .line 1001
    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    .line 1002
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->semSetGfxImageFilter(Lcom/samsung/android/graphics/SemGfxImageFilter;)V

    :cond_0
    return-void
.end method

.method private showForgotPasswordDialog()V
    .locals 4

    const-string v0, "KKG::SecureFolderConfirmLockHelper"

    .line 702
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 704
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    const/high16 v3, 0x10000

    if-eq v2, v3, :cond_2

    const/high16 v3, 0x20000

    if-eq v2, v3, :cond_1

    const/high16 v3, 0x30000

    if-eq v2, v3, :cond_1

    const/high16 v3, 0x40000

    if-eq v2, v3, :cond_0

    const/high16 v3, 0x50000

    if-eq v2, v3, :cond_0

    const/high16 v3, 0x60000

    if-eq v2, v3, :cond_0

    const/high16 v3, 0x70000

    if-eq v2, v3, :cond_1

    const/high16 v3, 0x80000

    if-eq v2, v3, :cond_0

    const-string v2, "invalid quality error"

    .line 720
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->forgot_pattern_header:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 717
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->forgot_password_header:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 711
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->forgot_pin_header:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 706
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->forgot_pattern_header:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 724
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 725
    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsJPNModel:Z

    if-eqz v2, :cond_3

    .line 726
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->forgot_ppp_dialog_galaxy:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 728
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->forgot_ppp_dialog:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 730
    :goto_1
    sget v2, Lcom/android/settings/R$string;->reset:I

    new-instance v3, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 747
    sget v2, Lcom/android/settings/R$string;->cancel:I

    new-instance v3, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$4;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 757
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 758
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    instance-of p0, p0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_4

    .line 760
    :try_start_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v2, 0x7d3

    invoke-virtual {p0, v2}, Landroid/view/Window;->setType(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 762
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception22 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception23 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private showSFLockedView(ZZ)V
    .locals 3

    .line 816
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.knox.SecureFolderLockedView"

    .line 817
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 818
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "fromResetBtn"

    .line 819
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "wasLastAttempt"

    .line 820
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 821
    iget p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    const-string p2, "userId"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 823
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    .line 824
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 825
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 826
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p2

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 828
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getTaskId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 831
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 832
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 833
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 836
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception24 : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KKG::SecureFolderConfirmLockHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private showUninstallDialog()V
    .locals 4

    .line 1041
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1042
    sget v1, Lcom/android/settings/R$string;->bnr_secure_folder_backup_alert_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1043
    sget v1, Lcom/android/settings/R$string;->keyguard_uninstall_popup_msg:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 1044
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1045
    sget v2, Lcom/android/settings/R$string;->knox_uninstall_dialog_title:I

    new-instance v3, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$5;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1067
    sget v2, Lcom/android/settings/R$string;->cancel:I

    new-instance v3, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$6;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1076
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1077
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 1079
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception29 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KKG::SecureFolderConfirmLockHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1085
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$7;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1092
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateKnoxLogoMargin(Landroid/view/View;)V
    .locals 4

    .line 320
    sget v0, Lcom/android/settings/R$id;->knoxLogoLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 322
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 323
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isInLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mDeviceScreenHeight:I

    int-to-double v0, p0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v0, v2

    double-to-int p0, v0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 327
    :cond_0
    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mDeviceScreenHeight:I

    int-to-double v0, p0

    const-wide v2, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v0, v2

    double-to-int p0, v0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 329
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isInLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 330
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenHeight(Landroid/content/Context;)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3fb70a3d70a3d70aL    # 0.09

    mul-double/2addr v0, v2

    double-to-int p0, v0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_2
    :goto_0
    return-void
.end method

.method private updatePasswordViewLayout(Landroid/view/View;)V
    .locals 5

    .line 860
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->setKnoxLogo(Landroid/view/View;)V

    .line 862
    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-nez v0, :cond_2

    .line 863
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isInLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    sget v0, Lcom/android/settings/R$id;->topLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 865
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 867
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFoldableProduct()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v0, :cond_1

    .line 868
    sget v0, Lcom/android/settings/R$id;->parent_password_entry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 869
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 870
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 871
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 872
    sget v0, Lcom/android/settings/R$id;->parent_password_entry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 873
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 874
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 879
    :cond_2
    :goto_0
    sget v0, Lcom/android/settings/R$id;->password_show_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 880
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 881
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 882
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->show_password_width_height_dex:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 883
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 884
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 886
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->addListenersForPasswordView(Landroid/view/View;)V

    return-void
.end method

.method private updatePatternViewLayout(Landroid/view/View;)V
    .locals 3

    .line 226
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->setKnoxLogo(Landroid/view/View;)V

    .line 227
    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isInLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    sget v0, Lcom/android/settings/R$id;->pattern_view_land_right_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->keyguard_main_knoxlogo_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 236
    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mDeviceHasSoftKeys:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    add-int/2addr v0, p0

    .line 237
    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    .line 239
    :cond_2
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    .line 244
    :cond_3
    sget v0, Lcom/android/settings/R$id;->topLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 245
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v0, p0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic checkPasswordPolicy(Landroid/app/Activity;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->checkPasswordPolicy(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic confirmBiometricIfNeeded(ZLandroid/app/Activity;)Z
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->confirmBiometricIfNeeded(ZLandroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public getDefaultDetails()I
    .locals 8

    .line 469
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isStrongAuthRequired()Z

    move-result v0

    .line 471
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isTimeoutStrongAuth(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    .line 472
    invoke-static {v1, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFirstStrongAuthForWork(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    .line 473
    invoke-static {v1, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->isBiometricLockOutStrongAuth(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 475
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintLockSetForUser(Landroid/content/Context;I)Z

    move-result v4

    .line 476
    iget-object v5, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v5, v6}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintLockSetForUser(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isFingerprintChanged()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 477
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result v5

    .line 478
    iget-object v6, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v6, v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->strongAuthWithDeviceReboot(Landroid/content/Context;I)Z

    move-result v6

    .line 479
    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->quality:I

    const/high16 v7, 0x10000

    if-eq p0, v7, :cond_f

    const/high16 v7, 0x20000

    if-eq p0, v7, :cond_9

    const/high16 v7, 0x30000

    if-eq p0, v7, :cond_9

    const/high16 v7, 0x40000

    if-eq p0, v7, :cond_3

    const/high16 v7, 0x50000

    if-eq p0, v7, :cond_3

    const/high16 v7, 0x60000

    if-eq p0, v7, :cond_3

    const/high16 v7, 0x70000

    if-eq p0, v7, :cond_9

    const/high16 v7, 0x80000

    if-eq p0, v7, :cond_3

    return v3

    :cond_3
    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    if-nez v1, :cond_6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 511
    sget p0, Lcom/android/settings/R$string;->sec_enter_password_strong_auth_fingerprint_SF:I

    goto :goto_4

    .line 512
    :cond_5
    sget p0, Lcom/android/settings/R$string;->sec_after_restarting_phone_password_WC:I

    goto :goto_4

    .line 509
    :cond_6
    :goto_3
    sget p0, Lcom/android/settings/R$string;->sec_knox_for_your_security_password:I

    goto :goto_4

    :cond_7
    if-eqz v5, :cond_8

    .line 514
    sget p0, Lcom/android/settings/R$string;->sec_enter_password_WC:I

    goto :goto_4

    .line 515
    :cond_8
    sget p0, Lcom/android/settings/R$string;->confirm_lockpassword_your_password_header:I

    :goto_4
    return p0

    :cond_9
    if-eqz v0, :cond_d

    if-eqz v4, :cond_d

    if-nez v1, :cond_c

    if-nez v6, :cond_a

    goto :goto_5

    :cond_a
    if-eqz v2, :cond_b

    .line 498
    sget p0, Lcom/android/settings/R$string;->sec_enter_pin_strong_auth_fingerprint_SF:I

    goto :goto_6

    .line 499
    :cond_b
    sget p0, Lcom/android/settings/R$string;->sec_after_restarting_phone_pin_WC:I

    goto :goto_6

    .line 496
    :cond_c
    :goto_5
    sget p0, Lcom/android/settings/R$string;->sec_knox_for_your_security_pin:I

    goto :goto_6

    :cond_d
    if-eqz v5, :cond_e

    .line 501
    sget p0, Lcom/android/settings/R$string;->sec_enter_pin_WC:I

    goto :goto_6

    .line 502
    :cond_e
    sget p0, Lcom/android/settings/R$string;->confirm_lockpassword_your_pin_header:I

    :goto_6
    return p0

    :cond_f
    if-eqz v0, :cond_13

    if-eqz v4, :cond_13

    if-nez v1, :cond_12

    if-nez v6, :cond_10

    goto :goto_7

    :cond_10
    if-eqz v2, :cond_11

    .line 486
    sget p0, Lcom/android/settings/R$string;->sec_draw_pattern_strong_auth_fingerprint_SF:I

    goto :goto_8

    .line 487
    :cond_11
    sget p0, Lcom/android/settings/R$string;->sec_after_restarting_phone_pattern_WC:I

    goto :goto_8

    .line 484
    :cond_12
    :goto_7
    sget p0, Lcom/android/settings/R$string;->sec_knox_for_your_security_pattern:I

    goto :goto_8

    :cond_13
    if-eqz v5, :cond_14

    .line 489
    sget p0, Lcom/android/settings/R$string;->draw_unlock_pattern:I

    goto :goto_8

    .line 490
    :cond_14
    sget p0, Lcom/android/settings/R$string;->lockpattern_need_to_unlock:I

    :goto_8
    return p0
.end method

.method public getDefaultHeader(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 975
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->secure_folder_header_text_password:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 976
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isSecBrandAsGalaxy()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 977
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->secure_folder_header_text_pin_jpn:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 978
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->secure_folder_header_text_pin:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getErrorMessage(I)I
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->getErrorMessage(I)I

    move-result p0

    return p0
.end method

.method public hideSoftInputIfNeeded(Landroid/widget/ImeAwareEditText;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1099
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

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

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic interceptOnResumeIfNeeded(Landroid/app/Activity;)Z
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->interceptOnResumeIfNeeded(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public interceptUpdateErrorMessageIfNeeded(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x14

    if-lt p1, v1, :cond_1

    .line 389
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {p1, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 390
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->showSFLockedView(ZZ)V

    goto :goto_0

    .line 392
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

    if-eqz p0, :cond_1

    .line 393
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->setVisibility(I)V

    :cond_1
    :goto_0
    return v0
.end method

.method public needToUpdateErrorMessage(Landroid/widget/TextView;I)V
    .locals 4

    .line 919
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    if-lt p2, v0, :cond_3

    rsub-int/lit8 p2, p2, 0x14

    .line 921
    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->quality:I

    const/high16 v1, 0x10000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x70000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x80000

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 934
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$plurals;->sec_incorrect_password_attempts_left:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 928
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$plurals;->sec_incorrect_pin_attempts_left:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 923
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$plurals;->sec_incorrect_pattern_attempts_left:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "show_forget_or_uninstall_button"

    .line 951
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mShouldShowForgetOrUninstallButton:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/View;)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 256
    invoke-virtual {p1, p0}, Landroid/view/View;->semSetRoundedCorners(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 450
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->contentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mPasswordViewLayoutListener:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;

    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->stopListener()V

    .line 459
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 462
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->onPause()V

    return-void
.end method

.method public onSavedInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

    if-eqz v0, :cond_0

    .line 943
    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->getVisibility()I

    move-result v0

    const-string v1, "show_forget_or_uninstall_button"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 945
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->onSaveInstanceStateCallback()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 412
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isSoftKeyboardShown(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 415
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->refreshBiometricsListeningState()V

    goto :goto_0

    .line 417
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->stopListeningForBiometrics()V

    :goto_0
    return-void
.end method

.method public removeGlobalLayoutListenerIfRequired()V
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mPasswordViewLayoutListener:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;

    if-eqz p0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->stopListener()V

    :cond_0
    return-void
.end method

.method public reportFailedAttempt(ILandroidx/fragment/app/FragmentManager;Landroid/app/Activity;)Z
    .locals 0

    const-string p1, "KKG::SecureFolderConfirmLockHelper"

    const-string p2, "reportFailedAttempt"

    .line 440
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 442
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public reportSuccessfulAttempt()V
    .locals 3

    const-string v0, "KKG::SecureFolderConfirmLockHelper"

    const-string v1, "reportSuccessfulAttempt"

    .line 430
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 433
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->getCurrentLockType()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x64

    const/16 v2, 0x3e8

    invoke-static {v1, v2, p0}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetState(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 351
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isSecureFolderPinView()Z

    return-void
.end method

.method public setBiometricLockoutDeadline(I)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricAttemptDeadline(II)J

    return-void
.end method

.method public setCredentialCheckResultTrackerIfNeeded(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPasswordEntry(Landroid/widget/ImeAwareEditText;)V
    .locals 3

    .line 1113
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x800013

    .line 1116
    invoke-virtual {p1, v0}, Landroid/widget/ImeAwareEditText;->setGravity(I)V

    .line 1117
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->knox_pwd_entry_padding_left_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

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

    .line 358
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->work_profile_lock_screen_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->status_bar_color:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const/high16 v1, -0x10000

    .line 361
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/internal/widget/LockPatternView;->setColors(III)V

    return-void
.end method

.method public setShowPwdImgColor(Landroid/widget/ImageButton;Z)V
    .locals 2

    .line 895
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 901
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/settings/R$drawable;->sec_lock_setting_btn_password_show_mtrl:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    .line 903
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/settings/R$drawable;->sec_lock_setting_btn_password_hide_mtrl:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 906
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->work_profile_lock_screen_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 907
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 908
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 909
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    const/4 p2, 0x3

    invoke-static {p0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/ImageButton;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    goto :goto_1

    :cond_2
    const-string p0, "KKG::SecureFolderConfirmLockHelper"

    const-string p1, "Password show drawable is null."

    .line 912
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public setWorkChallengeBackgroundIfNeeded(Landroid/view/View;ILandroid/app/Activity;)V
    .locals 5

    .line 261
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 264
    :cond_0
    iput-object p3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mActivity:Landroid/app/Activity;

    .line 265
    sget p2, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p3, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    const/16 v0, 0x8

    .line 266
    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    .line 269
    iget-boolean p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 270
    sget p2, Lcom/android/settings/R$id;->knox_logo_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 271
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 273
    sget p2, Lcom/android/settings/R$id;->knox_secure_logo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 274
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 275
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->knox_logo_height_multiwindow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 276
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 277
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isInLandscapeMode()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 278
    sget p2, Lcom/android/settings/R$id;->knox_logo_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 279
    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mDeviceHasSoftKeys:Z

    if-eqz v1, :cond_6

    .line 280
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isWinnerProduct()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 281
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isWinnerProduct()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v0

    .line 282
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 283
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p2, v0, v0, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2

    .line 285
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p2, v3, v0, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2

    .line 288
    :cond_5
    iget-boolean p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mDeviceHasSoftKeys:Z

    if-eqz p2, :cond_6

    .line 289
    sget p2, Lcom/android/settings/R$id;->knox_logo_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 290
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p2, v0, v0, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 293
    :cond_6
    :goto_2
    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->addWindowFlagsForWorkProfile(Landroid/view/Window;Landroid/view/View;)V

    .line 294
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$color;->secure_folder_background_color:I

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 296
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->setWallpaperIfNeeded(Landroid/view/View;)V

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Display rotation : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KKG::SecureFolderConfirmLockHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "actvity width : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenWidth(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "activity height : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenHeight(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Device screen width : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Device screen height : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->checkSFLockState()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 305
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->showSFLockedView(ZZ)V

    :cond_7
    return-void
.end method

.method public bridge synthetic setupForgotButtonIfManagedProfile(Landroid/widget/Button;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->setupForgotButtonIfManagedProfile(Landroid/widget/Button;)V

    return-void
.end method

.method public switchViewIfNeeded(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 195
    :cond_0
    invoke-virtual {p3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    .line 196
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsInMultiWindowMode : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "KKG::SecureFolderConfirmLockHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->quality:I

    const/high16 p3, 0x10000

    const/4 v0, 0x0

    if-eq p2, p3, :cond_3

    const/high16 p3, 0x20000

    if-eq p2, p3, :cond_1

    const/high16 p3, 0x30000

    if-eq p2, p3, :cond_1

    const/high16 p3, 0x40000

    if-eq p2, p3, :cond_1

    const/high16 p3, 0x50000

    if-eq p2, p3, :cond_1

    const/high16 p3, 0x60000

    if-eq p2, p3, :cond_1

    const/high16 p3, 0x70000

    if-eq p2, p3, :cond_1

    const/high16 p3, 0x80000

    if-eq p2, p3, :cond_1

    goto :goto_2

    .line 213
    :cond_1
    iget-boolean p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-eqz p2, :cond_2

    .line 214
    sget p2, Lcom/android/settings/R$layout;->sec_confirm_lock_password_settings_secure_folder_multiwindow:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 216
    :cond_2
    sget p2, Lcom/android/settings/R$layout;->sec_confirm_lock_password_settings_secure_folder:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    move-object v0, p1

    .line 218
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->updatePasswordViewLayout(Landroid/view/View;)V

    goto :goto_2

    .line 199
    :cond_3
    iget-boolean p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-eqz p2, :cond_4

    .line 200
    sget p2, Lcom/android/settings/R$layout;->sec_confirm_lock_pattern_settings_secure_folder_multiwindow:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 202
    :cond_4
    sget p2, Lcom/android/settings/R$layout;->sec_confirm_lock_pattern_settings_secure_folder:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_1
    move-object v0, p1

    .line 204
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->updatePatternViewLayout(Landroid/view/View;)V

    .line 221
    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->setResetOrUninstallButton(Landroid/view/View;)V

    return-object v0
.end method

.method public updateStageNeedToUnlock(Lcom/android/internal/widget/LockPatternView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 338
    sget p0, Lcom/android/settings/R$string;->secure_folder_header_text_pattern:I

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public updateStageNeedToUnlockWrong(Lcom/android/internal/widget/LockPatternView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 345
    sget p0, Lcom/android/settings/R$string;->incorrect_pattern_entered_secure_folder:I

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic updateState()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->updateState()V

    return-void
.end method
