.class public Lcom/android/settings/password/ConfirmLockPassword;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;,
        Lcom/android/settings/password/ConfirmLockPassword$KnoxWorkChallengeActivity;,
        Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;
    }
.end annotation


# static fields
.field private static final DETAIL_TEXTS:[I

.field private static final DETAIL_TEXT_OVERRIDES:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetDETAIL_TEXTS()[I
    .locals 1

    sget-object v0, Lcom/android/settings/password/ConfirmLockPassword;->DETAIL_TEXTS:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetDETAIL_TEXT_OVERRIDES()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/password/ConfirmLockPassword;->DETAIL_TEXT_OVERRIDES:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 110
    sget v1, Lcom/android/settings/R$string;->confirm_lockpassword_your_pin_header:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->confirm_lockpassword_your_password_header:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_generic_profile:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_generic_profile:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->sec_lockpassword_strong_auth_required_reason_restart_device_pin:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->sec_lockpassword_strong_auth_required_reason_restart_device_password:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->sec_lockpassword_strong_auth_required_reason_restart_work_pin:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->sec_lockpassword_strong_auth_required_reason_restart_work_password:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/password/ConfirmLockPassword;->DETAIL_TEXTS:[I

    const-string v3, "UNDEFINED"

    const-string v4, "UNDEFINED"

    const-string v5, "Settings.WORK_PROFILE_CONFIRM_PIN"

    const-string v6, "Settings.WORK_PROFILE_CONFIRM_PASSWORD"

    const-string v7, "UNDEFINED"

    const-string v8, "UNDEFINED"

    const-string v9, "Settings.WORK_PROFILE_PIN_REQUIRED"

    const-string v10, "Settings.WORK_PROFILE_PASSWORD_REQUIRED"

    .line 121
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/password/ConfirmLockPassword;->DETAIL_TEXT_OVERRIDES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 143
    const-class p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_as_subsetting"

    const/4 v1, 0x1

    .line 145
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 152
    const-class p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

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

    .line 169
    invoke-static {p0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 170
    sget p2, Lcom/android/settings/R$style;->LockscreenSUWTheme:I

    goto :goto_0

    .line 172
    :cond_0
    sget p2, Lcom/android/settings/R$style;->LockScreenTheme:I

    .line 175
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 181
    instance-of v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    if-eqz v0, :cond_0

    .line 182
    check-cast p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    instance-of v1, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    if-eqz v1, :cond_0

    .line 210
    check-cast v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->interceptOnKeyDownIfNeeded(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 214
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    instance-of v1, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    if-eqz v1, :cond_1

    .line 193
    check-cast v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->interceptOnOptionsItemSelectedIfNeeded(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 197
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-eq v1, v2, :cond_1

    .line 198
    invoke-virtual {v0, p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->selectOptionItem(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 201
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 158
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onWindowFocusChanged(Z)V

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 160
    instance-of v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    if-eqz v0, :cond_0

    .line 161
    check-cast p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
