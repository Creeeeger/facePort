.class public Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMoveConfirm.java"


# instance fields
.field private mApp:Landroid/content/pm/ApplicationInfo;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->onNavigateNext(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p0, "StorageWizardMoveConfirm"

    const-string p1, "Failed to confirm credentials"

    .line 170
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 55
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 59
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->storage_wizard_generic:I

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setContentView(I)V

    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 72
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 83
    sget v2, Lcom/android/settings/R$drawable;->ic_swap_horiz:I

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setIcon(I)V

    .line 87
    sget v2, Lcom/android/settings/R$string;->storage_wizard_move_confirm_title:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/CharSequence;

    aput-object p1, v4, v1

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setHeaderTextNoCaretStr(I[Ljava/lang/CharSequence;)V

    .line 89
    sget v2, Lcom/android/settings/R$string;->storage_wizard_move_confirm_body:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object p1, v4, v1

    aput-object v0, v4, v3

    const/4 p1, 0x2

    aput-object v0, v4, p1

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBodyTextNoCaretStr(I[Ljava/lang/CharSequence;)V

    .line 92
    sget p1, Lcom/android/settings/R$string;->move_app:I

    new-array v0, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setNextButtonText(I[Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBackButtonVisibility(I)V

    return-void

    .line 75
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 65
    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 5

    .line 114
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 117
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 118
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is currently locked; requesting unlock"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StorageWizardMoveConfirm"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget p1, Lcom/android/settings/R$string;->storage_wizard_move_unlock:I

    .line 122
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 121
    invoke-static {p1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 123
    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 p0, 0x64

    .line 125
    invoke-virtual {v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    iget p1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 128
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForceVerifyPath(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 129
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setAllowAnyUserId(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I

    move-result v0

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.content.pm.extra.MOVE_ID"

    .line 141
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TITLE"

    .line 142
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x24000000

    .line 145
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->startActivity(Landroid/content/Intent;)V

    .line 150
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 99
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "false"

    .line 102
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v2, "isSDCardMoveAllowed"

    .line 103
    invoke-static {p0, v1, v2, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
