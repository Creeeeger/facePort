.class public Lkotlin/collections/SetsKt__SetsKt;
.super Lkotlin/collections/SetsKt__SetsJVMKt;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/SetsKt__SetsJVMKt;-><init>()V

    return-void
.end method

.method public static varargs mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;
    .locals 2

    new-instance v0, Ljava/util/LinkedHashSet;

    array-length v1, p0

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {v0, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toCollection(Ljava/util/Collection;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs setOf([Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    :goto_0
    return-object p0
.end method
