.class public abstract Landroidx/compose/animation/core/TransitionState;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final isRunning$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/TransitionState;->isRunning$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method


# virtual methods
.method public abstract getCurrentState()Ljava/lang/Object;
.end method

.method public abstract getTargetState()Ljava/lang/Object;
.end method

.method public abstract setCurrentState$animation_core_release(Ljava/lang/Object;)V
.end method

.method public abstract transitionConfigured$animation_core_release(Landroidx/compose/animation/core/Transition;)V
.end method

.method public abstract transitionRemoved$animation_core_release()V
.end method
