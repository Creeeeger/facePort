.class public Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "StorageWizardFormatConfirm.java"


# static fields
.field private static mCallerActivity:Landroid/app/Activity;


# direct methods
.method public static synthetic $r8$lambda$LVxtShcElF4snbCbWAzOsUjgQuE(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->lambda$onCreateDialog$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onCreateDialog$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 121
    new-instance p4, Landroid/content/Intent;

    const-class p5, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-direct {p4, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p5, "android.os.storage.extra.DISK_ID"

    .line 122
    invoke-virtual {p4, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "format_forget_uuid"

    .line 123
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "format_private"

    .line 124
    invoke-virtual {p4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.os.storage.extra.DISK_ID"

    .line 70
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "format_forget_uuid"

    .line 71
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "format_private"

    .line 72
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    new-instance p1, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;-><init>()V

    .line 75
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "format_warning"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static showPrivate(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 64
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static showPublic(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2

    .line 50
    instance-of v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    sput-object p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mCallerActivity:Landroid/app/Activity;

    goto :goto_0

    .line 53
    :cond_0
    sput-object v1, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mCallerActivity:Landroid/app/Activity;

    :goto_0
    const/4 v0, 0x0

    .line 56
    invoke-static {p0, p1, v1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x55f

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.os.storage.extra.DISK_ID"

    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format_forget_uuid"

    .line 90
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format_private"

    const/4 v4, 0x0

    .line 91
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 93
    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 94
    invoke-virtual {v3, v1}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v3

    .line 96
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    sget v6, Lcom/android/settings/R$string;->storage_wizard_format_confirm_v2_title:I

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    .line 102
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 101
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 108
    sget v6, Lcom/android/settings/R$string;->storage_wizard_format_confirm_v2_body:I

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 109
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 110
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 108
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v6, 0x1040000

    const/4 v8, 0x0

    .line 113
    invoke-virtual {v5, v6, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 117
    sget v6, Lcom/android/settings/R$string;->storage_wizard_format_confirm_v2_action:I

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v6, v7, [Ljava/lang/Object;

    .line 119
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    .line 117
    invoke-static {p0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v1, v2, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, p0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 128
    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 135
    sget-object p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mCallerActivity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x0

    .line 137
    sput-object p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mCallerActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method
