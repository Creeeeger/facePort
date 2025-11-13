.class public final Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;->mUpdateRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final onLaunchTransitionFadingAwayChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;->mUpdateRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final postUpdateStatusBarVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;->mUpdateRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;->mUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
