.class public Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockHintSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;
    }
.end annotation


# instance fields
.field private isNeededLaunchRedactional:Z

.field private mFromSetupWizard:Z

.field private mJustPPP:Z


# direct methods
.method static bridge synthetic -$$Nest$smgetConfiguredPasswordType(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->getConfiguredPasswordType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 65
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    const-class v0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;

    .line 70
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "android.intent.extra.USER_ID"

    .line 71
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getConfiguredPasswordType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 327
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 328
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 342
    :cond_0
    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_password_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 337
    :cond_1
    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_pin_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_pattern_title:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private launchRedactionlInterstitalIfNeeded()V
    .locals 3

    .line 119
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->isNeededLaunchRedactional:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->mFromSetupWizard:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->mJustPPP:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const-string v2, "justPPP"

    .line 125
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->launchRedactionlInterstitalIfNeeded()V

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method getFragmentClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 77
    const-class p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->getFragmentClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":android:no_headers"

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->isFloating()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "set_redaction"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->isNeededLaunchRedactional:Z

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "fromSetupWizard"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->mFromSetupWizard:Z

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "justPPP"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->mJustPPP:Z

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 92
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->hideAppBar(Z)V

    .line 93
    sget v0, Lcom/android/settings/R$id;->coordinator:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 94
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->getConfiguredPasswordType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 99
    sget v4, Lcom/android/settings/R$string;->choose_lock_enter_hint:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v2, p1, v1

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_1
    sget p1, Lcom/android/settings/R$id;->content_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 102
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    sget p1, Lcom/android/settings/R$id;->content_start_pane:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    :cond_2
    sget p1, Lcom/android/settings/R$id;->content_end_pane:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 109
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    :cond_3
    sget p1, Lcom/android/settings/R$id;->round_corner_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_4

    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method
