.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrimaryBouncerShowingChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mPrimaryBouncerShowing:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingPinLock:Z

    :cond_0
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mPrimaryBouncerShowing:Z

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
