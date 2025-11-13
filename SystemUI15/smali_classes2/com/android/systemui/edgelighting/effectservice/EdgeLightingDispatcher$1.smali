.class public final Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;
.super Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public final onClickedToast()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onClickToastInWindow()V

    :cond_0
    return-void
.end method

.method public final onFlingDownedToast(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onFlingDownInWindow(Z)V

    :cond_0
    return-void
.end method

.method public final onStarted()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onShowEdgeWindow()V

    :cond_0
    return-void
.end method

.method public final onStopped()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onDismissEdgeWindow()V

    :cond_0
    return-void
.end method

.method public final onSwipedToast()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onSwipeToastInWindow()V

    :cond_0
    return-void
.end method
