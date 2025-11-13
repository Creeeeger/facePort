.class public Lcom/android/settings/MainClearConfirm;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "MainClearConfirm.java"


# static fields
.field private static final mSalesCode:Ljava/lang/String;

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private isSprFamily:Z

.field private mCanEraseExternalOnFuseSystem:Z

.field mContentView:Landroid/view/View;

.field mEraseEsims:Z

.field private mEraseSdCard:Z

.field private mEraseSdCardId:Ljava/lang/String;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mIsSamsungAccountConfirmed:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreloadAppsRestoreOption:I

.field omadmReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$1Oam3bTyVDAWTPK3RPzXPS5xscA(Lcom/android/settings/MainClearConfirm;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/MainClearConfirm;->lambda$onCreateView$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckSDCardEncryptionEnabled(Lcom/android/settings/MainClearConfirm;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->checkSDCardEncryptionEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdecryptSDCardBeforeFactoryReset(Lcom/android/settings/MainClearConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->decryptSDCardBeforeFactoryReset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoSecMainClear(Lcom/android/settings/MainClearConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->doSecMainClear()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misPowerOffAllowedByMDM(Lcom/android/settings/MainClearConfirm;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->isPowerOffAllowedByMDM()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyUCS(Lcom/android/settings/MainClearConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->notifyUCS()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendAuditLog(Lcom/android/settings/MainClearConfirm;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/MainClearConfirm;->sendAuditLog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartMainClearModemReset(Lcom/android/settings/MainClearConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->startMainClearModemReset()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    .line 166
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/MainClearConfirm;->mSalesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/android/settings/MainClearConfirm;->mEraseSdCardId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/android/settings/MainClearConfirm;->mCanEraseExternalOnFuseSystem:Z

    .line 131
    iput v0, p0, Lcom/android/settings/MainClearConfirm;->mPreloadAppsRestoreOption:I

    .line 162
    iput-boolean v0, p0, Lcom/android/settings/MainClearConfirm;->mIsSamsungAccountConfirmed:Z

    .line 168
    new-instance v0, Lcom/android/settings/MainClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MainClearConfirm$1;-><init>(Lcom/android/settings/MainClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MainClearConfirm;->omadmReceiver:Landroid/content/BroadcastReceiver;

    .line 191
    new-instance v0, Lcom/android/settings/MainClearConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MainClearConfirm$2;-><init>(Lcom/android/settings/MainClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MainClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private StartPassword()V
    .locals 4

    .line 544
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    sget v1, Lcom/android/settings/R$string;->password:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->confirm_password:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/settings/MainClearConfirm;->queryPhonePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private checkReactivationLock()Z
    .locals 4

    .line 850
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportLMM(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "MainClearConfirm"

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 851
    sget-object p0, Lcom/android/settings/MainClearConfirm;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    move v1, v2

    .line 858
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LMM[getReqiredAuthFlag] in Check= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkReactivationLock() returns : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private checkSDCardEncryptionEnabled()Z
    .locals 3

    .line 779
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    .line 780
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object p0

    const-string v1, "sec.fle.encryption.status"

    const-string v2, ""

    .line 781
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 782
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    const-string v0, "mounted"

    .line 784
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "checking"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    or-int/2addr p0, v0

    if-eqz p0, :cond_1

    const-string p0, "encrypted"

    .line 785
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "encrypting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "decrypting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 790
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSDCardEncryptionEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainClearConfirm"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private clearRemovedPreloadApp()V
    .locals 1

    .line 866
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/sec_efs/preloaddeleted.lst"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private decryptSDCardBeforeFactoryReset()V
    .locals 3

    const-string v0, "MainClearConfirm"

    .line 824
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "fromWhere"

    .line 825
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "doMainClear() startActivity SDCard Decryption"

    .line 826
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3f2

    .line 827
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 829
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private doMainClear()V
    .locals 6

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/MainClearConfirm;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1239

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 362
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 367
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->isFactoryDataResetAllowedByMDM()Z

    move-result v0

    const-string v1, "MainClearConfirm"

    if-nez v0, :cond_1

    const-string p0, "doMainClear blocked by MDM "

    .line 368
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 376
    invoke-direct {p0, v0}, Lcom/android/settings/MainClearConfirm;->sendAuditLog(Ljava/lang/String;)V

    .line 384
    sget-boolean v2, Lcom/samsung/android/settings/Rune;->SUPPORT_CHECK_SA_PASSWORD_WHEN_FDR:Z

    if-eqz v2, :cond_3

    .line 385
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/MainClearConfirm;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/MainClearConfirm;->mIsSamsungAccountConfirmed:Z

    if-nez v2, :cond_3

    .line 387
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.osp.app.signin"

    const-string v2, "com.osp.app.signin.UserValidateCheck"

    .line 388
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MODE"

    const-string v2, "REMOTE_CONTROLS"

    .line 389
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->checkReactivationLock()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "RL_MODE"

    const-string v2, "UNLOCK"

    .line 391
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v1, "fromWhere"

    const-string v2, "MasterClearConfirm"

    .line 393
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "with"

    const-string v2, "SignOut"

    .line 394
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3ea

    .line 396
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 398
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void

    .line 404
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/MainClearConfirm;->mEraseSdCard:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 405
    iget-boolean v2, p0, Lcom/android/settings/MainClearConfirm;->mCanEraseExternalOnFuseSystem:Z

    if-eqz v2, :cond_4

    .line 407
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v4, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    iget-object v2, p0, Lcom/android/settings/MainClearConfirm;->mEraseSdCardId:Ljava/lang/String;

    const-string v4, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "from_factory_reset"

    .line 409
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEraseSdCardId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/MainClearConfirm;->mEraseSdCardId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x6f

    .line 412
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 419
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/MainClearConfirm;->mEraseEsims:Z

    if-eqz v2, :cond_5

    .line 421
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 422
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.telephonyui"

    const-string v3, "com.samsung.android.app.telephonyui.netsettings.ui.esim.ResetEsimActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v1, 0x70

    .line 423
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 425
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_1
    return-void

    :cond_5
    const-string v2, "doMainClear() send_OMADM_CLEAR"

    .line 431
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "true"

    if-eqz v2, :cond_7

    const-string v0, "hiddenmenu"

    .line 435
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHiddenMenu :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    .line 437
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 438
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 439
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->sendOMADMClear()V

    goto :goto_2

    :cond_6
    const-string v2, "Intent not coming from Hiddenmenu"

    .line 442
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 449
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 450
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->checkSDCardEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 451
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->decryptSDCardBeforeFactoryReset()V

    goto :goto_3

    :cond_9
    const-string v0, "doMainClear() startService MainClearModemReset"

    .line 454
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->startMainClearModemReset()V

    .line 459
    :cond_a
    :goto_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SupportPreInstallerSkipUserDeletedApp"

    .line 460
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 461
    iget v0, p0, Lcom/android/settings/MainClearConfirm;->mPreloadAppsRestoreOption:I

    if-eqz v0, :cond_c

    if-eq v0, v3, :cond_b

    goto :goto_4

    .line 467
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->saveRemovedPreloadApps()V

    goto :goto_4

    .line 463
    :cond_c
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->clearRemovedPreloadApp()V

    :cond_d
    :goto_4
    return-void
.end method

.method private doSecMainClear()V
    .locals 3

    const-string v0, "MainClearConfirm"

    const-string v1, "doSecMainClear start "

    .line 490
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    .line 492
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    .line 493
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isNoSIM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MainClearConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 497
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->StartPassword()V

    goto :goto_0

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->doMainClear()V

    goto :goto_0

    .line 503
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 504
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportHuxDeviceQualityStatistics"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.statistics.VZW_QUALITY_STATISTICS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "event_type"

    const-string v2, "Q024"

    .line 506
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 509
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->storeResetDate()V

    .line 511
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->doMainClear()V

    :goto_0
    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/android/settings/MainClearConfirm;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->execute_main_clear:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MainClearConfirm;->mFinalButton:Landroid/widget/Button;

    .line 614
    iget-object p0, p0, Lcom/android/settings/MainClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isFactoryDataResetAllowedByMDM()Z
    .locals 2

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v1, "isFactoryResetAllowed"

    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isPowerOffAllowedByMDM()Z
    .locals 3

    const-string/jumbo v0, "true"

    .line 332
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy"

    const-string v2, "isPowerOffAllowed"

    invoke-static {p0, v1, v2, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isSamsungAccountSignedIn(Landroid/content/Context;)Z
    .locals 0

    .line 836
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string p1, "com.osp.app.signin"

    .line 837
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 839
    array-length p0, p0

    const-string p1, "MainClearConfirm"

    if-lez p0, :cond_0

    const-string p0, "isHaveSA() - true"

    .line 840
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "isHaveSA() - false"

    .line 843
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onCreateView$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 657
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private notifyUCS()V
    .locals 2

    :try_start_0
    const-string p0, "com.samsung.ucs.ucsservice"

    .line 932
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x65

    const/4 v1, 0x0

    .line 934
    invoke-interface {p0, v1, v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private saveRemovedPreloadApps()V
    .locals 7

    const-string v0, "MainClearConfirm"

    .line 874
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs/preloadinstalled.lst"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 880
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 881
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 882
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 883
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 884
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 886
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 887
    instance-of v2, v3, Ljava/util/HashSet;

    if-eqz v2, :cond_0

    .line 888
    move-object v1, v3

    check-cast v1, Ljava/util/HashSet;

    .line 891
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 892
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 893
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preload installed packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 895
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is deleted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 900
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    .line 901
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/sec_efs/preloaddeleted.lst"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 903
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 904
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unable to create file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 910
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 911
    :try_start_2
    new-instance p0, Ljava/io/ObjectOutputStream;

    invoke-direct {p0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 912
    :try_start_3
    invoke-virtual {p0, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 919
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 921
    :goto_2
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_3

    :catch_3
    move-exception p0

    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_5

    :catch_4
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    .line 916
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_5

    .line 919
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_5
    if-eqz p0, :cond_a

    goto :goto_2

    :catch_5
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    .line 914
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_6

    .line 919
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    if-eqz p0, :cond_a

    goto :goto_2

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    if-eqz p0, :cond_8

    .line 921
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V

    .line 922
    :cond_8
    throw v0

    .line 876
    :cond_9
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "There isn\'t file : /efs/sec_efs/preloadinstalled.lst"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    move-exception p0

    .line 925
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_6
    return-void
.end method

.method private sendAuditLog(Ljava/lang/String;)V
    .locals 4

    const-string v0, "content://com.sec.knox.provider/AuditLog"

    .line 341
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 343
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x5

    .line 344
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "severity"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x2

    .line 345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "group"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "outcome"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 347
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "component"

    const-string v3, "FactoryReset"

    .line 348
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " User Interaction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private sendOMADMClear()V
    .locals 6

    const-string v0, "com.sec.omadmspr"

    const-string v1, "MainClearConfirm"

    const-string v2, "OMADM Clear Data inside send_OMADM_CLEAR"

    .line 796
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 801
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 802
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    :catch_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    if-eqz v3, :cond_0

    .line 810
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.sdm"

    .line 813
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v0, "com.samsung.syncservice.OMADM_CLEAR_DATA"

    .line 815
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "type"

    const-string v2, "RTN"

    .line 816
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 817
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 818
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setAccessibilityTitle()V
    .locals 4

    .line 702
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 703
    iget-object v1, p0, Lcom/android/settings/MainClearConfirm;->mContentView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->main_clear_confirm:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 705
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setVisibilitySmartSwitchDescription(Landroid/content/Context;)V
    .locals 2

    .line 714
    iget-boolean v0, p0, Lcom/android/settings/MainClearConfirm;->mEraseSdCard:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/MainClearConfirm;->mCanEraseExternalOnFuseSystem:Z

    if-eqz v0, :cond_0

    .line 715
    iget-object p0, p0, Lcom/android/settings/MainClearConfirm;->mContentView:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->main_clear_smartswitch_desc_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 716
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->supportSdcard()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 717
    iget-object p0, p0, Lcom/android/settings/MainClearConfirm;->mContentView:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->main_clear_smartswitch_desc_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 719
    :cond_1
    iget-object p0, p0, Lcom/android/settings/MainClearConfirm;->mContentView:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->main_clear_smartswitch_desc_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private startMainClearModemReset()V
    .locals 6

    .line 944
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 945
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/settings/general/MainClearModemReset;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "FACTORY"

    const/4 v2, 0x1

    .line 946
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 947
    iget-boolean v0, p0, Lcom/android/settings/MainClearConfirm;->mEraseSdCard:Z

    const-string v2, "WIPE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 948
    iget-boolean v0, p0, Lcom/android/settings/MainClearConfirm;->mEraseEsims:Z

    const-string v2, "WIPE_ESIMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "MainClearConfirm"

    const-string v2, "startMainClearModemReset()"

    .line 951
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "hiddenmenu"

    .line 955
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 956
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startMainClearModemReset(), isHiddenMenu :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v2, "Intent not coming from RTN_RESET->MainClear in MainClearConfirm"

    .line 959
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private storeResetDate()V
    .locals 4

    const-string p0, "/efs/sec_efs/LastResetDate.txt"

    .line 517
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 518
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 522
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 525
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    const/4 p0, 0x1

    const/4 v3, 0x0

    .line 526
    invoke-virtual {v2, p0, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 529
    :cond_0
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 530
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 532
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 536
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 538
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v1, :cond_2

    .line 536
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 538
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 540
    :cond_2
    :goto_3
    throw p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x43

    return p0
.end method

.method isDeviceStillBeingProvisioned()Z
    .locals 0

    .line 319
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method isOemUnlockedAllowed()Z
    .locals 1

    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "oem_lock"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/oemlock/OemLockManager;

    .line 314
    invoke-virtual {p0}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowed()Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 565
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 566
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult : requestCode : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " resultCode : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MainClearConfirm"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, -0x1

    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    .line 568
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    .line 569
    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-ne p2, p3, :cond_5

    .line 571
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->doMainClear()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_1

    if-ne p2, p3, :cond_5

    const/4 p1, 0x1

    .line 576
    iput-boolean p1, p0, Lcom/android/settings/MainClearConfirm;->mIsSamsungAccountConfirmed:Z

    .line 577
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->doMainClear()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x6f

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    if-ne p2, p3, :cond_5

    const-string p1, "Success to clear SD card."

    .line 581
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iput-boolean v2, p0, Lcom/android/settings/MainClearConfirm;->mEraseSdCard:Z

    .line 583
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->doMainClear()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x3f2

    if-ne p1, v1, :cond_3

    if-ne p2, p3, :cond_5

    const-string p1, "Success to Decrypt the SD Card."

    .line 589
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->doMainClear()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x70

    if-ne p1, v1, :cond_5

    if-ne p2, p3, :cond_4

    const-string p1, "Removed eSIM information"

    .line 597
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iput-boolean v2, p0, Lcom/android/settings/MainClearConfirm;->mEraseEsims:Z

    .line 599
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->doMainClear()V

    goto :goto_0

    :cond_4
    const-string p1, "eSIM profile deletion has been canceled."

    .line 601
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 734
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 736
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 737
    sget-object v0, Lcom/android/settings/MainClearConfirm;->mSalesCode:Ljava/lang/String;

    const-string v1, "SPR|BST|XAS|VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MainClearConfirm;->isSprFamily:Z

    .line 741
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/MainClearConfirm;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "can_erase_sd_on_fuse"

    .line 746
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MainClearConfirm;->mCanEraseExternalOnFuseSystem:Z

    const-string v0, "erase_sd"

    .line 747
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MainClearConfirm;->mEraseSdCard:Z

    const-string v0, "erase_esim"

    .line 748
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MainClearConfirm;->mEraseEsims:Z

    const-string v0, "erase_sd_id"

    .line 749
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainClearConfirm;->mEraseSdCardId:Ljava/lang/String;

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCanEraseExternalOnFuseSystem= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/MainClearConfirm;->mCanEraseExternalOnFuseSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainClearConfirm"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEraseSdCard= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/MainClearConfirm;->mEraseSdCard:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEraseSdCardId= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/MainClearConfirm;->mEraseSdCardId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Setting_SupportPreInstallerSkipUserDeletedApp"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "preload_apps_restore_option"

    .line 755
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/MainClearConfirm;->mPreloadAppsRestoreOption:I

    .line 756
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPreloadAppsRestoreOption= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/MainClearConfirm;->mPreloadAppsRestoreOption:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_1
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/MainClearConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 650
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    const-string v0, "no_factory_reset"

    .line 649
    invoke-static {p2, v0, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    .line 651
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 652
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 651
    invoke-static {p3, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 653
    sget p0, Lcom/android/settings/R$layout;->main_clear_disallowed_screen:I

    invoke-virtual {p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 655
    new-instance p1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    .line 656
    invoke-virtual {p1, v0, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/MainClearConfirm;)V

    .line 657
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 658
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 659
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 661
    :cond_1
    sget p2, Lcom/android/settings/R$layout;->sec_main_clear_confirm:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MainClearConfirm;->mContentView:Landroid/view/View;

    .line 663
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/MainClearConfirm;->setVisibilitySmartSwitchDescription(Landroid/content/Context;)V

    .line 668
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->establishFinalConfirmationState()V

    .line 669
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->setAccessibilityTitle()V

    .line 670
    iget-object p0, p0, Lcom/android/settings/MainClearConfirm;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 694
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    .line 695
    iget-boolean v0, p0, Lcom/android/settings/MainClearConfirm;->isSprFamily:Z

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/MainClearConfirm;->omadmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p0, "MainClearConfirm"

    const-string v0, "OMADM receiver unregistered"

    .line 697
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 676
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 677
    iget-object v0, p0, Lcom/android/settings/MainClearConfirm;->mFinalButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 679
    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm;->isFactoryDataResetAllowedByMDM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/settings/MainClearConfirm;->mFinalButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 684
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/MainClearConfirm;->isSprFamily:Z

    if-eqz v0, :cond_1

    .line 685
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.hiddenmenu.OMADM_CLEAR_DATA_DONE"

    .line 686
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/MainClearConfirm;->omadmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "MainClearConfirm"

    const-string v0, "OMADM receiver registered"

    .line 688
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected queryPhonePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 554
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.security.Password"

    .line 555
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ".title"

    .line 556
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ".subject"

    .line 557
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ".password"

    .line 558
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    invoke-virtual {p0, v0, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method setSubtitle()V
    .locals 1

    .line 726
    iget-boolean v0, p0, Lcom/android/settings/MainClearConfirm;->mEraseEsims:Z

    if-eqz v0, :cond_0

    .line 727
    iget-object p0, p0, Lcom/android/settings/MainClearConfirm;->mContentView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->sud_layout_description:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->main_clear_final_desc_esim:I

    .line 728
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method shouldWipePersistentDataBlock(Landroid/service/persistentdata/PersistentDataBlockManager;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MainClearConfirm;->isDeviceStillBeingProvisioned()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MainClearConfirm;->isOemUnlockedAllowed()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 293
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "device_policy"

    .line 294
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 297
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isFactoryResetProtectionPolicySupported()Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    .line 303
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object p1

    .line 304
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 305
    invoke-virtual {p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->isNotEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method
