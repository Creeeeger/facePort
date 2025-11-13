.class public Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "BiometricLockTimerDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockTimerDialogFragment"
.end annotation


# instance fields
.field private failAttempts:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTimer:Lcom/samsung/android/settings/knox/BiometricLockTimer;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLockTimer(Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;Lcom/samsung/android/settings/knox/BiometricLockTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mLockTimer:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDialogMessage(Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->setDialogMessage(J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private getBiometricDeadline()J
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private runTimer()V
    .locals 5

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mLockTimer:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->getBiometricDeadline()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-double v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 139
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BiometricDeadline left: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KKG::BiometricLockTimerDialogActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v2, Lcom/samsung/android/settings/knox/BiometricLockTimer;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/samsung/android/settings/knox/BiometricLockTimer;-><init>(JLandroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mLockTimer:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    .line 143
    new-instance v0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;-><init>(Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->setOnTickListener(Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;)V

    .line 173
    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mLockTimer:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->start()V

    return-void
.end method

.method private setDialogMessage(J)V
    .locals 5

    .line 178
    iget v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->failAttempts:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x1

    cmp-long v0, p1, v3

    if-gtz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$plurals;->biometric_throttle_error_text_for_fingerprint_second:I

    iget v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->failAttempts:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, p2, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->biometric_throttle_error_text_for_fingerprint:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->failAttempts:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$plurals;->keyguard_twostep_throttle_error_text:I

    long-to-int p1, p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-virtual {v0, v3, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 187
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setDialogTitle(Ljava/lang/String;)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->runTimer()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mUserManager:Landroid/os/UserManager;

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "mUserId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mUserId:I

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedBiometricAttempts(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->failAttempts:I

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mUserId : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", failAttempts : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->failAttempts:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KKG::BiometricLockTimerDialogActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :cond_1
    const/4 p1, 0x5

    .line 99
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 100
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->iris_failed_to_verity_identify:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->setDialogTitle(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 103
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->setDialogMessage(J)V

    .line 104
    iget-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 105
    iget-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 106
    iget-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    new-instance v1, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$1;-><init>(Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;)V

    const-string v2, "OK"

    invoke-virtual {p1, v0, v2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 113
    iget-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$2;-><init>(Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 124
    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 81
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mLockTimer:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/BiometricLockTimer;->stop()V

    :cond_0
    return-void
.end method
