.class public Lcom/android/settings/password/ForgotPasswordActivity;
.super Landroid/app/Activity;
.source "ForgotPasswordActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ForgotPasswordActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addWindowFlagsForWorkProfile(Landroid/view/Window;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 155
    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 156
    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 157
    invoke-virtual {p1, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 158
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x300

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 161
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 162
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 163
    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setWorkChallengeBackground(I)V
    .locals 6

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 93
    sget v1, Lcom/android/settings/R$id;->background_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 96
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getInflatedLayoutType(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->sec_knox_credential_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->sec_knox_credential_bg_land:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 101
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const-string/jumbo v1, "user"

    .line 104
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const-string v1, "device_policy"

    .line 105
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 109
    sget v2, Lcom/android/settings/R$id;->knoxTitleText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->work_profile_lock_screen_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 111
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    sget v4, Lcom/android/settings/R$string;->work_title:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget v2, Lcom/android/settings/R$id;->knoxTitleSubText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 116
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 117
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    sget p1, Lcom/android/settings/R$id;->knoxLogo:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->knox_basic:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 125
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "#fffafafa"

    .line 126
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 130
    :cond_2
    sget p1, Lcom/android/settings/R$id;->knox_logo_layout:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "config_showNavigationBar"

    const-string v4, "bool"

    const-string v5, "android"

    .line 133
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 132
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    .line 138
    :cond_3
    sget-object p1, Lcom/android/settings/password/ForgotPasswordActivity;->TAG:Ljava/lang/String;

    const-string v1, "SecuredLogo is NULL"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_4
    :goto_1
    sget p1, Lcom/android/settings/R$id;->okayButton:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 142
    new-instance v0, Lcom/android/settings/password/ForgotPasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ForgotPasswordActivity$1;-><init>(Lcom/android/settings/password/ForgotPasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/password/ForgotPasswordActivity;->addWindowFlagsForWorkProfile(Landroid/view/Window;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.USER_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_0

    .line 58
    sget-object p1, Lcom/android/settings/password/ForgotPasswordActivity;->TAG:Ljava/lang/String;

    const-string v0, "No valid userId supplied, exiting"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 64
    :cond_0
    sget v0, Lcom/android/settings/R$layout;->sec_knox_forgot_password_activity:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/password/ForgotPasswordActivity;->setWorkChallengeBackground(I)V

    .line 85
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 86
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v1, 0x2

    .line 85
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;I)Z

    return-void
.end method
