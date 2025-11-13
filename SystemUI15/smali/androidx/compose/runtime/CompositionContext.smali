.class public abstract Landroidx/compose/runtime/CompositionContext;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract composeInitial$runtime_release(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
.end method

.method public abstract deletedMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V
.end method

.method public doneComposing$runtime_release()V
    .locals 0

    return-void
.end method

.method public abstract getCollectingCallByInformation$runtime_release()Z
.end method

.method public abstract getCollectingParameterInformation$runtime_release()Z
.end method

.method public abstract getCollectingSourceInformation$runtime_release()Z
.end method

.method public getCompositionLocalScope$runtime_release()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 0

    sget-object p0, Landroidx/compose/runtime/CompositionContextKt;->EmptyPersistentCompositionLocalMap:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    return-object p0
.end method

.method public abstract getCompoundHashKey$runtime_release()I
.end method

.method public abstract getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;
.end method

.method public abstract insertMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V
.end method

.method public abstract invalidate$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
.end method

.method public abstract movableContentStateReleased$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;)V
.end method

.method public movableContentStateResolve$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public recordInspectionTable$runtime_release(Ljava/util/Set;)V
    .locals 0

    return-void
.end method

.method public registerComposer$runtime_release(Landroidx/compose/runtime/ComposerImpl;)V
    .locals 0

    return-void
.end method

.method public abstract reportRemovedComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
.end method

.method public startComposing$runtime_release()V
    .locals 0

    return-void
.end method

.method public unregisterComposer$runtime_release(Landroidx/compose/runtime/ComposerImpl;)V
    .locals 0

    return-void
.end method

.method public abstract unregisterComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
.end method
