.class public final Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedWakingUp()V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$500(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string v1, "onFinishedWakingUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$600(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-boolean v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsConfigUpdateNecessary:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$700(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsConfigUpdateNecessary:Z

    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$800(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateScreenConfig()V

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$400(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsConfigUpdateNecessary:Z

    :cond_0
    return-void
.end method
