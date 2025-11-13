.class public final Landroidx/navigation/compose/NavHostKt$NavHost$25$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $inPredictiveBack$delegate:Landroidx/compose/runtime/MutableState;

.field public final synthetic $progress$delegate:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/runtime/MutableFloatState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1$1;->$inPredictiveBack$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1$1;->$progress$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/activity/BackEventCompat;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1$1;->$inPredictiveBack$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, p2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget p1, p1, Landroidx/activity/BackEventCompat;->progress:F

    iget-object p0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1$1;->$progress$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->setFloatValue(F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
