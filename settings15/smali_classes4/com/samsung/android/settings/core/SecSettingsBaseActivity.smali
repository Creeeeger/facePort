.class public abstract Lcom/samsung/android/settings/core/SecSettingsBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field public mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field public mIsDisabledAppBar:Z

.field public mIsEmbeddingActivityEnabled:Z

.field public mOnConfigurationChangedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;

.field public mOnKeyEventListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;

.field public mReceiver:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsDisabledAppBar:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnConfigurationChangedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;

    iput-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnKeyEventListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;

    return-void
.end method

.method public static findActivityBelow(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 1

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ActivityClient;->getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActivityThread;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isAllSameUid(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->findActivityBelow(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->isAllSameUid(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final applyExtendedAppBar()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    new-instance v1, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$1;-><init>(Lcom/samsung/android/settings/core/SecSettingsBaseActivity;)V

    iput-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    instance-of v1, v0, Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;

    iget-boolean v1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsEmbeddingActivityEnabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    instance-of v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isAlreadyEmbedded(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v2

    goto :goto_1

    :cond_2
    :goto_0
    iget-boolean p0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsDisabledAppBar:Z

    :goto_1
    xor-int/2addr p0, v2

    iput-boolean p0, v0, Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;->mEnabled:Z

    :cond_3
    return-void
.end method

.method public canUsePathProvider()Z
    .locals 2

    instance-of v0, p0, Lcom/android/settings/SubSettings;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, ":settings:show_fragment_as_subsetting"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final disableExtendedAppBar()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsDisabledAppBar:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->applyExtendedAppBar()V

    return-void
.end method

.method public getContentViewResId()I
    .locals 0

    const p0, 0x7f0d099f

    return p0
.end method

.method public final hideAppBar()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    instance-of p0, p1, Lcom/android/settings/core/InstrumentedPreferenceFragment;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/android/settings/core/InstrumentedFragment;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/android/settings/core/InstrumentedFragment;

    iget-object p0, p1, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    new-instance v0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->applyExtendedAppBar()V

    iget-boolean p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz p1, :cond_1

    instance-of p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isAlreadyEmbedded(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "settings_landscape_fullscreen"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnConfigurationChangedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onConfigurationChanged : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnConfigurationChangedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecSettingsBaseActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnConfigurationChangedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;

    invoke-interface {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;->onConfigurationChanged()V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsEmbeddingActivityEnabled:Z

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object v0

    const-string v1, "feature_is_embedding_activity_enabled"

    iget-boolean v2, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsEmbeddingActivityEnabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->setBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->getContentViewResId()I

    move-result v0

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f0a038f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v0, 0x7f0a0102

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    instance-of v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz p1, :cond_0

    const-string v1, "disabled_app_bar"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsDisabledAppBar:Z

    const-string v1, "expanded_app_bar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    const p1, 0x7f0a0068

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->applyExtendedAppBar()V

    iget-object p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_1
    const-string p1, "accessibility"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnKeyEventListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x54

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x22

    if-ne p1, v0, :cond_6

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-boolean v2, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->SHOULD_ENABLE_LARGE_SCREEN_OPTIMIZATION:Z

    invoke-static {p0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v2

    xor-int/2addr v2, v1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    const-string v4, ":settings:show_fragment_args"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/settings/Settings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v5, Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v3

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    if-nez v0, :cond_7

    if-eqz v4, :cond_6

    const-string/jumbo v0, "need_search_icon_in_action_bar"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->semIsResumed()Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProviderImpl;

    move-result-object p1

    invoke-virtual {p1, p0, v3}, Lcom/android/settings/search/SearchFeatureProviderImpl;->buildSearchIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x1f5

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return v1

    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->unregisterAssistant()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->registerAssistant()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_d

    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v3

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v3

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f010068

    const v4, 0x7f010067

    const/high16 v5, 0x24000000

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_4

    const-class p1, Lcom/android/settings/Settings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-class p1, Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    invoke-static {p0, v4, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->setDisableSplashScreen()V

    :try_start_0
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed hierarchy up : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecSettingsBaseActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->canUsePathProvider()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    instance-of v7, v6, Lcom/android/settings/core/InstrumentedPreferenceFragment;

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    move-object v7, v6

    check-cast v7, Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v7, p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_2

    :cond_8
    const-class v8, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->findActivityBelow(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/android/settings/homepage/SettingsHomepageActivity;

    xor-int/2addr v6, v3

    if-eqz v6, :cond_6

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.settings.SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_9
    invoke-static {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->findActivityBelow(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v8

    instance-of v9, v8, Landroidx/fragment/app/FragmentActivity;

    if-eqz v9, :cond_b

    check-cast v8, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v8

    iget-object v8, v8, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_2

    :cond_b
    invoke-static {p0, v4, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->setDisableSplashScreen()V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v7, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    instance-of v4, v6, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz v4, :cond_c

    check-cast v6, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {v6}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v2

    :cond_c
    iput v2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    :goto_3
    return v3

    :cond_d
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->unregisterAssistant()V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->registerAssistant()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "settings_landscape_fullscreen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    :cond_1
    instance-of v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->reloadTopLevelHighlightMenuKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "disabled_app_bar"

    iget-boolean v1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsDisabledAppBar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "expanded_app_bar"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onSearchRequested()Z
    .locals 2

    const v0, 0x7f0a0d2c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.SETTINGS_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings.intelligence"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->registerAssistant()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->unregisterAssistant()V

    :goto_0
    return-void
.end method

.method public final registerAssistant()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mReceiver:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/homepage/HomepageUtils;->SEPARATORS:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ActivityName"

    const-string v2, "com.android.settings.homepage.SettingsHomepageActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IconName"

    const-string v2, "Search"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "register"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.settings.Favorite"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.settings.Search"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;-><init>(Lcom/samsung/android/settings/core/SecSettingsBaseActivity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mReceiver:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string p0, "SecSettingsBaseActivity"

    const-string v0, "AssistantReceiver registered"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final reloadTopLevelHighlightMenuKey()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->isAllSameUid(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    const-string v2, "com.android.settings.HIGHLIGHT_MENU_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    goto :goto_1

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot get Metadata for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecSettingsBaseActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    instance-of v1, p0, Lcom/android/settings/SubSettings;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":settings:show_fragment_as_subsetting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    iget-object v1, v1, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    instance-of v3, v2, Lcom/android/settings/core/InstrumentedPreferenceFragment;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    check-cast v2, Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v2, p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object v1, v2

    goto :goto_1

    :cond_6
    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsApplication;

    invoke-virtual {p0}, Lcom/android/settings/SettingsApplication;->getHomeActivity()Lcom/android/settings/homepage/SettingsHomepageActivity;

    move-result-object p0

    if-eqz p0, :cond_8

    iget-object v2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->getHighlightPreferenceKey()Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p0, v1}, Lcom/android/settings/homepage/TopLevelSettings;->setHighlightMenuKey(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final unregisterAssistant()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mReceiver:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ActivityName"

    const-string v2, "com.android.settings.homepage.SettingsHomepageActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "register"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mReceiver:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mReceiver:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;

    const-string p0, "SecSettingsBaseActivity"

    const-string v0, "AssistantReceiver unregistered"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method
