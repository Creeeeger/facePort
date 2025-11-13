.class public final Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field public final synthetic $this_asSequence$inlined:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    iput-object p1, p0, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$4;->$this_asSequence$inlined:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lkotlin/jvm/internal/ArrayIntIterator;

    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$4;->$this_asSequence$inlined:[I

    invoke-direct {v0, p0}, Lkotlin/jvm/internal/ArrayIntIterator;-><init>([I)V

    return-object v0
.end method
