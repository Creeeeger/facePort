.class public final Lkotlin/sequences/MergingSequence;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field public final sequence1:Lkotlin/sequences/Sequence;

.field public final sequence2:Lkotlin/sequences/Sequence;

.field public final transform:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence;",
            "Lkotlin/sequences/Sequence;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/MergingSequence;->sequence1:Lkotlin/sequences/Sequence;

    iput-object p2, p0, Lkotlin/sequences/MergingSequence;->sequence2:Lkotlin/sequences/Sequence;

    iput-object p3, p0, Lkotlin/sequences/MergingSequence;->transform:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lkotlin/sequences/MergingSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/MergingSequence$iterator$1;-><init>(Lkotlin/sequences/MergingSequence;)V

    return-object v0
.end method
