.class public final Lkotlin/collections/builders/MapBuilder$KeysItr;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public expectedModCount:I

.field public index:I

.field public lastIndex:I

.field public final map:Lkotlin/collections/builders/MapBuilder;


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/MapBuilder;I)V
    .locals 0

    iput p2, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->$r8$classId:I

    const-string p2, "map"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->map:Lkotlin/collections/builders/MapBuilder;

    const/4 p2, -0x1

    iput p2, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->lastIndex:I

    invoke-static {p1}, Lkotlin/collections/builders/MapBuilder;->access$getModCount$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->expectedModCount:I

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;->initNext$kotlin_stdlib()V

    return-void
.end method


# virtual methods
.method public final checkForComodification$kotlin_stdlib()V
    .locals 1

    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getModCount$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v0

    iget p0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->expectedModCount:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->index:I

    iget-object p0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {p0}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final initNext$kotlin_stdlib()V
    .locals 3

    :goto_0
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->index:I

    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getPresenceArray$p(Lkotlin/collections/builders/MapBuilder;)[I

    move-result-object v0

    iget v1, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->index:I

    aget v0, v0, v1

    if-gez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->index:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;->checkForComodification$kotlin_stdlib()V

    iget v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->index:I

    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->index:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->index:I

    iput v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->lastIndex:I

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getValuesArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->lastIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;->initNext$kotlin_stdlib()V

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;->checkForComodification$kotlin_stdlib()V

    iget v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->index:I

    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->index:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->index:I

    iput v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->lastIndex:I

    new-instance v2, Lkotlin/collections/builders/MapBuilder$EntryRef;

    invoke-direct {v2, v1, v0}, Lkotlin/collections/builders/MapBuilder$EntryRef;-><init>(Lkotlin/collections/builders/MapBuilder;I)V

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;->initNext$kotlin_stdlib()V

    return-object v2

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;->checkForComodification$kotlin_stdlib()V

    iget v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->index:I

    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v2

    if-ge v0, v2, :cond_2

    iget v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->index:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->index:I

    iput v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->lastIndex:I

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getKeysArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->lastIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;->initNext$kotlin_stdlib()V

    return-object v0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;->checkForComodification$kotlin_stdlib()V

    iget v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    iget v2, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->lastIndex:I

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/MapBuilder;->removeKeyAt(I)V

    iput v1, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->lastIndex:I

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getModCount$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v0

    iput v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->expectedModCount:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() before removing element from the iterator."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
