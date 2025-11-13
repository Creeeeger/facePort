.class public final Lcom/android/systemui/util/ReferenceExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final nullableAtomicReference(Ljava/lang/Object;)Lkotlin/properties/ReadWriteProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/properties/ReadWriteProperty;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/ReferenceExtKt$nullableAtomicReference$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/ReferenceExtKt$nullableAtomicReference$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic nullableAtomicReference$default(Ljava/lang/Object;ILjava/lang/Object;)Lkotlin/properties/ReadWriteProperty;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/util/ReferenceExtKt;->nullableAtomicReference(Ljava/lang/Object;)Lkotlin/properties/ReadWriteProperty;

    move-result-object p0

    return-object p0
.end method

.method public static final softReference(Ljava/lang/Object;)Lkotlin/properties/ReadWriteProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/properties/ReadWriteProperty;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/ReferenceExtKt$softReference$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/ReferenceExtKt$softReference$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic softReference$default(Ljava/lang/Object;ILjava/lang/Object;)Lkotlin/properties/ReadWriteProperty;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/util/ReferenceExtKt;->softReference(Ljava/lang/Object;)Lkotlin/properties/ReadWriteProperty;

    move-result-object p0

    return-object p0
.end method

.method public static final weakReference(Ljava/lang/Object;)Lkotlin/properties/ReadWriteProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/properties/ReadWriteProperty;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/ReferenceExtKt$weakReference$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/ReferenceExtKt$weakReference$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic weakReference$default(Ljava/lang/Object;ILjava/lang/Object;)Lkotlin/properties/ReadWriteProperty;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/util/ReferenceExtKt;->weakReference(Ljava/lang/Object;)Lkotlin/properties/ReadWriteProperty;

    move-result-object p0

    return-object p0
.end method
