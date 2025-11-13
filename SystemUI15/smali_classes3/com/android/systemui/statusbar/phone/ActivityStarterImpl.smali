.class public final Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter;


# instance fields
.field public final activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final shadeInteractorLazy:Ldagger/Lazy;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Ldagger/Lazy;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->shadeInteractorLazy:Ldagger/Lazy;

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    return-void
.end method

.method public static postOnUiThread$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Ljava/lang/Runnable;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const/4 v0, 0x0

    int-to-long v0, v0

    invoke-interface {p0, p1, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    check-cast p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    check-cast p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    const/4 v6, 0x0

    const/16 v7, 0x60

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->executeRunnableDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZZI)V

    return-void
.end method

.method public final postQSCustomizerRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSCustomizerRunnableDismissingKeyguard$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSCustomizerRunnableDismissingKeyguard$1;-><init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    int-to-long v1, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method

.method public final postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->shadeInteractorLazy:Ldagger/Lazy;

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

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;Z)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1;-><init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;ZLjava/lang/Runnable;)V

    const/4 p1, 0x0

    int-to-long p1, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0, p1, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method

.method public final postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$1;-><init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/app/PendingIntent;)V

    const/4 p1, 0x0

    int-to-long v1, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method

.method public final postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;-><init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    const/4 p1, 0x0

    int-to-long p1, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0, p1, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method

.method public final postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Z)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$6;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$6;-><init>(ZLcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/app/PendingIntent;)V

    const/4 p1, 0x0

    int-to-long p1, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0, p1, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method

.method public final postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$3;-><init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    int-to-long p1, p2

    invoke-interface {p0, v0, p1, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method

.method public final postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$4;-><init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/content/Intent;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    int-to-long p1, p2

    invoke-interface {p0, v0, p1, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method

.method public final postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$5;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$5;-><init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/content/Intent;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    int-to-long p1, p2

    invoke-interface {p0, v0, p1, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method

.method public final shouldAnimateLaunch(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final startActivity(Landroid/content/Intent;Z)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1fc

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Ljava/lang/String;ZLandroid/os/UserHandle;I)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Z)V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLandroid/os/UserHandle;)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLandroid/os/UserHandle;)V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLandroid/os/UserHandle;)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1f4

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Ljava/lang/String;ZLandroid/os/UserHandle;I)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZZ)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1f8

    move-object v1, p1

    move v2, p3

    move v3, p2

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Ljava/lang/String;ZLandroid/os/UserHandle;I)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZZI)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1e8

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Ljava/lang/String;ZLandroid/os/UserHandle;I)V

    return-void
.end method

.method public final startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1f8

    move-object v1, p1

    move v2, p3

    move v3, p2

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Ljava/lang/String;ZLandroid/os/UserHandle;I)V

    return-void
.end method

.method public final startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Landroid/os/UserHandle;)V
    .locals 11

    move-object v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    const/4 v7, 0x0

    const/16 v10, 0x40

    move-object v1, p1

    move v2, p3

    move v3, p2

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move v8, p4

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Ljava/lang/String;ZLandroid/os/UserHandle;I)V

    return-void
.end method

.method public final startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Landroid/os/UserHandle;I)V
    .locals 17

    move-object/from16 v2, p1

    move/from16 v0, p3

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    if-nez p8, :cond_0

    invoke-virtual {v10, v2}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->getActivityUserHandle(Landroid/content/Intent;)Landroid/os/UserHandle;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, v10, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_INTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTriggerIfNotSet(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    iget-object v1, v10, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(ILandroid/content/Intent;)Z

    move-result v11

    const/4 v12, 0x1

    move-object/from16 v1, p7

    invoke-virtual {v10, v1, v0, v12}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->wrapAnimationControllerForShadeOrStatusBar(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZZ)Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    move-result-object v4

    const/4 v13, 0x0

    if-eqz v0, :cond_3

    if-nez v4, :cond_3

    move v14, v12

    goto :goto_1

    :cond_3
    move v14, v13

    :goto_1
    new-instance v15, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$2;

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v10

    move-object/from16 v2, p1

    move/from16 v3, p6

    move/from16 v5, v16

    move-object/from16 v6, p5

    move/from16 v7, p4

    move/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$2;-><init>(Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;Landroid/content/Intent;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLcom/android/systemui/plugins/ActivityStarter$Callback;ZILandroid/os/UserHandle;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$cancelRunnable$2;

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$cancelRunnable$2;-><init>(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V

    iget-object v1, v10, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v2, :cond_4

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v1, :cond_4

    move v13, v12

    :cond_4
    xor-int/lit8 v1, v13, 0x1

    const/4 v2, 0x0

    move-object/from16 p0, v10

    move-object/from16 p1, v15

    move-object/from16 p2, v0

    move/from16 p3, v14

    move/from16 p4, v11

    move/from16 p5, v1

    move/from16 p6, v16

    move-object/from16 p7, v2

    invoke-virtual/range {p0 .. p7}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZZLjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final startCameraActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 8

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(ILandroid/content/Intent;)Z

    move-result v4

    new-instance p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startCameraActivity$runnable$1;

    invoke-direct {p0, v0, p1, p3}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startCameraActivity$runnable$1;-><init>(Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;Landroid/content/Intent;Lcom/android/systemui/plugins/ActivityStarter$Callback;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startCameraActivity$cancelRunnable$1;

    invoke-direct {p1, p3}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startCameraActivity$cancelRunnable$1;-><init>(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startCameraActivity$runnable$1;->run()V

    const/4 p0, 0x0

    move-object v1, p0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    :goto_0
    const/4 v5, 0x1

    const/16 v7, 0x60

    const/4 v6, 0x0

    move v3, p2

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->executeRunnableDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZZI)V

    return-void
.end method

.method public final startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1fc

    move-object v1, p1

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->startPendingIntentDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/app/PendingIntent;ZLjava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZZLandroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1f8

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->startPendingIntentDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/app/PendingIntent;ZLjava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZZLandroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1f0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->startPendingIntentDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/app/PendingIntent;ZLjava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZZLandroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1e8

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->startPendingIntentDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/app/PendingIntent;ZLjava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZZLandroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final startPendingIntentMaybeDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v10, 0x1c8

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->startPendingIntentDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/app/PendingIntent;ZLjava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZZLandroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final startPendingIntentMaybeDismissingKeyguard(Landroid/app/PendingIntent;ZLjava/lang/Runnable;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    const/4 v4, 0x0

    const/16 v10, 0x48

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->startPendingIntentDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/app/PendingIntent;ZLjava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZZLandroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final startPendingIntentWithoutDismissing(Landroid/app/PendingIntent;ZLjava/lang/Runnable;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    const/4 v4, 0x0

    const/16 v10, 0x8

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->startPendingIntentDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/app/PendingIntent;ZLjava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZZLandroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method
