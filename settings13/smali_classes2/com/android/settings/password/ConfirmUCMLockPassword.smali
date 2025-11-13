.class public Lcom/android/settings/password/ConfirmUCMLockPassword;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmUCMLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;,
        Lcom/android/settings/password/ConfirmUCMLockPassword$InternalActivity;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static mCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

.field private static mFromPersonalPage:Z

.field private static mFromPrivateBox:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ConfirmUCMLockPassword;->DBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmCurrentPassword()Lcom/android/internal/widget/LockscreenCredential;
    .locals 1

    sget-object v0, Lcom/android/settings/password/ConfirmUCMLockPassword;->mCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 62
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/password/ConfirmUCMLockPassword;->DBG:Z

    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Lcom/android/settings/password/ConfirmUCMLockPassword;->mFromPersonalPage:Z

    .line 68
    sput-boolean v0, Lcom/android/settings/password/ConfirmUCMLockPassword;->mFromPrivateBox:Z

    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/android/settings/password/ConfirmUCMLockPassword;->mCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 74
    const-class p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":android:no_headers"

    const/4 v1, 0x1

    .line 75
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 81
    const-class p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 94
    sget-boolean v0, Lcom/android/settings/password/ConfirmUCMLockPassword;->DBG:Z

    const-string v1, "ConfirmUCMLockPassword"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResult called : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_1

    const-string/jumbo p1, "password"

    .line 97
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    sput-object p1, Lcom/android/settings/password/ConfirmUCMLockPassword;->mCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

    :cond_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 99
    sget-object p1, Lcom/android/settings/password/ConfirmUCMLockPassword;->mCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    const-string p0, "CONFIRM_EXISTING_REQUEST resultCode == Activity.RESULT_OK"

    .line 103
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 100
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onWindowFocusChanged(Z)V

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 88
    instance-of v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    if-eqz v0, :cond_0

    .line 89
    check-cast p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
