.class public final synthetic Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/view/IRemoteAnimationFinishedCallback;[Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "mHideAnimationFinishedRunnable#run"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRunning:Z

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->tryKeyguardDone()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->notifyFinishedKeyguardExitAnimation(Z)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
