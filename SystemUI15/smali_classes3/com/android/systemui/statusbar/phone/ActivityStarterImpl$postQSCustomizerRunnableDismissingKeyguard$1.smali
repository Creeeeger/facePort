.class public final Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSCustomizerRunnableDismissingKeyguard$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $runnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSCustomizerRunnableDismissingKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSCustomizerRunnableDismissingKeyguard$1;->$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSCustomizerRunnableDismissingKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->shadeInteractorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setLeaveOpenOnKeyguardHide(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSCustomizerRunnableDismissingKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSCustomizerRunnableDismissingKeyguard$1$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSCustomizerRunnableDismissingKeyguard$1;->$runnable:Ljava/lang/Runnable;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSCustomizerRunnableDismissingKeyguard$1$1;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x7e

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->executeRunnableDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZZI)V

    return-void
.end method
