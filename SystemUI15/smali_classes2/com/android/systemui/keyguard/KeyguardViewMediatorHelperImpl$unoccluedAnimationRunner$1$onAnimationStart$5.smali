.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1$onAnimationStart$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic $t:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Landroid/view/IRemoteAnimationFinishedCallback;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IRemoteAnimationFinishedCallback;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1$onAnimationStart$5;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1$onAnimationStart$5;->$t:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1$onAnimationStart$5;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1$onAnimationStart$5;->$t:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_0
    return-void
.end method
