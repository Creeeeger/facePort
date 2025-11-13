.class public final Lkotlin/sequences/DistinctSequence;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field public final keySelector:Lkotlin/jvm/functions/Function1;

.field public final source:Lkotlin/sequences/Sequence;


# direct methods
.method public constructor <init>(Lkotlin/sequences/TransformingSequence;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "keySelector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/DistinctSequence;->source:Lkotlin/sequences/Sequence;

    iput-object p2, p0, Lkotlin/sequences/DistinctSequence;->keySelector:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lkotlin/sequences/DistinctIterator;

    iget-object v1, p0, Lkotlin/sequences/DistinctSequence;->source:Lkotlin/sequences/Sequence;

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object p0, p0, Lkotlin/sequences/DistinctSequence;->keySelector:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, p0}, Lkotlin/sequences/DistinctIterator;-><init>(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
