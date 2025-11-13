.class public Lcom/android/settings/password/ChooseLockPattern;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;,
        Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;,
        Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method private setTheme()V
    .locals 4

    .line 272
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingSetupTheme(Landroid/content/Context;)Z

    move-result v0

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromSetupWizard"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 276
    sget v0, Lcom/android/settings/R$style;->LockscreenSUWTheme:I

    goto :goto_0

    .line 278
    :cond_0
    sget v0, Lcom/android/settings/R$style;->LockScreenTheme:I

    .line 283
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 284
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)Z

    return-void
.end method

.method private setViewforTablet(ZLjava/lang/CharSequence;)V
    .locals 3

    const/16 v0, 0x8

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    .line 315
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->hideAppBar(Z)V

    .line 316
    sget p1, Lcom/android/settings/R$id;->coordinator:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    .line 318
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v2, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_1

    .line 323
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :cond_1
    sget p2, Lcom/android/settings/R$id;->content_layout:I

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 327
    new-instance p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    :cond_2
    sget p1, Lcom/android/settings/R$id;->content_start_pane:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 331
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    :cond_3
    sget p1, Lcom/android/settings/R$id;->content_end_pane:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 335
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 337
    :cond_4
    sget p1, Lcom/android/settings/R$id;->round_corner_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_9

    .line 339
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 342
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "fromSetupWizard"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 343
    sget p1, Lcom/android/settings/R$id;->content_start_pane:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    .line 345
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    :cond_6
    sget p1, Lcom/android/settings/R$id;->content_end_pane:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    .line 349
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    :cond_7
    sget p1, Lcom/android/settings/R$id;->round_corner_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_8

    .line 353
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 356
    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 358
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 359
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_9
    :goto_0
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
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 267
    const-class p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getFragmentClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 262
    const-class p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

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
    .locals 3

    .line 135
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingSetupTheme(Landroid/content/Context;)Z

    move-result p2

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromSetupWizard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 138
    sget p2, Lcom/android/settings/R$style;->LockscreenSUWTheme:I

    goto :goto_0

    .line 140
    :cond_0
    sget p2, Lcom/android/settings/R$style;->LockScreenTheme:I

    .line 142
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 399
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    instance-of v1, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    if-eqz v1, :cond_0

    .line 401
    check-cast v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->onKeyBackPressedListener()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 405
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 291
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;->setTheme()V

    .line 295
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from_personal"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "forPrivateBackupKey"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    sget p1, Lcom/android/settings/R$string;->sec_lockpassword_choose_your_pattern_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    .line 300
    :cond_1
    :goto_0
    sget p1, Lcom/android/settings/R$string;->sec_personal_page_pattern_unlock_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 304
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 305
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/password/ChooseLockPattern;->setViewforTablet(ZLjava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 306
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->disableExtendedAppBar(Z)V

    .line 308
    sget p1, Lcom/android/settings/R$id;->content_parent:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 309
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 366
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 367
    instance-of v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    if-eqz v0, :cond_0

    .line 368
    check-cast p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 388
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 376
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    instance-of v1, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    if-eqz v1, :cond_0

    .line 378
    check-cast v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->selectOptionItem(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 380
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
