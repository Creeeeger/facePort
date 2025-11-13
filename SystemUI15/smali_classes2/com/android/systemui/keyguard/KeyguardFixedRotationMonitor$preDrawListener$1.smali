.class public final Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$preDrawListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$preDrawListener$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$preDrawListener$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->DEBUG:Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->notificationShadeView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "KeyguardFixedRotation"

    const-string v2, "onPreDraw no window focus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->pendingRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->setPendingRunnable(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
