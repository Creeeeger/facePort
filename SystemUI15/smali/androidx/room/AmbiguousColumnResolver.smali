.class public final Landroidx/room/AmbiguousColumnResolver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Landroidx/room/AmbiguousColumnResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/room/AmbiguousColumnResolver;

    invoke-direct {v0}, Landroidx/room/AmbiguousColumnResolver;-><init>()V

    sput-object v0, Landroidx/room/AmbiguousColumnResolver;->INSTANCE:Landroidx/room/AmbiguousColumnResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dfs(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;I)V
    .locals 3

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p3, v1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, p3, 0x1

    sget-object v2, Landroidx/room/AmbiguousColumnResolver;->INSTANCE:Landroidx/room/AmbiguousColumnResolver;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, v1}, Landroidx/room/AmbiguousColumnResolver;->dfs(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;I)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final resolve(Ljava/util/List;[[Ljava/lang/String;)[[I
    .locals 18

    move-object/from16 v0, p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_1

    aget-object v6, v2, v4

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x60

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_0
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    array-length v3, v0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v0, v4

    array-length v6, v6

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v0, v4

    aget-object v9, v8, v7

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v3, Lkotlin/collections/builders/SetBuilder;

    invoke-direct {v3}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    array-length v4, v0

    move v6, v1

    :goto_3
    if-ge v6, v4, :cond_4

    aget-object v7, v0, v6

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lkotlin/collections/builders/SetBuilder;->build()Lkotlin/collections/builders/SetBuilder;

    move-result-object v3

    new-instance v4, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v4}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    array-length v6, v2

    move v7, v1

    move v8, v7

    :goto_4
    if-ge v7, v6, :cond_6

    aget-object v9, v2, v7

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v3, v9}, Lkotlin/collections/builders/SetBuilder;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v11, Landroidx/room/AmbiguousColumnResolver$ResultColumn;

    invoke-direct {v11, v9, v8}, Landroidx/room/AmbiguousColumnResolver$ResultColumn;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v11}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move v8, v10

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object v2

    array-length v3, v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v1

    :goto_5
    if-ge v6, v3, :cond_7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    array-length v3, v0

    move v6, v1

    move v7, v6

    :goto_6
    sget-object v8, Landroidx/room/AmbiguousColumnResolver;->INSTANCE:Landroidx/room/AmbiguousColumnResolver;

    if-ge v6, v3, :cond_11

    aget-object v9, v0, v6

    add-int/lit8 v10, v7, 0x1

    new-instance v11, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;

    invoke-direct {v11, v9, v4, v7}, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;-><init>([Ljava/lang/String;Ljava/util/List;I)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v12, v9

    move v13, v1

    move v14, v13

    :goto_7
    if-ge v13, v12, :cond_8

    aget-object v15, v9, v13

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_8
    array-length v12, v9

    invoke-virtual {v2, v1, v12}, Lkotlin/collections/builders/ListBuilder;->subList(II)Ljava/util/List;

    move-result-object v13

    check-cast v13, Lkotlin/collections/builders/ListBuilder;

    invoke-virtual {v13, v1}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v13

    move v15, v1

    :goto_8
    move-object/from16 v16, v13

    check-cast v16, Lkotlin/collections/builders/ListBuilder$Itr;

    invoke-virtual/range {v16 .. v16}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual/range {v16 .. v16}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroidx/room/AmbiguousColumnResolver$ResultColumn;

    iget-object v5, v5, Landroidx/room/AmbiguousColumnResolver$ResultColumn;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/2addr v15, v5

    const/4 v5, 0x1

    goto :goto_8

    :cond_9
    move v5, v1

    :goto_9
    if-ne v14, v15, :cond_a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v5, v12}, Lkotlin/collections/builders/ListBuilder;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v11, v13, v1, v0}, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v1, v12, 0x1

    invoke-virtual {v2}, Lkotlin/collections/builders/ListBuilder;->getSize()I

    move-result v13

    if-le v1, v13, :cond_10

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, v9

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v1, :cond_e

    aget-object v11, v9, v5

    new-instance v12, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v12}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v14

    :cond_b
    :goto_b
    move-object v13, v14

    check-cast v13, Lkotlin/collections/builders/ListBuilder$Itr;

    invoke-virtual {v13}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v13}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/room/AmbiguousColumnResolver$ResultColumn;

    iget-object v15, v13, Landroidx/room/AmbiguousColumnResolver$ResultColumn;->name:Ljava/lang/String;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    iget v13, v13, Landroidx/room/AmbiguousColumnResolver$ResultColumn;->index:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_c
    invoke-virtual {v12}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object v12

    invoke-virtual {v12}, Lkotlin/collections/builders/ListBuilder;->isEmpty()Z

    move-result v13

    const/4 v14, 0x1

    xor-int/2addr v13, v14

    if-eqz v13, :cond_d

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_d
    const-string v0, "Column "

    const-string v1, " not found in result"

    invoke-static {v0, v11, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    new-instance v1, Landroidx/room/AmbiguousColumnResolver$resolve$1$2;

    invoke-direct {v1, v4, v7}, Landroidx/room/AmbiguousColumnResolver$resolve$1$2;-><init>(Ljava/util/List;I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-static {v0, v5, v1, v7}, Landroidx/room/AmbiguousColumnResolver;->dfs(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;I)V

    :cond_f
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    move v7, v10

    const/4 v1, 0x0

    const/4 v5, 0x1

    goto/16 :goto_6

    :cond_10
    invoke-virtual {v2, v5}, Lkotlin/collections/builders/ListBuilder;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/room/AmbiguousColumnResolver$ResultColumn;

    iget-object v5, v5, Landroidx/room/AmbiguousColumnResolver$ResultColumn;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    sub-int/2addr v15, v5

    invoke-virtual {v2, v12}, Lkotlin/collections/builders/ListBuilder;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/room/AmbiguousColumnResolver$ResultColumn;

    iget-object v5, v5, Landroidx/room/AmbiguousColumnResolver$ResultColumn;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/2addr v15, v5

    move v5, v0

    move v12, v1

    const/4 v1, 0x0

    move-object/from16 v0, p1

    goto/16 :goto_9

    :cond_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_d

    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_13

    goto :goto_c

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find matches for all mappings"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_d
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Landroidx/room/AmbiguousColumnResolver$Solution;->Companion:Landroidx/room/AmbiguousColumnResolver$Solution$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/room/AmbiguousColumnResolver$Solution;->NO_SOLUTION:Landroidx/room/AmbiguousColumnResolver$Solution;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v1, Landroidx/room/AmbiguousColumnResolver$resolve$4;

    invoke-direct {v1, v0}, Landroidx/room/AmbiguousColumnResolver$resolve$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v4, v2, v1, v3}, Landroidx/room/AmbiguousColumnResolver;->dfs(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;I)V

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/room/AmbiguousColumnResolver$Solution;

    iget-object v0, v0, Landroidx/room/AmbiguousColumnResolver$Solution;->matches:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/AmbiguousColumnResolver$Match;

    iget-object v2, v2, Landroidx/room/AmbiguousColumnResolver$Match;->resultIndices:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_15
    const/4 v2, 0x0

    new-array v0, v2, [[I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    return-object v0
.end method
