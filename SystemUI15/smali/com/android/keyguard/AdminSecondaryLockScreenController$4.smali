.class public final Lcom/android/keyguard/AdminSecondaryLockScreenController$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AdminSecondaryLockScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$4;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$4;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    iget-object p1, p1, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p1

    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$4;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    iget-object v1, v0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$4;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    iget-object v1, v0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mClient:Landroid/app/admin/IKeyguardClient;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->-$$Nest$monSurfaceReady(Lcom/android/keyguard/AdminSecondaryLockScreenController;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$4;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    iget-object v0, v0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/AdminSecondaryLockScreenController$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/AdminSecondaryLockScreenController$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/AdminSecondaryLockScreenController$4;I)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$4;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    iget-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
