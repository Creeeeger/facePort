.class public Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor;
.super Lcom/android/settings/SettingsActivity;
.source "KnoxChooseLockTwoFactor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method private isPasswordChangedRequestedOnManagedDevice()Z
    .locals 2

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 95
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-$$Nest$fgetmIsSecondStep(Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-$$Nest$sfgetsUserId()I

    move-result v1

    .line 96
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-$$Nest$sfgetsUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 70
    const-class p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 78
    const-class p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor;->isPasswordChangedRequestedOnManagedDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 89
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 114
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor;->isPasswordChangedRequestedOnManagedDevice()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v0
.end method

.method public onPause()V
    .locals 0

    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPause()V

    return-void
.end method
