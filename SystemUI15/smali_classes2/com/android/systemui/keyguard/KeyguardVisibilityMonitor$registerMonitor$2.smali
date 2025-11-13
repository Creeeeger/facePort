.class public final Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$2;->this$0:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardFadingAwayChanged()V
    .locals 3

    sget v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$2;->this$0:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->getKeyguardStateController()Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyguardFadingAwayChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVisible"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->getKeyguardStateController()Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onKeyguardGoingAwayChanged()V
    .locals 3

    sget v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$2;->this$0:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->getKeyguardStateController()Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyguardGoingAwayChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVisible"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->getKeyguardStateController()Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
