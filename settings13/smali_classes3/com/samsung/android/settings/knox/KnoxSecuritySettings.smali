.class public Lcom/samsung/android/settings/knox/KnoxSecuritySettings;
.super Landroidx/fragment/app/FragmentActivity;
.source "KnoxSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;,
        Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;
    }
.end annotation


# instance fields
.field private mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

.field private mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field mHandler:Landroid/os/Handler;

.field private mHasEnrolledBiometrics:Z

.field private mHasFace:Z

.field private mHasFingerprints:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mProfileUserId:I

.field private mRequireNewDevicePassword:Z


# direct methods
.method static bridge synthetic -$$Nest$munify(Lcom/samsung/android/settings/knox/KnoxSecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->unify()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 64
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 65
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 286
    new-instance v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$1;-><init>(Lcom/samsung/android/settings/knox/KnoxSecuritySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private isCallingFromKnox()Z
    .locals 2

    const/4 v0, 0x0

    .line 270
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 271
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "com.samsung.android.knox.containeragent"

    .line 273
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.knox.containercore"

    .line 274
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method private promptForNewDeviceLockAndThenUnify()V
    .locals 4

    .line 247
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.CHANGE_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 250
    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileUserId:I

    const-string v3, "unification_profile_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    const-string v3, "unification_profile_credential"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, ":settings:show_fragment_args"

    .line 253
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 255
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/16 v2, 0x85

    invoke-virtual {p0, v0, v2, v1}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private showRemoveBiometricsDialog()V
    .locals 2

    .line 315
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->getInstance()Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;

    move-result-object v0

    .line 316
    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->setUserId(I)V

    .line 317
    new-instance v1, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$2;-><init>(Lcom/samsung/android/settings/knox/KnoxSecuritySettings;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->setDialogButtonClickListener(Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;)V

    .line 330
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "biometric_removal_dialog"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private unify()V
    .locals 0

    .line 309
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->unifyLocks()V

    return-void
.end method

.method private unifyKeepingDeviceLock()V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileUserId:I

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 229
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileUserId:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v1, 0x100

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileUserId:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    .line 239
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileUserId:I

    const-string v2, "CHANGE_LOCK_TYPE"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->insertStatusLogForKnox(Landroid/content/Context;ILjava/lang/String;I)V

    const/4 v0, -0x1

    .line 242
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->finish()V

    return-void
.end method

.method private unifyLocks()V
    .locals 2

    .line 210
    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mRequireNewDevicePassword:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->promptForNewDeviceLockAndThenUnify()V

    goto :goto_0

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->unifyKeepingDeviceLock()V

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 217
    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 221
    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    :cond_2
    return-void
.end method

.method private ununifyLocks()V
    .locals 3

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x84

    .line 179
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 171
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult Result code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Request code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KKG::KnoxSecuritySettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "password"

    const/4 v1, -0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    if-ne p2, v1, :cond_0

    .line 132
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->ununifyLocks()V

    goto :goto_0

    :cond_0
    const/16 v2, 0x81

    const/4 v3, 0x0

    if-ne p1, v2, :cond_2

    if-ne p2, v1, :cond_2

    .line 137
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 138
    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mRequireNewDevicePassword:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mHasEnrolledBiometrics:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->showRemoveBiometricsDialog()V

    goto :goto_0

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->unifyLocks()V

    goto :goto_0

    :cond_2
    const/16 p3, 0x84

    if-ne p1, p3, :cond_3

    .line 152
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->finish()V

    goto :goto_0

    :cond_3
    const/16 p3, 0x85

    if-ne p1, p3, :cond_4

    const/4 p1, 0x1

    if-ne p2, p1, :cond_4

    .line 155
    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileUserId:I

    invoke-virtual {p2, p1, v3, p3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    .line 156
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 p2, 0x100

    iget p3, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileUserId:I

    invoke-virtual {p1, p2, v3, p3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileUserId:I

    const-string p3, "CHANGE_LOCK_TYPE"

    invoke-static {p1, p2, p3, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->insertStatusLogForKnox(Landroid/content/Context;ILjava/lang/String;I)V

    .line 162
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->finish()V

    goto :goto_0

    .line 165
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 76
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->isCallingFromKnox()Z

    move-result p1

    if-nez p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->finish()V

    return-void

    .line 82
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->finish()V

    return-void

    .line 88
    :cond_1
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 89
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object p1

    .line 91
    invoke-interface {p1, p0}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 92
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileUserId:I

    .line 93
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 94
    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 95
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileUserId:I

    invoke-virtual {p1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mHasFingerprints:Z

    .line 96
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz p1, :cond_3

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileUserId:I

    invoke-virtual {p1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mHasFace:Z

    if-nez p1, :cond_5

    .line 97
    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mHasFingerprints:Z

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move p1, v1

    goto :goto_3

    :cond_5
    :goto_2
    move p1, v0

    :goto_3
    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mHasEnrolledBiometrics:Z

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_6

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->finish()V

    return-void

    .line 104
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "enableOneLock"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 106
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/app/admin/DevicePolicyManager;->isPasswordSufficientAfterProfileUnification(II)Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileUserId:I

    .line 108
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPasswordSufficientAfterKnoxProfileUnification(I)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    move v0, v1

    :cond_8
    :goto_4
    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mRequireNewDevicePassword:Z

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->startUnification()V

    goto :goto_5

    .line 111
    :cond_9
    sget p1, Lcom/android/settings/R$string;->knox_onelock_unlock_set_picker_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 112
    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v3, 0x82

    .line 114
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 115
    invoke-virtual {v3, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 116
    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 117
    invoke-virtual {p1, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 118
    invoke-virtual {v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p1

    if-nez p1, :cond_a

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->ununifyLocks()V

    :cond_a
    :goto_5
    return-void
.end method

.method startUnification()V
    .locals 3

    .line 184
    sget v0, Lcom/android/settings/R$string;->knox_onelock_unlock_set_picker_title_profile:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v2, 0x81

    .line 188
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    .line 189
    invoke-virtual {v2, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 190
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileUserId:I

    .line 191
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 192
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->unifyLocks()V

    :cond_0
    return-void
.end method
