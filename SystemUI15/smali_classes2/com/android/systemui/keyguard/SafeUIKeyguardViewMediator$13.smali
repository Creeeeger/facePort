.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "KeyguardViewMediator.mKeyGuardGoingAwayRunnable"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v2, "SafeUIKeyguardViewMediator"

    const-string v3, "keyguardGoingAway"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v2, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->keyguardGoingAway()V

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v2, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardViewController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-boolean v3, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWallpaperSupportsAmbientMode:Z

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->isGoingToNotificationShade()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-boolean v4, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    if-eqz v4, :cond_2

    iget-boolean v2, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWallpaperSupportsAmbientMode:Z

    if-eqz v2, :cond_2

    :cond_1
    or-int/2addr v3, v0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v2, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->isUnlockWithWallpaper()Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v3, v3, 0x4

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v2, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->shouldSubtleWindowAnimationsForUnlock()V

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-boolean v4, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    if-eqz v4, :cond_4

    iget-object v2, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v2, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v2, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2, v0}, Lcom/android/keyguard/KeyguardViewController;->setKeyguardGoingAwayState(Z)V

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
