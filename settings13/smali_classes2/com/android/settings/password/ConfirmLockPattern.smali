.class public Lcom/android/settings/password/ConfirmLockPattern;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;,
        Lcom/android/settings/password/ConfirmLockPattern$Stage;,
        Lcom/android/settings/password/ConfirmLockPattern$KnoxWorkChallengeActivity;,
        Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 101
    const-class p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_as_subsetting"

    const/4 v1, 0x1

    .line 103
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 157
    const-class p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

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

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    .line 112
    invoke-static {p0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 113
    sget p2, Lcom/android/settings/R$style;->LockscreenSUWTheme:I

    goto :goto_0

    .line 115
    :cond_0
    sget p2, Lcom/android/settings/R$style;->LockScreenTheme:I

    .line 118
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    instance-of v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    if-eqz v1, :cond_0

    .line 136
    check-cast v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->interceptOnKeyDownIfNeeded(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 140
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    instance-of v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->interceptOnOptionsItemSelectedIfNeeded(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 151
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onWindowFocusChanged(Z)V

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 127
    instance-of v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    if-eqz v0, :cond_0

    .line 128
    check-cast p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
