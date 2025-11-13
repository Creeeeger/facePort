.class public final Lcom/android/keyguard/ResetDeviceUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field public mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v0, "ResetDeviceUtils"

    const-string v1, "ResetDeviceUtils()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public final removeSubUser(I)V
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->clearFailedUnlockAttempts(Z)V

    iget-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    iget-object p0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ResetDeviceUtils"

    const-string p1, "KeyguardHostView - exception in removeSubuser"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final wipeOut(III)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wipeOut() attemptsCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResetDeviceUtils"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v2, 0x1

    if-ne p3, v2, :cond_7

    iget-object p2, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result p3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isFactoryResetAllowed = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string p0, "Factory Reset is not allowed"

    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const-string p3, "no_factory_reset"

    invoke-virtual {v0, p3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p0, "Factory Reset is not allowed DISALLOW_FACTORY_RESET"

    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded()Z

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "wipeExcludeExternalStorage = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "findSDCard ()"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/keyguard/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "storage"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/storage/StorageManager;

    iput-object p3, p0, Lcom/android/keyguard/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    :cond_2
    iget-object p3, p0, Lcom/android/keyguard/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object p3

    array-length v3, p3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p3, v4

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "findSDCard ( storageVolumes = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, p3, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " )"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object p3, p3, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const-string p3, "findSDCard ( null )"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v3, :cond_5

    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v3, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    const v4, 0x7f13084c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x7d9

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const-string v0, "android.intent.extra.REASON"

    const/high16 v3, 0x10000000

    const-string v4, "android.intent.action.FACTORY_RESET"

    if-eqz p3, :cond_6

    if-nez p2, :cond_6

    const-string/jumbo p2, "wipeOut ACTION_FACTORY_RESET/EXTRA_WIPE_EXTERNAL_STORAGE=true)"

    invoke-static {v1, p2}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ResetDeviceUtils_EXTERNAL_STORAGE, attemptsCount = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    const-string/jumbo p2, "wipeOut ( send ACTION_FACTORY_RESET )"

    invoke-static {v1, p2}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ResetDeviceUtils_FACTORY_RESET, attemptsCount = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const/high16 p1, 0x1000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "wipeOut() removeSubUser userType : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_8

    iget-object p1, p0, Lcom/android/keyguard/ResetDeviceUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/ResetDeviceUtils;->removeSubUser(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/keyguard/ResetDeviceUtils;->removeSubUser(I)V

    :cond_9
    :goto_3
    return-void
.end method
