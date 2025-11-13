.class public Lcom/samsung/android/settings/encryption/CryptSDCardSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public final GB:Ljava/math/BigDecimal;

.field public final MB:Ljava/math/BigDecimal;

.field public fromWhere:Ljava/lang/String;

.field public mContentView:Landroid/view/View;

.field public mDescriptionLayout:Landroid/widget/LinearLayout;

.field public mDescriptionLayoutExceptButton:Landroid/widget/LinearLayout;

.field public mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

.field public mDoEncrypt:Z

.field public mDoneButton:Landroid/widget/Button;

.field public final mHandler:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;

.field public mImgIconLock:Landroid/widget/ImageView;

.field public mIsDisabledByAdmin:Z

.field public mLeftButton:Landroid/widget/Button;

.field public mParent:Landroid/app/Activity;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mProgressLayout:Landroid/widget/RelativeLayout;

.field public mProgressStoarge:Landroid/widget/TextView;

.field public mProgressValue:I

.field public mRightButton:Landroid/widget/Button;

.field public mSse:Lcom/samsung/android/security/SemSdCardEncryption;

.field public mStorageValue:I

.field public final mSync:Ljava/lang/Object;

.field public mTextDesc:Landroid/widget/TextView;

.field public mTextEncMessages:Landroid/widget/TextView;

.field public serviceBusy:Z


# direct methods
.method public static -$$Nest$mfinishProgress(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finishProgress + "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    const-string v2, "CryptKeeperSDSettings"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    const-string v3, "100%"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    const-string/jumbo v1, "updateResultUI"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_1

    const-string/jumbo v0, "parent activity is null, cannot display UI, removing fragment"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v5, :cond_4

    const v5, 0x7f14205e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const v5, 0x7f142049

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v5}, Lcom/samsung/android/security/SemSdCardEncryption;->getLastError()I

    move-result v5

    if-ne v5, v3, :cond_6

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v5, :cond_5

    const v5, 0x7f14205f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f14204a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "disableButtonUI"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method public static -$$Nest$mupdateProgress(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateProgress + "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    const-string v2, "CryptKeeperSDSettings"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    iget v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140b09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140b07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v3, 0x7f14206d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    const v3, 0x7f14206b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mImgIconLock:Landroid/widget/ImageView;

    const v3, 0x7f080312

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v2, 0x7f142058

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    const v1, 0x7f142056

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mImgIconLock:Landroid/widget/ImageView;

    const v0, 0x7f080311

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$4;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-wide/16 v0, 0x400

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    const-wide/32 v0, 0x100000

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->MB:Ljava/math/BigDecimal;

    const-wide/32 v0, 0x40000000

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->GB:Ljava/math/BigDecimal;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayoutExceptButton:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/RelativeLayout;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->fromWhere:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mImgIconLock:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    iput v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    iput v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;-><init>(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;

    return-void
.end method


# virtual methods
.method public final doEncryptSDCard()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/16 v2, 0x1194

    const/16 v3, 0x1196

    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;->encryptStorage(Z)I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error SD card not mounted while encrypting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CryptKeeperSDSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->showAlert(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    :cond_1
    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1194

    return p0
.end method

.method public final initProgress()V
    .locals 2

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "initProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0d20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mImgIconLock:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0d1f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0d21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0bd1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v1, 0x7f14206d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    const v1, 0x7f14205d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v0, 0x7f142058

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_2
    return-void
.end method

.method public final isAdminApplied()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CryptKeeperSDSettings"

    const-string v0, "isAdminApplied : true"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

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

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->doEncryptSDCard()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    :goto_0
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string/jumbo p1, "onAttach"

    const-string v0, "CryptKeeperSDSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {p1, v1}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    if-nez p1, :cond_1

    new-instance p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;-><init>(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1, p1}, Lcom/samsung/android/security/SemSdCardEncryption;->registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "registerListener:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation$1()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation$1()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoneButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p2, 0x7f0d087b

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const-string p1, "CryptKeeperSDSettings"

    const-string/jumbo p2, "onCreateView"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p3, "fromWhere"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->fromWhere:Ljava/lang/String;

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const p3, 0x7f0a04d5

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const p3, 0x7f0a08aa

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const p3, 0x7f0a0cb6

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const p3, 0x7f0a055e

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoneButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const p3, 0x7f0a04d9

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const p3, 0x7f0a04da

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayoutExceptButton:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const p3, 0x7f0a0be0

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayoutExceptButton:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_2

    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayoutExceptButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060738

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "initialize Variables"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    iput-boolean p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public final onDetach()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregisterListener:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CryptKeeperSDSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;->unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "onResume"

    const-string v1, "CryptKeeperSDSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "unmounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isAdminApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SD card is unmounted, mount SD card"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0, v2}, Lcom/samsung/android/security/SemSdCardEncryption;->setMountSDcardToHelper(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->mountVolume()Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getPolicyChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;->setPolicyChanged(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    :cond_3
    return-void
.end method

.method public final restorePrefs()V
    .locals 11

    const-string v0, "CryptKeeperSDSettings"

    const-string/jumbo v1, "restorePrefs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CryptSDCardSettings started by user"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "adminStart"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Admin Policies is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    const-string v1, "Disabled by Admin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const-string/jumbo v1, "updatePrefUI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_3

    const-string/jumbo v1, "parent activity is null, cannot display UI, removing fragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto/16 :goto_6

    :cond_3
    const v4, 0x7f14206d

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Service is busy: Disabling UI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "disableButtonUI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v4, 0x7f0a0bd1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v4, 0x64

    if-ne v1, v4, :cond_5

    const-string v1, "already finish enc/dec"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v4}, Lcom/samsung/android/security/SemSdCardEncryption;->isSdCardEncryped()Z

    move-result v4

    const v5, 0x7f14205b

    const v6, 0x7f142048

    const-string v7, "\n\n"

    const/16 v8, 0x8

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v10, 0x7f142058

    invoke-virtual {v9, v10}, Landroid/app/Activity;->setTitle(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v9, v6}, Landroid/widget/Button;->setText(I)V

    const v9, 0x7f142051

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f142050

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f14204b

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->isSdCardEncryped()Z

    move-result v1

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f142060

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f142063

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->isSdCardEncryped()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string/jumbo v4, "removed"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "HiddenMount"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v4, 0x7f14205a

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const v4, 0x7f142057

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    const v4, 0x7f14206c

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updatePrefUI : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-static {v1, v4, v0}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getLastError()I

    move-result v0

    if-ne v0, v8, :cond_a

    const/16 v0, 0x1194

    const/16 v1, 0x25f1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v1, 0x7f142055

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_5

    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v1, 0x7f14207a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_5

    :cond_b
    if-nez v1, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v4, 0x7f142079

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_d

    const v4, 0x7f142076

    goto :goto_3

    :cond_d
    const v4, 0x7f142075

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    const v4, 0x7f142074

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    if-nez v1, :cond_e

    move v2, v3

    :cond_e
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_6

    :cond_10
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->requestFocus()Z

    :cond_11
    :goto_6
    return-void
.end method

.method public final runKeyguardConfirmation$1()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->doEncryptSDCard()V

    return v2

    :cond_0
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v3, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 p0, 0x37

    iput p0, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    const p0, 0x7f140afc

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v2, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p0

    return p0
.end method

.method public final showAlert(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v2, :cond_0

    const-string v2, "Encrypt Fail Case :"

    :goto_0
    invoke-static {v1, v2}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, "Decrypt Fail Case : "

    goto :goto_0

    :goto_1
    const-string v3, "CryptKeeperSDSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f142067

    const-wide/16 v4, 0xa

    const-wide/16 v6, 0x1

    const v8, 0x7f142052

    const/16 v9, 0x25f2

    const v10, 0x7f142066

    const/16 v11, 0x25f3

    const v12, 0x104000a

    const/16 v13, 0x1194

    const/4 v14, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const-string v1, "REMOVE_USERDATA_WARN_DIALOG"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d087c

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0d23

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v4, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v5, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isAdminApplied()Z

    move-result v5

    const-string/jumbo v8, "mounted"

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Admin Policy is Applied"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolUsedSize()J

    move-result-wide v4

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "statfs path: "

    invoke-static {v5, v4, v3}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v5}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4

    sub-long v10, v8, v4

    const-string/jumbo v12, "totalBytes: "

    const-string v13, " availableBytes: "

    invoke-static {v8, v9, v12, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v10

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x0

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "AlertDialog REMOVE_USERDATA_WARN_DIALOG - usedsize : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f142072

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_3
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v4, v5}, Ljava/math/BigDecimal;-><init>(J)V

    iget-object v4, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->GB:Ljava/math/BigDecimal;

    invoke-virtual {v6, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    const/4 v5, 0x6

    const/4 v7, 0x2

    if-gez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->MB:Ljava/math/BigDecimal;

    invoke-virtual {v6, v8, v7, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f140ba2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->GB:Ljava/math/BigDecimal;

    invoke-virtual {v6, v8, v7, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f140ba0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AlertDialog REMOVE_USERDATA_WARN_DIALOG - usedSizeText :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v5, 0x7f142071

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f142073

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$2;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$2;-><init>(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V

    const v3, 0x7f14101c

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const v3, 0x7f1408bf

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0600ce

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void

    :pswitch_1
    const-string v1, "AlertDialog warning - decrypt error"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13, v11, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f142053

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_2
    const-string v1, "AlertDialog warning - encrypt error"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13, v9, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_3
    iget-boolean v1, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v1, :cond_5

    move v8, v10

    :cond_5
    if-eqz v1, :cond_6

    const v1, 0x7f142068

    goto :goto_5

    :cond_6
    const v1, 0x7f142054

    :goto_5
    const-string v2, "AlertDialog warning - mount fail"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    move v9, v11

    :goto_6
    const-wide/16 v2, 0x3

    invoke-static {v13, v9, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_4
    const-string v1, "AlertDialog - File opening fail"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    move v9, v11

    :goto_7
    const-wide/16 v3, 0x2

    invoke-static {v13, v9, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_5
    iget-object v1, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getAdditionalSpaceRequired()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v1, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v15, v1, v4

    if-gez v15, :cond_9

    move-wide v1, v4

    :cond_9
    iget-boolean v4, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v4, :cond_a

    move v8, v10

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AlertDialog storage warning - need over the "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v3, :cond_b

    goto :goto_8

    :cond_b
    move v9, v11

    :goto_8
    invoke-static {v13, v9, v6, v7}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.2f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f142069

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

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
