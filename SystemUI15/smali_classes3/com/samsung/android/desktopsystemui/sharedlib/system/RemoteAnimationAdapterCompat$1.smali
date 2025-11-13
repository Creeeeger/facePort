.class Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic val$remoteAnimationAdapter:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1;->val$remoteAnimationAdapter:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1;->val$remoteAnimationAdapter:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;

    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;->onAnimationCancelled()V

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 6

    invoke-static {p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    move-result-object v2

    invoke-static {p3}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    move-result-object v3

    invoke-static {p4}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1$1;

    invoke-direct {v5, p0, p5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1;Landroid/view/IRemoteAnimationFinishedCallback;)V

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1;->val$remoteAnimationAdapter:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;->onAnimationStart(I[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    return-void
.end method
