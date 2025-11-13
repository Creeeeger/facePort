.class public Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;,
        Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$InternalActivity;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field public static mAuthenticating:Z

.field public static mCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

.field public static mUCMCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mAuthenticating:Z

    sput-object v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mUCMCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-class p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":android:no_headers"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public final isValidFragment(Ljava/lang/String;)Z
    .locals 0

    const-class p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "ConfirmUCMLockPassword"

    sget-boolean v1, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v2, "onActivityResult called : "

    const-string v3, ", "

    invoke-static {v2, v3, p1, p2, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mAuthenticating:Z

    if-eqz p3, :cond_1

    const-string/jumbo p1, "password"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    sput-object p1, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

    :cond_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    sget-object p1, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    const-string p0, "CONFIRM_EXISTING_REQUEST resultCode == Activity.RESULT_OK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    const v0, 0x7f0a091b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->onWindowFocusChanged(Z)V

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mBlockImm:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;-><init>(Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
