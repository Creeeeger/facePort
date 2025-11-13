.class public final Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    sget-object p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SecQuickSettingsAffordanceInteractor"

    if-eqz v0, :cond_2

    const-string p1, "onReceive : ACTION_SCREEN_OFF"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    sget p1, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->MAX_PANEL_AFFORDANCE_SHOW:I

    invoke-virtual {p0}, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->hideEffect()V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, p1

    :goto_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    const-string p2, "onReceive : ACTION_SCREEN_ON"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    iget-object p2, p2, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->hideEffect()V

    return-void

    :cond_5
    iget-object p2, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    iget-object p2, p2, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "PanelAffordanceCount"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    const-string v3, "onReceive : ACTION_SCREEN_ON & KEYGUARD : "

    invoke-static {p2, v3, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    iget-object p2, p2, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    sget v0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->MAX_PANEL_AFFORDANCE_SHOW:I

    if-ge p2, v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    iget-object v0, p2, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->secQuickSettingsAffordance:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->hideEffect()V

    iget-object p2, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    iget-object v0, p2, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p2, p2, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->statusBarStateListener:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$statusBarStateListener$1;

    invoke-interface {v0, p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object p2, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    iget-object p2, p2, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p2, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p2, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    iget-object v0, p2, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p2, p2, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->secQuickSettingsAffordance:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->updateMonitorCallback:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$updateMonitorCallback$1;

    invoke-virtual {p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object p2, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    iget-object v0, p2, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object p2, p2, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->transitionCallback:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$transitionCallback$1;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->removeCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->secQuickSettingsAffordance:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    return-void

    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    iget-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->secQuickSettingsAffordance:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    if-eqz p1, :cond_8

    sget-object p2, Lcom/android/systemui/util/AnimHelper$AnimationState;->SHOWING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1$onReceive$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1$onReceive$1;-><init>(Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->displayEffect(Lcom/android/systemui/util/AnimHelper$AnimationState;Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method
