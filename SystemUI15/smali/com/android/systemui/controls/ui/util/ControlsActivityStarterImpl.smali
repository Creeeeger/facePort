.class public final Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

.field public final panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    return-void
.end method


# virtual methods
.method public final startActivity(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x14000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method public final startSecControlsActivity(Landroid/content/Context;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-object v1, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsUiController:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isEmpty()Z

    move-result v1

    const-string v2, "ControlsActivityStarterImpl"

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->secControlsUiController:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsUtil:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->secControlsUiController:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/ui/SecControlsUiController;

    check-cast v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-boolean v3, v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->hidden:Z

    if-nez v3, :cond_1

    iget-boolean v3, v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isShowOverLockscreenWhenLocked:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo p1, "startSecControlsActivity is not Hidden : just close quick panel"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsUiController:Ljava/util/Optional;

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/controls/ui/ControlsUiController;

    check-cast v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->loadComponentInfo()V

    iget-object v5, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/controls/management/ControlsListingController;

    check-cast v5, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    const/4 v7, 0x0

    const-string v8, "SecControlsUiControllerImpl"

    iget-object v9, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v10, "ControlsOOBEManageAppsCompleted"

    invoke-interface {v5, v10, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    iput-boolean v7, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isShowOverLockscreenWhenLocked:Z

    const-string v4, "resolveActivity SecControlsProviderSelectorActivity"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v4, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Lcom/android/systemui/controls/util/ControlsUtil;->isSecureLocked()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "lockscreen_show_controls"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v7, v6

    :cond_3
    iput-boolean v7, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isShowOverLockscreenWhenLocked:Z

    const-string v4, "resolveActivity SecControlsActivity isShowOverLockscreenWhenLocked = "

    invoke-static {v4, v8, v7}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const-class v4, Lcom/android/systemui/controls/ui/SecControlsActivity;

    :goto_0
    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x14000000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsUtil:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/util/ControlsUtil;

    invoke-virtual {p1}, Lcom/android/systemui/controls/util/ControlsUtil;->isSecureLocked()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-eqz p1, :cond_4

    iget-boolean p1, v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isShowOverLockscreenWhenLocked:Z

    invoke-interface {p0, v2, v6, p2, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Z)V

    goto :goto_1

    :cond_4
    invoke-interface {p0, v2, v6}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    const-string p0, "feature:android.software.controls is disabled"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
