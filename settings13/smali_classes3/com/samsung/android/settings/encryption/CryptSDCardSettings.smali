.class public Lcom/samsung/android/settings/encryption/CryptSDCardSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CryptSDCardSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final GB:Ljava/math/BigDecimal;

.field private final KB:Ljava/math/BigDecimal;

.field private final MB:Ljava/math/BigDecimal;

.field private fromWhere:Ljava/lang/String;

.field private mContentView:Landroid/view/View;

.field private mDescriptionLayout:Landroid/widget/LinearLayout;

.field private mDescriptionLayoutExceptButton:Landroid/widget/LinearLayout;

.field private mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

.field private mDoEncrypt:Z

.field private mDoneButton:Landroid/widget/Button;

.field private mEncryptedState:Z

.field private mHandler:Landroid/os/Handler;

.field private mImgIconLock:Landroid/widget/ImageView;

.field private mIsDisabledByAdmin:Z

.field private mLeftButton:Landroid/widget/Button;

.field private mParent:Landroid/app/Activity;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressLayout:Landroid/widget/RelativeLayout;

.field private mProgressStoarge:Landroid/widget/TextView;

.field private mProgressValue:I

.field private mRightButton:Landroid/widget/Button;

.field private mSse:Lcom/samsung/android/security/SemSdCardEncryption;

.field private mStartedByAdmin:Z

.field private mStartedByIntent:Z

.field private mStorageValue:I

.field private mSync:Ljava/lang/Object;

.field private mTextDesc:Landroid/widget/TextView;

.field private mTextEncMessages:Landroid/widget/TextView;

.field private serviceBusy:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetfromWhere(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->fromWhere:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDoEncrypt(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParent(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSse(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageValue(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSync(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetserviceBusy(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDoEncrypt(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProgressValue(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStorageValue(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckProgress(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->checkProgress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishProgress(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->finishProgress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunKeyguardConfirmation(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateProgress(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->updateProgress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smisSupportBlockEncryption()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isSupportBlockEncryption()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 896
    new-instance v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-wide/16 v0, 0x400

    .line 82
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->KB:Ljava/math/BigDecimal;

    const-wide/32 v0, 0x100000

    .line 83
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->MB:Ljava/math/BigDecimal;

    const-wide/32 v0, 0x40000000

    .line 84
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->GB:Ljava/math/BigDecimal;

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    .line 92
    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    .line 93
    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayoutExceptButton:Landroid/widget/LinearLayout;

    .line 94
    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/RelativeLayout;

    const-string v1, ""

    .line 103
    iput-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->fromWhere:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    .line 106
    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mImgIconLock:Landroid/widget/ImageView;

    .line 107
    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    .line 108
    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    .line 109
    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 110
    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 112
    iput v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    .line 113
    iput v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;-><init>(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkProgress()V
    .locals 3

    .line 713
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getLastError()I

    move-result v0

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkProgress LastError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Encrypted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CryptKeeperSDSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 720
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 723
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    .line 729
    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    .line 726
    :cond_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    .line 717
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    :goto_0
    return-void
.end method

.method private disableButtonUI()V
    .locals 2

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "disableButtonUI"

    .line 642
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 644
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private doEncryptSDCard()V
    .locals 4

    const/4 v0, 0x1

    .line 881
    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 883
    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getMetricsCategory()I

    move-result v0

    .line 884
    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x1196

    .line 883
    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 885
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 887
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 888
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;->encryptStorage(Z)I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_1

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error SD card not mounted while encrypting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CryptKeeperSDSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 891
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    const/4 v0, 0x0

    .line 892
    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    :cond_1
    return-void
.end method

.method private enableAllUI()V
    .locals 3

    .line 636
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 638
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 639
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private finishProgress()V
    .locals 3

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishProgress + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CryptKeeperSDSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 700
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 702
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    const/4 v0, 0x0

    .line 703
    iput v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    .line 705
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 706
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 707
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    const-string v2, "100%"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 709
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->updateResultUI()V

    return-void
.end method

.method private initProgress()V
    .locals 2

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "initProgress"

    .line 647
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 649
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 651
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sdcard_enc_decr_lock_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mImgIconLock:Landroid/widget/ImageView;

    .line 653
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sdcard_enc_confirm_message_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    .line 654
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sdcard_enc_progress_storage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    .line 655
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 656
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    sget v1, Lcom/android/settings/R$string;->sdcard_encrypt_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 657
    invoke-static {}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isSupportBlockEncryption()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 658
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mImgIconLock:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->ic_3_encrypting:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 659
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->sdcard_encrypt_progress:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 661
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->sdcard_encrypt_checking:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 662
    iget-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-nez v0, :cond_3

    .line 663
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->sdcard_decrypt_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private initVariables()V
    .locals 2

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "initialize Variables"

    .line 625
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 627
    iput v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    .line 628
    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    .line 629
    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mEncryptedState:Z

    .line 630
    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    .line 632
    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    .line 633
    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    return-void
.end method

.method private isAdminApplied()Z
    .locals 1

    .line 358
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CryptKeeperSDSettings"

    const-string v0, "isAdminApplied : true"

    .line 362
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isEncryptionApplied()Z
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    .line 415
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isSdCardEncryped()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isServiceBusy()Z
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    .line 411
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSupportBlockEncryption()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private restorePrefs()V
    .locals 6

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "restorePrefs"

    .line 370
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CryptSDCardSettings started by user"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 373
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    .line 374
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "adminStart"

    .line 383
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    iput-boolean v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    const-string v2, "1"

    .line 385
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 386
    iput-boolean v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    goto :goto_0

    .line 389
    :cond_0
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    :cond_1
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    .line 398
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Admin Policies is true"

    .line 400
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iput-boolean v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    const-string v1, "Disabled by Admin"

    .line 402
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-nez v0, :cond_4

    .line 405
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->enableAllUI()V

    .line 406
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->updatePrefUI()V

    :cond_4
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4

    .line 607
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 608
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 611
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 613
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->doEncryptSDCard()V

    return v2

    .line 617
    :cond_0
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v3, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 618
    invoke-virtual {v1, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->crypt_keeper_encrypt_title:I

    .line 619
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 620
    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 622
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p0

    return p0
.end method

.method private updatePrefUI()V
    .locals 9

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "updatePrefUI"

    .line 424
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    const-string v1, "parent activity is null, cannot display UI, removing fragment"

    .line 426
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 428
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void

    .line 431
    :cond_0
    sget v2, Lcom/android/settings/R$string;->sdcard_encrypt_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 432
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Service is busy: Disabling UI"

    .line 435
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->disableButtonUI()V

    .line 438
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    goto :goto_0

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->progress_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    const-string v1, "already finish enc/dec"

    .line 442
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 449
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 451
    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->isSdCardEncryped()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mEncryptedState:Z

    const-string v3, "\n\n"

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v2, :cond_6

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    invoke-static {}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isSupportBlockEncryption()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 455
    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->fromWhere:Ljava/lang/String;

    const-string v7, "MainClearConfirm"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 456
    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    sget v7, Lcom/android/settings/R$string;->common_continue:I

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(I)V

    .line 457
    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    sget v7, Lcom/android/settings/R$string;->sdcard_encrypt_title_from_master_confirm_block:I

    invoke-virtual {v3, v7}, Landroid/app/Activity;->setTitle(I)V

    .line 458
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lcom/android/settings/R$string;->sdcard_decrypt_description_encrypted_from_master_confirm_tablet:I

    goto :goto_1

    :cond_3
    sget v3, Lcom/android/settings/R$string;->sdcard_decrypt_description_encrypted_from_master_confirm:I

    :goto_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 460
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 461
    sget v3, Lcom/android/settings/R$string;->sdcard_decrypt_description_encrypted:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 464
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    sget v8, Lcom/android/settings/R$string;->sdcard_decrypt_title:I

    invoke-virtual {v7, v8}, Landroid/app/Activity;->setTitle(I)V

    .line 465
    iget-object v7, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    sget v8, Lcom/android/settings/R$string;->sdcard_decrypt_button:I

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 466
    sget v7, Lcom/android/settings/R$string;->sdcard_decrypt_description_tap_button_decrypt:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    sget v7, Lcom/android/settings/R$string;->sdcard_decrypt_description_take_long_time_warning:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    sget v3, Lcom/android/settings/R$string;->sdcard_decrypt_description_cant_use_sdcard_during_decrypt:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v1

    if-ne v1, v4, :cond_a

    .line 475
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 478
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    invoke-static {}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isSupportBlockEncryption()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 480
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_7

    sget v3, Lcom/android/settings/R$string;->sdcard_encrypt_description_encrypting_tablet:I

    goto :goto_3

    :cond_7
    sget v3, Lcom/android/settings/R$string;->sdcard_encrypt_description_encrypting:I

    :goto_3
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 482
    :cond_8
    sget v7, Lcom/android/settings/R$string;->sdcard_encrypt_description:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    sget v3, Lcom/android/settings/R$string;->sdcard_encrypt_description_take_long_time_warning:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-static {}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isSupportBlockEncryption()Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lcom/android/settings/R$string;->sdcard_encrypt_button_block:I

    goto :goto_5

    :cond_9
    sget v2, Lcom/android/settings/R$string;->sdcard_encrypt_button:I

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 489
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 491
    :cond_a
    :goto_6
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 493
    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-eqz v1, :cond_b

    .line 494
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 495
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 498
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 500
    invoke-static {}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isSupportBlockEncryption()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_7

    :cond_c
    const-string v2, "removed"

    .line 515
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "HiddenMount"

    .line 517
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-nez v1, :cond_d

    .line 518
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->sdcard_enc_dec_select:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 519
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    sget v2, Lcom/android/settings/R$string;->sdcard_decrypt_select_button:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 520
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    sget v2, Lcom/android/settings/R$string;->sdcard_encrypt_select_button:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePrefUI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 526
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 528
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getLastError()I

    move-result v0

    if-ne v0, v5, :cond_e

    .line 529
    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x25f1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 530
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->sdcard_decrypt_error_otherdevice:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 531
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->sdcard_decrypt_button:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 534
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_a

    .line 535
    :cond_e
    iget-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-eqz v0, :cond_13

    .line 536
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->sdcard_policy_need_encrypt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 537
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_a

    :cond_f
    :goto_7
    if-nez v1, :cond_10

    .line 504
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->sdcard_not_inserted:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 505
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    sget v2, Lcom/android/settings/R$string;->sdcard_encrypt_button:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_9

    .line 508
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_11

    sget v2, Lcom/android/settings/R$string;->sdcard_mount_failed_block_tablet:I

    goto :goto_8

    :cond_11
    sget v2, Lcom/android/settings/R$string;->sdcard_mount_failed_block:I

    :goto_8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 509
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    sget v2, Lcom/android/settings/R$string;->sdcard_format_sd_card:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 512
    :goto_9
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    if-nez v1, :cond_12

    move v4, v6

    :cond_12
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 541
    :cond_13
    :goto_a
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 542
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_b

    .line 544
    :cond_14
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->requestFocus()Z

    :goto_b
    return-void
.end method

.method private updateProgress()V
    .locals 5

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateProgress + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CryptKeeperSDSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 670
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 672
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 673
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto/16 :goto_0

    .line 675
    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 676
    iget v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    iget v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 678
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 679
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->crypt_keeper_setup_description_vzw:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 680
    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->crypt_keeper_setup_description_dec_vzw:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 682
    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    sget v3, Lcom/android/settings/R$string;->sdcard_encrypt_title:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 683
    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    sget v3, Lcom/android/settings/R$string;->sdcard_encrypt_progress:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 684
    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mImgIconLock:Landroid/widget/ImageView;

    sget v3, Lcom/android/settings/R$drawable;->ic_3_encrypting:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 686
    iget-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v2, :cond_2

    .line 687
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->sdcard_decrypt_title:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 690
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->sdcard_decrypt_progress:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 692
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mImgIconLock:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->ic_3_decrypting:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updateResultUI()V
    .locals 6

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "updateResultUI"

    .line 548
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    const-string v1, "parent activity is null, cannot display UI, removing fragment"

    .line 550
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 552
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 558
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    iget-boolean v4, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v4, :cond_3

    .line 562
    sget v4, Lcom/android/settings/R$string;->sdcard_encrypt_complete:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 564
    :cond_3
    sget v4, Lcom/android/settings/R$string;->sdcard_decrypt_complete:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v4}, Lcom/samsung/android/security/SemSdCardEncryption;->getLastError()I

    move-result v4

    if-ne v4, v2, :cond_5

    const-string v4, "\n\n"

    .line 567
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-boolean v4, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v4, :cond_4

    .line 569
    sget v4, Lcom/android/settings/R$string;->sdcard_encrypt_complete_page:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 571
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/android/settings/R$string;->sdcard_decrypt_complete_page:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 577
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->disableButtonUI()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1194

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 581
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 582
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x37

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 595
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->doEncryptSDCard()V

    goto :goto_0

    .line 597
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 217
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 218
    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string p1, "CryptKeeperSDSettings"

    const-string v0, "onAttach"

    .line 219
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    if-nez v0, :cond_1

    .line 224
    new-instance v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;-><init>(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    .line 225
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1, v0}, Lcom/samsung/android/security/SemSdCardEncryption;->registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 354
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const/16 v1, 0x37

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 311
    iput-boolean p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    .line 312
    invoke-static {}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isSupportBlockEncryption()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CryptKeeperSDSettings"

    const-string v0, "MainClearConfirm Case , Device will be Reset to Factory Default !!!"

    .line 313
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "sec.fle.encryption.status"

    const-string v0, "decrypted"

    .line 314
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, -0x1

    .line 316
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_2

    .line 319
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation(I)Z

    goto/16 :goto_2

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    .line 323
    iput-boolean p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    .line 324
    invoke-static {}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isSupportBlockEncryption()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 325
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {p1}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-static {}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isSupportBlockEncryption()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    const-string v0, "unmountable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 329
    new-instance p1, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 331
    invoke-virtual {p1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 335
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 336
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->showPublic(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x6

    .line 338
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_2

    .line 340
    :cond_5
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation(I)Z

    goto :goto_2

    .line 342
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoneButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    .line 343
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 344
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    if-lez p1, :cond_7

    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_2

    .line 347
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_8
    :goto_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 240
    sget p2, Lcom/android/settings/R$layout;->sec_crypt_keeper_settings_sd:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const-string p1, "CryptKeeperSDSettings"

    const-string p2, "onCreateView"

    .line 241
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "fromWhere"

    .line 249
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->fromWhere:Ljava/lang/String;

    .line 252
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    .line 253
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->left_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    .line 254
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->right_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    .line 256
    invoke-static {}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isSupportBlockEncryption()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->reset_button_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 258
    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p1, p3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 261
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->done_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoneButton:Landroid/widget/Button;

    .line 262
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->description_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    .line 263
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->description_layout_exceptbutton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayoutExceptButton:Landroid/widget/LinearLayout;

    .line 264
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->progress_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/RelativeLayout;

    .line 265
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayoutExceptButton:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    const/16 p2, 0xf

    .line 266
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 267
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayoutExceptButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 269
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->initVariables()V

    .line 273
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public onDetach()V
    .locals 2

    .line 231
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CryptKeeperSDSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;->unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V

    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 297
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 299
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 277
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "onResume"

    .line 278
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isSupportBlockEncryption()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    const-string v3, "unmounted"

    .line 281
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isAdminApplied()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SD card is unmounted, mount SD card"

    .line 282
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0, v2}, Lcom/samsung/android/security/SemSdCardEncryption;->setMountSDcardToHelper(Z)V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->mountVolume()Z

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getPolicyChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;->setPolicyChanged(Z)V

    .line 290
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    .line 291
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isServiceBusy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    iput-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    :cond_2
    return-void
.end method

.method public showAlert(I)Landroid/app/Dialog;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 736
    iget-boolean v2, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encrypt Fail Case :"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decrypt Fail Case : "

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CryptKeeperSDSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0xa

    const/4 v2, 0x2

    const/4 v8, 0x1

    const/16 v9, 0x25f3

    const/16 v10, 0x25f2

    const v11, 0x104000a

    const/4 v12, 0x0

    packed-switch v1, :pswitch_data_0

    .line 877
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const-string v1, "REMOVE_USERDATA_WARN_DIALOG"

    .line 812
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v6, Lcom/android/settings/R$layout;->sec_crypt_keeper_settings_sd_warning_dialog:I

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 814
    sget v6, Lcom/android/settings/R$id;->sdcard_enc_warning_dialog_content:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-wide/16 v9, 0x0

    .line 816
    new-instance v7, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v11, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v7, v11}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    .line 820
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isAdminApplied()Z

    move-result v11

    const-string v13, "mounted"

    if-eqz v11, :cond_1

    invoke-virtual {v7}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v9, "Admin Policy is Applied"

    .line 823
    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {v7}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolUsedSize()J

    move-result-wide v9

    goto :goto_1

    .line 826
    :cond_1
    invoke-virtual {v7}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v7

    .line 827
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "statfs path: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v11, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v11}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v11

    if-eqz v7, :cond_2

    if-eqz v11, :cond_2

    .line 829
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 830
    new-instance v9, Landroid/os/StatFs;

    invoke-direct {v9, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v9}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v10

    .line 832
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v13

    sub-long v15, v10, v13

    .line 834
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "totalBytes: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " availableBytes: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v9, v15

    .line 838
    :cond_2
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AlertDialog REMOVE_USERDATA_WARN_DIALOG - usedsize : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v4, v9, v4

    if-gez v4, :cond_3

    .line 840
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sdcard_encrypt_warning_description_invalid:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 843
    :cond_3
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v9, v10}, Ljava/math/BigDecimal;-><init>(J)V

    .line 844
    iget-object v5, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->GB:Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    const/4 v7, 0x6

    if-gez v5, :cond_4

    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->MB:Ljava/math/BigDecimal;

    invoke-virtual {v4, v9, v2, v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$string;->data_usage_display_mb:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 848
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->GB:Ljava/math/BigDecimal;

    invoke-virtual {v4, v9, v2, v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$string;->data_usage_display_gb:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 851
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlertDialog REMOVE_USERDATA_WARN_DIALOG - usedSizeText :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->sdcard_encrypt_warning_description:I

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v12

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    :goto_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 856
    sget v3, Lcom/android/settings/R$string;->sdcard_encrypt_warning_title:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 857
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 858
    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 859
    sget v1, Lcom/android/settings/R$string;->format:I

    new-instance v3, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$2;

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$2;-><init>(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 866
    sget v1, Lcom/android/settings/R$string;->cancel:I

    new-instance v3, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$3;

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$3;-><init>(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 870
    iget-object v0, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 871
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 872
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const/4 v2, -0x1

    .line 873
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 874
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->button_format_wanning_dialog_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-object v1

    .line 799
    :pswitch_1
    sget v1, Lcom/android/settings/R$string;->sdcard_decrypt_err_title:I

    .line 800
    sget v2, Lcom/android/settings/R$string;->sdcard_decrypt_error:I

    const-string v4, "AlertDialog warning - decrypt error"

    .line 801
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getMetricsCategory()I

    move-result v3

    invoke-static {v3, v9, v6, v7}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 804
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 805
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 806
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 807
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 808
    invoke-virtual {v1, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 809
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 786
    :pswitch_2
    sget v1, Lcom/android/settings/R$string;->sdcard_encrypt_err_title:I

    .line 787
    sget v2, Lcom/android/settings/R$string;->sdcard_encrypt_error:I

    const-string v4, "AlertDialog warning - encrypt error"

    .line 788
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getMetricsCategory()I

    move-result v3

    invoke-static {v3, v10, v6, v7}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 791
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 792
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 793
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 794
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 795
    invoke-virtual {v1, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 772
    :pswitch_3
    iget-boolean v1, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v1, :cond_5

    sget v2, Lcom/android/settings/R$string;->sdcard_encrypt_err_title:I

    goto :goto_4

    :cond_5
    sget v2, Lcom/android/settings/R$string;->sdcard_decrypt_err_title:I

    :goto_4
    if-eqz v1, :cond_6

    .line 773
    sget v1, Lcom/android/settings/R$string;->sdcard_encrypt_error_mount:I

    goto :goto_5

    :cond_6
    sget v1, Lcom/android/settings/R$string;->sdcard_decrypt_error_mount:I

    :goto_5
    const-string v4, "AlertDialog warning - mount fail"

    .line 774
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getMetricsCategory()I

    move-result v3

    .line 776
    iget-boolean v4, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v4, :cond_7

    move v9, v10

    :cond_7
    const-wide/16 v4, 0x3

    .line 775
    invoke-static {v3, v9, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 778
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 779
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 780
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 781
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 782
    invoke-virtual {v1, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 758
    :pswitch_4
    sget v1, Lcom/android/settings/R$string;->sdcard_encrypt_err_title:I

    .line 759
    sget v2, Lcom/android/settings/R$string;->sdcard_encrypt_error:I

    const-string v4, "AlertDialog - File opening fail"

    .line 760
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getMetricsCategory()I

    move-result v3

    .line 762
    iget-boolean v4, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v4, :cond_8

    move v9, v10

    :cond_8
    const-wide/16 v4, 0x2

    .line 761
    invoke-static {v3, v9, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 764
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 765
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 766
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 767
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 768
    invoke-virtual {v1, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 739
    :pswitch_5
    iget-object v1, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getAdditionalSpaceRequired()I

    move-result v1

    int-to-double v6, v1

    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    div-double/2addr v6, v13

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v6, v13

    if-gez v1, :cond_9

    move-wide v6, v13

    .line 744
    :cond_9
    iget-boolean v1, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v1, :cond_a

    sget v1, Lcom/android/settings/R$string;->sdcard_encrypt_err_title:I

    goto :goto_6

    :cond_a
    sget v1, Lcom/android/settings/R$string;->sdcard_decrypt_err_title:I

    .line 745
    :goto_6
    sget v13, Lcom/android/settings/R$string;->sdcard_encrypt_error_storage:I

    .line 746
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AlertDialog storage warning - need over the "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v15, "MB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getMetricsCategory()I

    move-result v3

    .line 748
    iget-boolean v14, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v14, :cond_b

    move v9, v10

    .line 747
    :cond_b
    invoke-static {v3, v9, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 750
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 751
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    new-array v3, v8, [Ljava/lang/Object;

    .line 752
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v12

    const-string v4, "%.2f"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    aput-object v15, v2, v8

    invoke-virtual {v0, v13, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 753
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 754
    invoke-virtual {v1, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 755
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
