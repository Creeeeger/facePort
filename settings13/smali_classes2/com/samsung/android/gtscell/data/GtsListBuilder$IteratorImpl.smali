.class Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;
.super Ljava/lang/Object;
.source "GtsListBuilder.kt"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TB;>;"
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

    .line 73
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;->this$0:Lcom/samsung/android/gtscell/data/GtsListBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getIndex()I
    .locals 0

    .line 74
    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;->index:I

    return p0
.end method

.method public hasNext()Z
    .locals 1

    .line 76
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

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;->this$0:Lcom/samsung/android/gtscell/data/GtsListBuilder;

    iget v1, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;->index:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/gtscell/data/GtsListBuilder;->getAt(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object p0

    .line 79
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

.method protected final setIndex(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;->index:I

    return-void
.end method
