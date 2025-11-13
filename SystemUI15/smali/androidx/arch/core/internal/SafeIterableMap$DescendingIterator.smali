.class public final Landroidx/arch/core/internal/SafeIterableMap$DescendingIterator;
.super Landroidx/arch/core/internal/SafeIterableMap$ListIterator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroidx/arch/core/internal/SafeIterableMap$Entry;Landroidx/arch/core/internal/SafeIterableMap$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry;",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;-><init>(Landroidx/arch/core/internal/SafeIterableMap$Entry;Landroidx/arch/core/internal/SafeIterableMap$Entry;)V

    return-void
.end method


# virtual methods
.method public final backward(Landroidx/arch/core/internal/SafeIterableMap$Entry;)Landroidx/arch/core/internal/SafeIterableMap$Entry;
    .locals 0

    iget-object p0, p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    return-object p0
.end method

.method public final forward(Landroidx/arch/core/internal/SafeIterableMap$Entry;)Landroidx/arch/core/internal/SafeIterableMap$Entry;
    .locals 0

    iget-object p0, p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    return-object p0
.end method
