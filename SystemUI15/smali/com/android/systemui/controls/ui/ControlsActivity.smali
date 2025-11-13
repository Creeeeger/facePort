.class public final Lcom/android/systemui/controls/ui/ControlsActivity;
.super Landroidx/activity/ComponentActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public broadcastReceiver:Lcom/android/systemui/controls/ui/ControlsActivity$initBroadcastReceiver$1;

.field public final dreamManager:Landroid/service/dreams/IDreamManager;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final lastConfiguration:Landroid/content/res/Configuration;

.field public mExitToDream:Z

.field public parent:Landroid/view/ViewGroup;

.field public final uiController:Lcom/android/systemui/controls/ui/ControlsUiController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/controls/settings/ControlsSettingsDialogManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->dreamManager:Landroid/service/dreams/IDreamManager;

    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->lastConfiguration:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final finishOrReturnToDream()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->mExitToDream:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->mExitToDream:Z

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->dreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlsActivity;->finishOrReturnToDream()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->lastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v0, v0, 0xc80

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->lastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->lastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    const p1, 0x7f0d00ae

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    sget-object p1, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    const v0, 0x7f0a02e3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;

    const/4 v4, 0x0

    invoke-direct {p1, v3, v1, v4, v2}, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;-><init>(Landroid/content/Intent;Landroid/view/ViewGroup;ZLandroid/view/Window;)V

    iget-object v1, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget-object v0, Lcom/android/systemui/controls/ui/ControlsActivity$onCreate$1$1;->INSTANCE:Lcom/android/systemui/controls/ui/ControlsActivity$onCreate$1$1;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    new-instance p1, Lcom/android/systemui/controls/ui/ControlsActivity$initBroadcastReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlsActivity$initBroadcastReceiver$1;-><init>(Lcom/android/systemui/controls/ui/ControlsActivity;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->broadcastReceiver:Lcom/android/systemui/controls/ui/ControlsActivity$initBroadcastReceiver$1;

    const-string p1, "android.intent.action.SCREEN_OFF"

    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->broadcastReceiver:Lcom/android/systemui/controls/ui/ControlsActivity$initBroadcastReceiver$1;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v2, p1

    const/4 v5, 0x0

    const/16 v8, 0x3c

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->broadcastReceiver:Lcom/android/systemui/controls/ui/ControlsActivity$initBroadcastReceiver$1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_exit_to_dream"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->mExitToDream:Z

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const v0, 0x7f0a02e3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/controls/ui/ControlsActivity$onStart$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/ControlsActivity$onStart$2;-><init>(Lcom/android/systemui/controls/ui/ControlsActivity;)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->parent:Landroid/view/ViewGroup;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    :cond_1
    new-instance v0, Lcom/android/systemui/controls/ui/ControlsActivity$onStart$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/ControlsActivity$onStart$1;-><init>(Lcom/android/systemui/controls/ui/ControlsActivity;)V

    throw v1
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->mExitToDream:Z

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    check-cast p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->hide(Landroid/view/ViewGroup;)V

    throw v1
.end method
