.class public Lcom/samsung/android/settings/core/SecSettingsBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SecSettingsBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;,
        Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;,
        Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;,
        Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;
    }
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field protected mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field protected mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private mIsDisabledAppBar:Z

.field private mIsExpandedAppBar:Z

.field private mIsMultiPaneSupported:Z

.field private mOnConfigurationChangedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;

.field private mOnKeyBackPressedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;

.field private mOnKeyEventListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsDisabledAppBar:Z

    .line 99
    iput-boolean v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsExpandedAppBar:Z

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnConfigurationChangedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;

    .line 329
    iput-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnKeyBackPressedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;

    .line 345
    iput-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnKeyEventListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;

    return-void
.end method

.method private applyExtendedAppBar()V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    .line 590
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 591
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 592
    new-instance v1, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$1;-><init>(Lcom/samsung/android/settings/core/SecSettingsBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V

    .line 598
    instance-of v1, v0, Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;

    if-eqz v1, :cond_1

    .line 599
    check-cast v0, Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->isDisabledAppBar()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private getHighlightMenuKey()Ljava/lang/String;
    .locals 3

    .line 254
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.HIGHLIGHT_MENU_KEY"

    .line 257
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    .line 263
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get Metadata for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSettingsBaseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    instance-of v0, p0, Lcom/android/settings/SubSettings;

    if-nez v0, :cond_1

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 271
    instance-of v2, v1, Lcom/samsung/android/settings/core/PathProvider;

    if-nez v2, :cond_3

    goto :goto_0

    .line 275
    :cond_3
    check-cast v1, Lcom/samsung/android/settings/core/PathProvider;

    .line 276
    invoke-interface {v1, p0}, Lcom/samsung/android/settings/core/PathProvider;->getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private hierarchyUp()Z
    .locals 7

    .line 447
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 450
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 452
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 454
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    .line 459
    :cond_0
    instance-of v0, p0, Lcom/android/settings/SubSettings;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 460
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 462
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 463
    instance-of v4, v3, Lcom/samsung/android/settings/core/PathProvider;

    if-nez v4, :cond_3

    goto :goto_1

    .line 467
    :cond_3
    move-object v4, v3

    check-cast v4, Lcom/samsung/android/settings/core/PathProvider;

    .line 468
    invoke-interface {v4, p0}, Lcom/samsung/android/settings/core/PathProvider;->getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 469
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 473
    :cond_4
    const-class v5, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 475
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.SETTINGS"

    .line 476
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x24000000

    .line 477
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 479
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 483
    :cond_5
    invoke-virtual {p0, p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->findActivityBelow(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v5

    .line 484
    instance-of v6, v5, Landroidx/fragment/app/FragmentActivity;

    if-eqz v6, :cond_7

    .line 485
    check-cast v5, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    .line 486
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v5

    .line 485
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 487
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v5, v2

    goto :goto_2

    :cond_7
    move v5, v1

    :goto_2
    if-eqz v5, :cond_2

    .line 495
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 496
    invoke-virtual {v0, v4}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 497
    instance-of v4, v3, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz v4, :cond_8

    .line 498
    check-cast v3, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {v3}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v2

    .line 497
    :cond_8
    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 501
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    :cond_9
    return v2
.end method

.method private reloadTopLevelHighlightMenuKey()V
    .locals 2

    .line 228
    iget-boolean v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsMultiPaneSupported:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    instance-of v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz v0, :cond_1

    return-void

    .line 236
    :cond_1
    invoke-virtual {p0, p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->isAllSameUid(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 240
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->getHighlightMenuKey()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsApplication;

    invoke-virtual {p0}, Lcom/android/settings/SettingsApplication;->getHomeActivity()Lcom/android/settings/homepage/SettingsHomepageActivity;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getMainFragment()Lcom/android/settings/homepage/TopLevelSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/homepage/TopLevelSettings;->getHighlightedMenuKey()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getMainFragment()Lcom/android/settings/homepage/TopLevelSettings;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/homepage/TopLevelSettings;->setHighlightMenuKey(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public disableExtendedAppBar(Z)V
    .locals 0

    .line 568
    iput-boolean p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsDisabledAppBar:Z

    .line 569
    invoke-direct {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->applyExtendedAppBar()V

    return-void
.end method

.method protected findActivityBelow(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 1

    .line 525
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ActivityClient;->getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 527
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 0

    .line 534
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method protected getAssistantBundle(Z)Landroid/os/Bundle;
    .locals 2

    .line 116
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ActivityName"

    const-string v1, "com.android.settings.homepage.SettingsHomepageActivity"

    .line 117
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "IconName"

    const-string v1, "Search"

    .line 119
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "register"

    .line 121
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public hideAppBar(Z)V
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 581
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected isAllSameUid(Landroid/app/Activity;)Z
    .locals 1

    .line 512
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->findActivityBelow(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 515
    :cond_0
    instance-of v0, p1, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 518
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->isAllSameUid(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isDisabledAppBar()Z
    .locals 1

    .line 611
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->isSupportExpandedAppbar()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 614
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsDisabledAppBar:Z

    return p0
.end method

.method public isExpandedAppBar()Z
    .locals 1

    .line 604
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->isSupportExpandedAppbar()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 607
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsExpandedAppBar:Z

    return p0
.end method

.method public isSupportExpandedAppbar()Z
    .locals 2

    .line 618
    iget-boolean v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsMultiPaneSupported:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 619
    instance-of v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-nez v0, :cond_1

    .line 620
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 208
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 210
    instance-of p0, p1, Lcom/android/settings/core/InstrumentedPreferenceFragment;

    if-eqz p0, :cond_0

    .line 211
    check-cast p1, Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->init(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    goto :goto_0

    .line 212
    :cond_0
    instance-of p0, p1, Lcom/android/settings/core/InstrumentedFragment;

    if-eqz p0, :cond_1

    .line 213
    check-cast p1, Lcom/android/settings/core/InstrumentedFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->init(Lcom/android/settings/core/InstrumentedFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnKeyBackPressedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackPressed consume backKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnKeyBackPressedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSettingsBaseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object p0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnKeyBackPressedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;

    invoke-interface {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;->onBackKey()V

    return-void

    .line 342
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 305
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 306
    invoke-direct {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->applyExtendedAppBar()V

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->isExpandedAppBar()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setExpandedAppBar(Z)V

    .line 308
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 309
    iget-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnConfigurationChangedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnConfigurationChangedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSettingsBaseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object p0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnConfigurationChangedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 156
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 160
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsMultiPaneSupported:Z

    .line 162
    instance-of v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 163
    iput-boolean v1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsExpandedAppBar:Z

    if-eqz v0, :cond_0

    .line 165
    sget v0, Lcom/android/settings/R$layout;->sec_settings_multi_pane_layout:I

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    goto :goto_0

    .line 167
    :cond_0
    sget v0, Lcom/android/settings/R$layout;->sec_settings_homepage_base_layout:I

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    goto :goto_0

    .line 170
    :cond_1
    sget v0, Lcom/android/settings/R$layout;->sec_settings_base_layout:I

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 173
    :goto_0
    sget v0, Lcom/android/settings/R$id;->collapsing_app_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 174
    sget v0, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_2

    const-string v0, "disabled_app_bar"

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsDisabledAppBar:Z

    const-string v0, "expanded_app_bar"

    .line 178
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsExpandedAppBar:Z

    .line 180
    :cond_2
    sget p1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 181
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->applyExtendedAppBar()V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->isExpandedAppBar()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setExpandedAppBar(Z)V

    .line 185
    sget p1, Lcom/android/settings/R$id;->round_corner:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v0, 0xc

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 191
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 189
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_3
    const-string p1, "accessibility"

    .line 194
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 357
    iget-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnKeyEventListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x54

    if-eq p1, v0, :cond_1

    .line 364
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x22

    if-ne p1, v0, :cond_4

    .line 365
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const-string v2, ":settings:show_fragment_args"

    .line 369
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 370
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/android/settings/Settings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 371
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    if-nez v0, :cond_5

    if-eqz v2, :cond_4

    const-string v0, "need_search_icon_in_action_bar"

    .line 376
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 384
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 377
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->semIsResumed()Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    .line 380
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->openSearchView()V

    return v1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 547
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->unregisterAssistant()V

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 552
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->registerAssistant()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 413
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_3

    .line 414
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 417
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x0

    .line 422
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 423
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v1

    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    :cond_1
    if-eqz v1, :cond_2

    .line 433
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    .line 436
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->hierarchyUp()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 442
    :cond_3
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 0

    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->unregisterAssistant()V

    .line 290
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 219
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 220
    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->registerAssistant()V

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->reloadTopLevelHighlightMenuKey()V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .line 390
    sget v0, Lcom/android/settings/R$id;->search_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/search/SearchFeatureProvider;->SEARCH_UI_INTENT:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "com.android.settings.intelligence"

    .line 394
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 539
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 559
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->registerAssistant()V

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->unregisterAssistant()V

    :goto_0
    return-void
.end method

.method public openSearchView()V
    .locals 2

    .line 402
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    const/4 v1, 0x0

    .line 404
    invoke-interface {v0, p0, v1}, Lcom/android/settings/search/SearchFeatureProvider;->buildSearchIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1f5

    .line 405
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public registerAssistant()V
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 131
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->getAssistantBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.settings.Favorite"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.settings.Search"

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    new-instance v1, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;-><init>(Lcom/samsung/android/settings/core/SecSettingsBaseActivity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setExpandedAppBar(Z)V
    .locals 0

    .line 573
    iput-boolean p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsExpandedAppBar:Z

    .line 574
    iget-object p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->isExpandedAppBar()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_0
    return-void
.end method

.method public setOnConfigurationChangedListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnConfigurationChangedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;

    return-void
.end method

.method public setOnKeyBackPressedListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnKeyBackPressedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;

    return-void
.end method

.method public setOnKeyEventListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnKeyEventListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;

    return-void
.end method

.method public unregisterAssistant()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->getAssistantBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method
