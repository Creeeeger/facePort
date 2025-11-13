.class public final Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1$onAnimationStart$1;
.super Landroid/view/IRemoteAnimationFinishedCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;


# direct methods
.method public constructor <init>(Landroid/view/IRemoteAnimationFinishedCallback;Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1$onAnimationStart$1;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    iput-object p2, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1$onAnimationStart$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationFinishedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1$onAnimationStart$1;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1$onAnimationStart$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->occludeAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method
