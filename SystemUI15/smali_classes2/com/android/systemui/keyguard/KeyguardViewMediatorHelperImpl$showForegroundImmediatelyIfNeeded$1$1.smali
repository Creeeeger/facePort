.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Landroid/view/IRemoteAnimationFinishedCallback;Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
