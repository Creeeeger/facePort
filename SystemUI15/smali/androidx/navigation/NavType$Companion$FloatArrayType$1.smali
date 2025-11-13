.class public final Landroidx/navigation/NavType$Companion$FloatArrayType$1;
.super Landroidx/navigation/CollectionNavType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/navigation/CollectionNavType;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final emptyCollection()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [F

    return-object p0
.end method

.method public final get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "float[]"

    return-object p0
.end method

.method public final parseValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x1

    check-cast p1, [F

    sget-object v1, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType$Companion$FloatType$1;

    if-eqz p1, :cond_0

    invoke-virtual {v1, p2}, Landroidx/navigation/NavType$Companion$FloatType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    new-array v1, v0, [F

    aput p2, v1, p0

    array-length p2, p1

    add-int/lit8 v2, p2, 0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    invoke-static {v1, p0, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Landroidx/navigation/NavType$Companion$FloatType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    new-array p2, v0, [F

    aput p1, p2, p0

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public final parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget-object p0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType$Companion$FloatType$1;

    invoke-virtual {p0, p1}, Landroidx/navigation/NavType$Companion$FloatType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 v0, 0x0

    aput p0, p1, v0

    return-object p1
.end method

.method public final put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, [F

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-void
.end method

.method public final serializeAsValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    check-cast p1, [F

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([F)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_1
    return-object p1
.end method

.method public final valueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    check-cast p1, [F

    check-cast p2, [F

    const/4 p0, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Float;

    array-length v2, p1

    move v3, p0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    if-eqz p2, :cond_2

    array-length p1, p2

    new-array v0, p1, [Ljava/lang/Float;

    array-length p1, p2

    :goto_1
    if-ge p0, p1, :cond_2

    aget v2, p2, p0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt__ArraysKt;->contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
