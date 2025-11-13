.class public Lcom/android/settings/panel/SettingsPanelActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field final mBundle:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mForceCreation:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPanelFragment:Lcom/android/settings/panel/PanelFragment;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mForceCreation:Z

    return-void
.end method


# virtual methods
.method public final createOrUpdatePanel(Z)V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SettingsPanelActivity"

    if-nez v0, :cond_0

    const-string p1, "Null intent, closing Panel Activity"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "action is null, so finishing"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string v3, "package_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    const-string v4, "PANEL_TYPE_ARGUMENT"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    const-string v5, "PANEL_CALLING_PACKAGE_NAME"

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    const-string v5, "PANEL_MEDIA_PACKAGE_NAME"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const v3, 0x7f0a091b

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v5

    const/4 v6, 0x1

    if-nez p1, :cond_4

    if-eqz v5, :cond_4

    instance-of p1, v5, Lcom/android/settings/panel/PanelFragment;

    if-eqz p1, :cond_4

    move-object p1, v5

    check-cast p1, Lcom/android/settings/panel/PanelFragment;

    iput-object p1, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mPanelFragment:Lcom/android/settings/panel/PanelFragment;

    iget-boolean p1, p1, Lcom/android/settings/panel/PanelFragment;->mPanelCreating:Z

    if-eqz p1, :cond_2

    const-string p0, "A panel is creating, skip "

    invoke-static {p0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "Panel is showing the same action, skip "

    invoke-static {p0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mPanelFragment:Lcom/android/settings/panel/PanelFragment;

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mPanelFragment:Lcom/android/settings/panel/PanelFragment;

    iput-boolean v6, p0, Lcom/android/settings/panel/PanelFragment;->mPanelCreating:Z

    iget-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v0, 0x7f0a0b1a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v2, p1

    const/4 v4, 0x0

    const/16 v5, 0xc8

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Lcom/android/settings/panel/PanelFragment;->buildAnimatorSet(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Lcom/android/settings/panel/PanelFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment$3;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_4
    const p1, 0x7f0d0b1f

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x50

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1, v1, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/android/settings/panel/SettingsPanelActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api30Impl;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v1, v6

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    :cond_5
    new-instance p1, Lcom/android/settings/panel/PanelFragment;

    invoke-direct {p1}, Lcom/android/settings/panel/PanelFragment;-><init>()V

    iput-object p1, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mPanelFragment:Lcom/android/settings/panel/PanelFragment;

    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-instance p1, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {p1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object p0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mPanelFragment:Lcom/android/settings/panel/PanelFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v3, p0, v0, v6}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mForceCreation:Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->rebase()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/panel/SettingsPanelActivity;->createOrUpdatePanel(Z)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    iget-boolean p1, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mForceCreation:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/panel/SettingsPanelActivity;->createOrUpdatePanel(Z)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mForceCreation:Z

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    iget-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mPanelFragment:Lcom/android/settings/panel/PanelFragment;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/settings/panel/PanelFragment;->mPanelCreating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mForceCreation:Z

    :cond_0
    return-void
.end method
