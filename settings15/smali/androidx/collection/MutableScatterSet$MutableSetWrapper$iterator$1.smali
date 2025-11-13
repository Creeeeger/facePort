.class public final Landroidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public current:I

.field public final iterator:Lkotlin/sequences/SequenceBuilderIterator;

.field public final synthetic this$0:Landroidx/collection/MutableScatterSet;


# direct methods
.method public constructor <init>(Landroidx/collection/MutableScatterSet;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1;->this$0:Landroidx/collection/MutableScatterSet;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1;->current:I

    new-instance v0, Landroidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1$iterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Landroidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1$iterator$1;-><init>(Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequencesJVMKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    move-result-object p1

    iput-object p1, p0, Landroidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1;->iterator:Lkotlin/sequences/SequenceBuilderIterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Landroidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1;->iterator:Lkotlin/sequences/SequenceBuilderIterator;

    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1;->iterator:Lkotlin/sequences/SequenceBuilderIterator;

    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 3

    iget v0, p0, Landroidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1;->current:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Landroidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1;->this$0:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v2, v0}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    iput v1, p0, Landroidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1;->current:I

    :cond_0
    return-void
.end method
