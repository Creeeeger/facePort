.class public Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "StorageSDCardEncryptionWarnDialog.java"


# static fields
.field private static mSDCardEncryptionWarnDialog:Landroid/app/AlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVolume(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;)Landroid/os/storage/VolumeInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private static isSupportBlockEncryption()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private showProceedDialog()V
    .locals 3

    .line 69
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mSDCardEncryptionWarnDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 72
    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mSDCardEncryptionWarnDialog:Landroid/app/AlertDialog;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    const-string v2, "\n\n"

    if-eqz v1, :cond_1

    .line 75
    sget v1, Lcom/android/settings/R$string;->sec_sd_card_encryption_warn_dialog_description_tablet_1:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    sget v1, Lcom/android/settings/R$string;->sec_sd_card_encryption_warn_dialog_description_tablet_2:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->isSupportBlockEncryption()Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    sget v1, Lcom/android/settings/R$string;->sec_sd_card_encryption_warn_dialog_description_1:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_2
    sget v1, Lcom/android/settings/R$string;->sec_sd_card_encryption_warn_dialog_description_2:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 88
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 89
    sget v2, Lcom/android/settings/R$string;->sec_sd_card_encryption_warn_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 91
    sget v0, Lcom/android/settings/R$string;->sec_sd_card_encryption_warn_dialog_unmount:I

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;-><init>(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$2;-><init>(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    sget v0, Lcom/android/settings/R$string;->cancel:I

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$3;-><init>(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->isSupportBlockEncryption()Z

    move-result v0

    if-nez v0, :cond_3

    .line 114
    sget v0, Lcom/android/settings/R$string;->sec_sd_card_encryption_warn_dialog_decrypt:I

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$4;-><init>(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    :cond_3
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mSDCardEncryptionWarnDialog:Landroid/app/AlertDialog;

    .line 125
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    iput-object p0, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mContext:Landroid/content/Context;

    .line 54
    const-class p1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageSettings"

    if-nez v0, :cond_0

    const-string p0, "EXTRA_VOLUME_ID is null"

    .line 57
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 60
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz p1, :cond_1

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->showProceedDialog()V

    goto :goto_0

    :cond_1
    const-string p0, "VolumeInfo ID is null"

    .line 64
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
