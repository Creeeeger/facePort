.class final Landroidx/room/AmbiguousColumnResolver$resolve$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $mapping:[Ljava/lang/String;

.field final synthetic $mappingIndex:I

.field final synthetic $mappingMatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/room/AmbiguousColumnResolver$Match;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Landroidx/room/AmbiguousColumnResolver$Match;",
            ">;>;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;->$mapping:[Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;->$mappingMatches:Ljava/util/List;

    iput p3, p0, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;->$mappingIndex:I

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/util/List;

    iget-object v0, p0, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;->$mapping:[Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    move-object v5, p3

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/room/AmbiguousColumnResolver$ResultColumn;

    iget-object v7, v7, Landroidx/room/AmbiguousColumnResolver$ResultColumn;->name:Ljava/lang/String;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    check-cast v6, Landroidx/room/AmbiguousColumnResolver$ResultColumn;

    if-eqz v6, :cond_3

    iget v4, v6, Landroidx/room/AmbiguousColumnResolver$ResultColumn;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p3, p0, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;->$mappingMatches:Ljava/util/List;

    iget p0, p0, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;->$mappingIndex:I

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p3, Landroidx/room/AmbiguousColumnResolver$Match;

    new-instance v0, Lkotlin/ranges/IntRange;

    add-int/lit8 p2, p2, -0x1

    invoke-direct {v0, p1, p2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-direct {p3, v0, v1}, Landroidx/room/AmbiguousColumnResolver$Match;-><init>(Lkotlin/ranges/IntRange;Ljava/util/List;)V

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
