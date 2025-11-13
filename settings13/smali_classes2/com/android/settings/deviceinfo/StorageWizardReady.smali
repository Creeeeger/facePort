.class public Lcom/android/settings/deviceinfo/StorageWizardReady;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardReady.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez p1, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 45
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->storage_wizard_generic:I

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setContentView(I)V

    .line 49
    sget p1, Lcom/android/settings/R$string;->storage_wizard_ready_title:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setHeaderTextNoCaretStr(I[Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v1, "migrate_skip"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    sget p1, Lcom/android/settings/R$string;->storage_wizard_ready_v2_internal_body:I

    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    .line 56
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBodyTextNoCaretStr(I[Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_1
    sget p1, Lcom/android/settings/R$string;->storage_wizard_ready_v2_internal_moved_body:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    .line 63
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBodyTextNoCaretStr(I[Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :cond_2
    sget p1, Lcom/android/settings/R$string;->storage_wizard_ready_v2_external_body:I

    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    .line 71
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBodyTextNoCaretStr(I[Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    sget p1, Lcom/android/settings/R$string;->sec_common_done:I

    new-array v1, v3, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setNextButtonText(I[Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBackButtonVisibility(I)V

    const-string p1, "device_policy"

    .line 87
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 88
    new-instance v1, Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    .line 90
    invoke-virtual {p1, v2}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    move p1, v3

    .line 91
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->isSdCardEncryped()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v3

    .line 92
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAdminPolicyApplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / isSdCardEncrypted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StorageWizardReady"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    if-nez v0, :cond_5

    .line 95
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x420000

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to start intent activity"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 0

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method
