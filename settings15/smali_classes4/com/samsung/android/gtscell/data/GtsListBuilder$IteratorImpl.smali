.class Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TB;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0092\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\t\u0010\t\u001a\u00020\nH\u0096\u0002J\u000e\u0010\u000b\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u000cR\u001a\u0010\u0003\u001a\u00020\u0004X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;",
        "",
        "(Lcom/samsung/android/gtscell/data/GtsListBuilder;)V",
        "index",
        "",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "hasNext",
        "",
        "next",
        "()Ljava/lang/Object;",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/samsung/android/gtscell/data/GtsListBuilder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gtscell/data/GtsListBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;->this$0:Lcom/samsung/android/gtscell/data/GtsListBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;->index:I

    return p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;->index:I

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;->this$0:Lcom/samsung/android/gtscell/data/GtsListBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsListBuilder;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;->this$0:Lcom/samsung/android/gtscell/data/GtsListBuilder;

    iget v1, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;->index:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/gtscell/data/GtsListBuilder;->getAt(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;->index:I

    return-void
.end method
