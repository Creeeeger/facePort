.class public final Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "onReceive(): ACTION_SCREEN_OFF_BY_PROXIMITY"

    const-string p2, "SecPanelTouchProximityInteractor"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;

    iget-object p1, p1, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;

    iget-object p1, p1, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast p1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p1}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;->postAnimateForceCollapseShadeRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_3
    const-string p0, "postAnimateForceCollapseShadeRunnable()"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method
