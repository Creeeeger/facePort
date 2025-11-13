.class public Lcom/android/settings/password/SetupChooseLockGeneric;
.super Lcom/android/settings/password/ChooseLockGeneric;
.source "SetupChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetupChooseLockGeneric$InternalActivity;,
        Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric;-><init>()V

    return-void
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/preference/PreferenceFragmentCompat;",
            ">;"
        }
    .end annotation

    .line 101
    const-class p0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/password/ChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p0, "fromSetupWizard"

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "isSetupFlow"

    .line 89
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 96
    const-class p0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 107
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)Z

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "requested_min_complexity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "android.permission.REQUEST_PASSWORD_COMPLEXITY"

    .line 112
    invoke-static {p0, p1, v0}, Lcom/android/settings/password/PasswordUtils;->isCallingAppPermitted(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const-string v1, "Must have permission android.permission.REQUEST_PASSWORD_COMPLEXITY to use extra android.app.extra.PASSWORD_COMPLEXITY"

    .line 115
    invoke-static {p1, v1, v0}, Lcom/android/settings/password/PasswordUtils;->crashCallingApplication(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric;->finish()V

    return-void

    .line 125
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 129
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockSettingsBlockonDexMode(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 130
    sget p1, Lcom/android/settings/R$string;->lock_screen_disable_samsung_dex:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 131
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric;->finish()V

    return-void

    .line 135
    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->hideAppBar(Z)V

    .line 136
    sget p1, Lcom/android/settings/R$id;->content_parent:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 137
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 138
    sget p1, Lcom/android/settings/R$id;->content_start_pane:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 139
    sget v0, Lcom/android/settings/R$id;->content_end_pane:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 140
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    sget p1, Lcom/android/settings/R$id;->round_corner_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_3

    .line 144
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method
