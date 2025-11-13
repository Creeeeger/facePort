.class public Lcom/android/settings/password/ChooseLockPassword;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;,
        Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;,
        Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method private setTheme()V
    .locals 4

    .line 398
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingSetupTheme(Landroid/content/Context;)Z

    move-result v0

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromSetupWizard"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 402
    sget v0, Lcom/android/settings/R$style;->LockscreenSUWTheme:I

    goto :goto_0

    .line 404
    :cond_0
    sget v0, Lcom/android/settings/R$style;->LockScreenTheme:I

    .line 409
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 410
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)Z

    return-void
.end method

.method private setViewforTablet(ZLjava/lang/CharSequence;)V
    .locals 3

    const/16 v0, 0x8

    if-eqz p1, :cond_6

    .line 453
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->isFloating()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 455
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v1, 0x50

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_0
    const/4 p1, 0x1

    .line 457
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->hideAppBar(Z)V

    .line 458
    sget p1, Lcom/android/settings/R$id;->coordinator:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 460
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v2, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_2

    .line 465
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :cond_2
    sget p1, Lcom/android/settings/R$id;->content_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 469
    new-instance p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p2, v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    :cond_3
    sget p1, Lcom/android/settings/R$id;->content_start_pane:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 473
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 475
    :cond_4
    sget p1, Lcom/android/settings/R$id;->content_end_pane:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    .line 477
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 479
    :cond_5
    sget p1, Lcom/android/settings/R$id;->round_corner_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_a

    .line 481
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 484
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "fromSetupWizard"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 485
    sget p1, Lcom/android/settings/R$id;->content_start_pane:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    .line 487
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 489
    :cond_7
    sget p1, Lcom/android/settings/R$id;->content_end_pane:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_8

    .line 491
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 493
    :cond_8
    sget p1, Lcom/android/settings/R$id;->round_corner_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_9

    .line 495
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 500
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 501
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_a
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

    .line 393
    const-class p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getFragmentClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 383
    const-class p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

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

.method public onBackPressed()V
    .locals 2

    .line 551
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    instance-of v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    if-eqz v1, :cond_0

    .line 553
    check-cast v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->onKeyBackPressedListener()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 556
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 419
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;->setTheme()V

    .line 421
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 422
    sget p1, Lcom/android/settings/R$id;->content_parent:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 423
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 426
    sget p1, Lcom/android/settings/R$string;->lockpassword_choose_your_password_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "lockscreen.password_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    const/high16 v2, 0x20000

    if-eq v2, p1, :cond_1

    const/high16 v2, 0x30000

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    .line 432
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from_personal"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "personal_mQuality"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "forPrivateBackupKey"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v2, :cond_4

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 440
    sget p1, Lcom/android/settings/R$string;->sec_lockpassword_choose_your_pin_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_3

    .line 441
    :cond_3
    sget p1, Lcom/android/settings/R$string;->sec_lockpassword_choose_your_password_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 437
    sget p1, Lcom/android/settings/R$string;->sec_personal_page_pin_unlock_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_3

    .line 438
    :cond_5
    sget p1, Lcom/android/settings/R$string;->sec_personal_page_password_unlock_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 443
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 445
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/password/ChooseLockPassword;->setViewforTablet(ZLjava/lang/CharSequence;)V

    .line 446
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->disableExtendedAppBar(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 508
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 509
    instance-of v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    if-eqz v0, :cond_0

    .line 510
    check-cast p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 527
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 528
    instance-of v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    if-eqz v1, :cond_3

    .line 529
    check-cast v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 531
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmIsChangePwdRequired(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 533
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 534
    iget-object p0, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object p1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne p0, p1, :cond_2

    .line 535
    :cond_1
    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmPasswordEntry(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/ImeAwareEditText;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 536
    sget-object p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 544
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 518
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    instance-of v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    if-eqz v1, :cond_0

    .line 520
    check-cast v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->selectOptionItem(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 522
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
