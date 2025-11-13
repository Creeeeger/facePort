.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1$onAnimationStart$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1$onAnimationStart$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1$onAnimationStart$2;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1$onAnimationStart$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "occludeAnimationRunner finished circle animation"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1$onAnimationStart$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->surfaceControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    const v1, 0x3c23d70a    # 0.01f

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->setKeyguardSurfaceAppearAmount$default(Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;F)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1$onAnimationStart$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1$onAnimationStart$2;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    :cond_0
    return-void
.end method
