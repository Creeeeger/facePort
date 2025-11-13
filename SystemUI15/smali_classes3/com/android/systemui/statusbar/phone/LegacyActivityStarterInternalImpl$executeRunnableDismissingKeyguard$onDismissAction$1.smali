.class public final Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$executeRunnableDismissingKeyguard$onDismissAction$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic $deferred:Z

.field public final synthetic $dismissShade:Z

.field public final synthetic $runnable:Ljava/lang/Runnable;

.field public final synthetic $willAnimateOnKeyguard:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;ZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$executeRunnableDismissingKeyguard$onDismissAction$1;->$runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$executeRunnableDismissingKeyguard$onDismissAction$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$executeRunnableDismissingKeyguard$onDismissAction$1;->$dismissShade:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$executeRunnableDismissingKeyguard$onDismissAction$1;->$deferred:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$executeRunnableDismissingKeyguard$onDismissAction$1;->$willAnimateOnKeyguard:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$executeRunnableDismissingKeyguard$onDismissAction$1;->$runnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$executeRunnableDismissingKeyguard$onDismissAction$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    if-eqz v0, :cond_1

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v3, :cond_0

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->statusBarKeyguardViewManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$executeRunnableDismissingKeyguard$onDismissAction$1;->$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$executeRunnableDismissingKeyguard$onDismissAction$1;->$dismissShade:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$executeRunnableDismissingKeyguard$onDismissAction$1;->$deferred:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->shadeControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeController;->isExpandedVisible()Z

    move-result v0

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->shadeControllerLazy:Ldagger/Lazy;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->statusBarKeyguardViewManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->keyguardViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->needsCollapsePanelWithNoAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CentralSurfaces"

    const-string v1, "collapseShade with no animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v0, v2}, Lcom/android/systemui/shade/ShadeController;->collapseShade(Z)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$executeRunnableDismissingKeyguard$onDismissAction$1$onDismiss$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$executeRunnableDismissingKeyguard$onDismissAction$1$onDismiss$1;-><init>(Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;)V

    const-wide/16 v2, 0x78

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v1, v0, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeController;->collapseShadeForActivityStart()V

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_5

    const-string p0, "LegacyActivityStarterInternalImpl"

    const-string v0, "ignored deferred"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/systemui/Flags;->communalHub()V

    return p0
.end method

.method public final willRunAnimationOnKeyguard()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$executeRunnableDismissingKeyguard$onDismissAction$1;->$willAnimateOnKeyguard:Z

    return p0
.end method
