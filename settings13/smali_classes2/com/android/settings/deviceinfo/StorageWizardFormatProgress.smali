.class public Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SilentObserver;,
        Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;
    }
.end annotation


# instance fields
.field private mFormatPrivate:Z

.field private mFromFactoryReset:Z

.field private mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFormatPrivate(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 280
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x6f

    if-ne p1, p2, :cond_0

    .line 282
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 p2, -0x1

    .line 283
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 284
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 58
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez p1, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 62
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->storage_wizard_progress:I

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setContentView(I)V

    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setKeepScreenOn(Z)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_factory_reset"

    const/4 v2, 0x0

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFromFactoryReset:Z

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "format_private"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    .line 75
    sget v0, Lcom/android/settings/R$string;->storage_wizard_format_progress_title:I

    new-array v1, p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setHeaderTextNoCaretStr(I[Ljava/lang/CharSequence;)V

    .line 76
    sget v0, Lcom/android/settings/R$string;->storage_wizard_format_progress_body:I

    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBodyTextNoCaretStr(I[Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBackButtonVisibility(I)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setNextButtonVisibility(I)V

    .line 81
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    if-nez p1, :cond_1

    .line 83
    new-instance p1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    .line 84
    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->setActivity(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V

    .line 85
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    new-array p1, v2, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->setActivity(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V

    :goto_0
    return-void
.end method

.method public onFormatFinished()V
    .locals 3

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "format_slow"

    const/4 v2, 0x0

    .line 251
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFromFactoryReset:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "from_factory_reset"

    .line 254
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x6f

    .line 255
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->startActivity(Landroid/content/Intent;)V

    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    :goto_0
    return-void
.end method

.method public onFormatFinishedSlow()V
    .locals 3

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "format_slow"

    const/4 v2, 0x1

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFromFactoryReset:Z

    if-eqz v1, :cond_0

    const-string v1, "from_factory_reset"

    .line 268
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x6f

    .line 269
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->startActivity(Landroid/content/Intent;)V

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    :goto_0
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    return-object p0
.end method
