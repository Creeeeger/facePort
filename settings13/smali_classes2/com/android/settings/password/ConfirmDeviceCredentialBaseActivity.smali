.class public abstract Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.super Lcom/android/settings/SettingsActivity;
.source "ConfirmDeviceCredentialBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
    }
.end annotation


# instance fields
.field private mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

.field private mEnterAnimationPending:Z

.field private mFirstTimeVisible:Z

.field protected mFrp:Z

.field private mIsKeyguardLocked:Z

.field private mRestoring:Z

.field private mReturnCredentials:Z


# direct methods
.method public static synthetic $r8$lambda$FBRjcsoWEdzVb0ZbuzlAmeNa5rw()V
    .locals 0

    invoke-static {}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->lambda$onDestroy$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFrp:Z

    return-void
.end method

.method private getFragment()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
    .locals 1

    .line 316
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 317
    instance-of v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    if-eqz v0, :cond_0

    .line 318
    check-cast p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isInternalActivity()Z
    .locals 1

    .line 80
    instance-of v0, p0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$onDestroy$0()V
    .locals 0

    .line 349
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 350
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 351
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 357
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.ConfirmCredentials.useFadeAnimation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    sget v0, Lcom/android/settings/R$anim;->confirm_credential_biometric_transition_exit:I

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public getConfirmCredentialTheme()Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    return-object p0
.end method

.method public isLaunchableInTaskModePinned()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 4

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->isInternalActivity()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result v0

    .line 265
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "return_credentials"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mReturnCredentials:Z

    .line 274
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    invoke-static {p0, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdChangeEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mReturnCredentials:Z

    if-nez v0, :cond_3

    .line 276
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isTablet()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFoldableProduct()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 279
    :cond_1
    sget p2, Lcom/android/settings/R$style;->KnoxWorkChallengeTheme:I

    goto :goto_1

    .line 277
    :cond_2
    :goto_0
    sget p2, Lcom/android/settings/R$style;->KnoxWorkChallengeTabletTheme:I

    .line 284
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "ConfirmDeviceCredentialBaseActivity"

    const-string p3, "Invalid user Id supplied"

    .line 268
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "ConfirmDeviceCredentialBaseActivity"

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->isInternalActivity()Z

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result v1

    .line 88
    invoke-static {p0, v1}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 104
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->isInternalActivity()Z

    move-result v3

    .line 103
    invoke-static {p0, v2, v3}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result v2

    const/16 v3, -0x270f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    .line 105
    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFrp:Z

    .line 122
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)Z

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    sget-object v3, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->NORMAL:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v2, v3, :cond_1

    .line 128
    sget v2, Lcom/android/settings/R$id;->content_parent:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 131
    :cond_1
    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    if-nez p1, :cond_3

    .line 138
    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    goto :goto_1

    :cond_3
    const-string v2, "STATE_IS_KEYGUARD_LOCKED"

    .line 139
    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    if-eqz v2, :cond_4

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "knox.container.proxy.EXTRA_SHOW_WHEN_LOCKED"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 152
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->isInternalActivity()Z

    move-result v3

    .line 151
    invoke-static {p0, v2, v3}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result v2

    .line 153
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 154
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "set flag show when locked"

    .line 155
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 163
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 172
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->shouldApplyLayoutChangeForKnox(I)Z

    move-result v0

    .line 173
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v1

    if-nez v0, :cond_6

    if-eqz v1, :cond_d

    :cond_6
    const/16 v2, 0x8

    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 177
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const/16 v7, 0x200

    .line 178
    invoke-virtual {v3, v7}, Landroid/view/Window;->addFlags(I)V

    .line 179
    invoke-virtual {v3, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 180
    sget v3, Lcom/android/settings/R$id;->round_corner_layout:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_7

    .line 182
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    :cond_7
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->hideAppBar(Z)V

    .line 187
    sget v3, Lcom/android/settings/R$id;->round_corner:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    .line 189
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :cond_8
    sget v3, Lcom/android/settings/R$id;->content_start_pane:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_9

    .line 193
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    :cond_9
    sget v3, Lcom/android/settings/R$id;->content_end_pane:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_a

    .line 197
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    :cond_a
    sget v2, Lcom/android/settings/R$id;->coordinator:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v3, -0x1

    if-eqz v2, :cond_b

    .line 201
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    :cond_b
    sget v2, Lcom/android/settings/R$id;->content_layout:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_d

    .line 205
    new-instance v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_2

    :cond_c
    const/4 v0, -0x2

    .line 206
    :goto_2
    invoke-direct {v6, v3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 205
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    if-eqz v1, :cond_e

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 211
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 216
    :cond_e
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.password_isenforced"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 220
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 221
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 225
    :cond_f
    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFrp:Z

    if-eqz v1, :cond_11

    if-eqz v0, :cond_10

    .line 227
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 228
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 229
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_lock_suw_background_color:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    :cond_10
    sget v0, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_11

    .line 235
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 238
    :cond_11
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->disableExtendedAppBar(Z)V

    if-eqz p1, :cond_12

    goto :goto_3

    :cond_12
    move v4, v5

    .line 241
    :goto_3
    iput-boolean v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    return-void

    :catch_0
    move-exception p1

    const-string v1, "Invalid user Id supplied"

    .line 91
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 344
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 348
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 325
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 326
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->startEnterAnimation()V

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 297
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 301
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 306
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 307
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    sget-object v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->prepareEnterAnimation()V

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 291
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 292
    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    const-string v0, "STATE_IS_KEYGUARD_LOCKED"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 334
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "foreground_only"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 337
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    :cond_0
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 0

    .line 370
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    return-void
.end method

.method public shouldApplyLayoutChangeForKnox(I)Z
    .locals 1

    .line 251
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPwdChangeEnforced(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mReturnCredentials:Z

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public startEnterAnimation()V
    .locals 0

    .line 374
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    return-void
.end method
