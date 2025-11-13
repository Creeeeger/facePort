.class public Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;
.super Landroid/app/Activity;
.source "WorkProfileConfirmCredentialUnavailableActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDeviceHasSoftKeys:Z

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "KKG::WorkProfileConfirmCredentialUnavailableActivity"

    .line 36
    iput-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->mDeviceHasSoftKeys:Z

    return-void
.end method

.method private addWindowFlagsForWorkProfile(Landroid/view/Window;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 140
    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 141
    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 142
    invoke-virtual {p1, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 143
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x300

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 146
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 147
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 148
    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setWorkChallengeBackground(I)V
    .locals 7

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 69
    sget v1, Lcom/android/settings/R$id;->background_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 72
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getInflatedLayoutType(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->sec_knox_credential_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->sec_knox_credential_bg_land:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 77
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_1
    sget v1, Lcom/android/settings/R$id;->knoxTitleText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->work_profile_lock_screen_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v3, p1, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    sget v1, Lcom/android/settings/R$id;->knoxTitleSubText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 89
    iget-object v3, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 90
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    sget p1, Lcom/android/settings/R$id;->knoxLogo:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->knox_basic:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "#fffafafa"

    .line 99
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 103
    :cond_2
    sget p1, Lcom/android/settings/R$id;->knox_logo_layout:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 105
    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->mDeviceHasSoftKeys:Z

    if-eqz v2, :cond_4

    .line 106
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1, v1, v1, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    const-string p1, "KKG::WorkProfileConfirmCredentialUnavailableActivity"

    const-string v2, "SecuredLogo is NULL"

    .line 109
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->addWindowFlagsForWorkProfile(Landroid/view/Window;)V

    .line 114
    sget p1, Lcom/android/settings/R$id;->KnoxLockedText:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 115
    sget v2, Lcom/android/settings/R$id;->KnoxLockedDetailText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->mUserId:I

    invoke-static {p0, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintLockSetForUser(Landroid/content/Context;I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 120
    iget v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->mUserId:I

    invoke-static {p0, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerPrintDisabledByPolicy(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v1

    .line 125
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget v5, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->mUserId:I

    invoke-virtual {v4, v5, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 126
    sget v5, Lcom/android/settings/R$string;->knox_keyguard_locked_premium:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_6

    .line 129
    sget p1, Lcom/android/settings/R$string;->knox_keyguard_locked_fingerprint_disabled_premium:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v4, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 133
    :cond_6
    sget p1, Lcom/android/settings/R$string;->knox_keyguard_locked_multi_biometrics_disabled_premium:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v4, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget p1, Lcom/android/settings/R$layout;->sec_confirm_credential_unavailable_work_profile:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const-string p1, "device_policy"

    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string p1, "user"

    .line 55
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->mUserManager:Landroid/os/UserManager;

    const-string p1, "statusbar"

    .line 56
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatusBarManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string p1, "persona"

    .line 57
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    .line 60
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->mDeviceHasSoftKeys:Z

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "mUserId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->mUserId:I

    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmCredentialUnavailableActivity;->setWorkChallengeBackground(I)V

    return-void
.end method
